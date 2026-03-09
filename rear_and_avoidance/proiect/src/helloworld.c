#include <stdio.h>
#include <stdint.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xadcps.h"
#include "xgpio.h"
#include "sleep.h"

#define XADC_DEVICE_ID 0
#define LSB_BITS_NOT_USED 4
#define CH_VAUX14 30

XGpio gpio_rst_conv, gpio_rst_fp, gpio_start;
XGpio gpio_pot_val, gpio_pwm_val, gpio_done;
XGpio gpio_leds;

XAdcPs_Config *xadc_cfg;
static XAdcPs xadc_ctl;

void print_float_custom(char* label, float val) {
    int dec = (int)val;
    int frac = (int)((val - dec) * 1000);
    if (frac < 0) frac = -frac;
    xil_printf("%s: %d.%03d", label, dec, frac);
}

int main(){
    init_platform();

    xil_printf("--- START SISTEM SERVO PID ---\n");

    int status = 0;
    status |= XGpio_Initialize(&gpio_rst_conv, XPAR_AXI_GPIO_RST_CONV_BASEADDR);
    status |= XGpio_Initialize(&gpio_rst_fp, XPAR_AXI_GPIO_RST_FP_BASEADDR);
    status |= XGpio_Initialize(&gpio_start, XPAR_AXI_GPIO_START_BASEADDR);
    status |= XGpio_Initialize(&gpio_pot_val, XPAR_AXI_GPIO_POT_VAL_BASEADDR);
    status |= XGpio_Initialize(&gpio_pwm_val, XPAR_AXI_GPIO_PWM_VAL_BASEADDR);
    status |= XGpio_Initialize(&gpio_done, XPAR_AXI_GPIO_DONE_BASEADDR);
    status |= XGpio_Initialize(&gpio_leds, XPAR_AXI_GPIO_LEDS_BASEADDR);

    if(status != XST_SUCCESS){
        xil_printf("Eroare init GPIO!\n");
        return -1;
    }

    XGpio_SetDataDirection(&gpio_rst_conv, 1, 0x0);
    XGpio_SetDataDirection(&gpio_rst_fp, 1, 0x0);
    XGpio_SetDataDirection(&gpio_start, 1, 0x0);
    XGpio_SetDataDirection(&gpio_pot_val, 1, 0x0);
    XGpio_SetDataDirection(&gpio_leds, 1, 0x0);

    XGpio_SetDataDirection(&gpio_pwm_val, 1, 0xFFFFFFFF);
    XGpio_SetDataDirection(&gpio_done, 1, 0xFFFFFFFF);

    xadc_cfg = XAdcPs_LookupConfig(XADC_DEVICE_ID);
    if(xadc_cfg == NULL) { 
        xil_printf("Eroare init XADC!\n"); 
        return -1; 
    }
    
    XAdcPs_CfgInitialize(&xadc_ctl, xadc_cfg, xadc_cfg->BaseAddress);
    XAdcPs_SetSequencerMode(&xadc_ctl, XADCPS_SEQ_MODE_CONTINPASS);
    XAdcPs_SetSeqChEnables(&xadc_ctl, (1 << CH_VAUX14));

    xil_printf("Resetting Hardware...\n");
    XGpio_DiscreteWrite(&gpio_start, 1, 0);
    XGpio_DiscreteWrite(&gpio_rst_conv, 1, 1);
    XGpio_DiscreteWrite(&gpio_rst_fp, 1, 1);
    usleep(1000); 
    XGpio_DiscreteWrite(&gpio_rst_conv, 1, 0);
    XGpio_DiscreteWrite(&gpio_rst_fp, 1, 0);
    xil_printf("System Ready.\n");

    while(1){
        u32 pot_raw, pot_val_12bit;
        u32 pwm_result;
        u32 done_status;

        pot_raw = XAdcPs_GetAdcData(&xadc_ctl, CH_VAUX14);
        pot_raw >>= LSB_BITS_NOT_USED;
        pot_val_12bit = pot_raw & 0xFFF;

        XGpio_DiscreteWrite(&gpio_pot_val, 1, pot_val_12bit);
        XGpio_DiscreteWrite(&gpio_start, 1, 1);

        do {
            done_status = XGpio_DiscreteRead(&gpio_done, 1);
        } while (done_status == 0);

        pwm_result = XGpio_DiscreteRead(&gpio_pwm_val, 1);
        XGpio_DiscreteWrite(&gpio_start, 1, 0);

        u32 led_pattern = 0;
        if (pwm_result > 32)  led_pattern |= 0x1;
        if (pwm_result > 100) led_pattern |= 0x2;
        if (pwm_result > 200) led_pattern |= 0x4;

        XGpio_DiscreteWrite(&gpio_leds, 1, led_pattern);

        xil_printf("Pot: %4d | ", pot_val_12bit);
        float pot_f = (float)pot_val_12bit; 
        print_float_custom("Val_Float", pot_f);
        xil_printf(" | PWM_U: %3d\r\n", pwm_result);

        usleep(50000);
    }

    cleanup_platform();
    return 0;
}
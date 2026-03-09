// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Jan 21 10:39:47 2026
// Host        : Zbook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Facultate/Anul3/SSC/Proiect/rear_and_avoidance/rear_and_avoidance.gen/sources_1/bd/design_1/ip/design_1_pid_controller_0_0/design_1_pid_controller_0_0_stub.v
// Design      : design_1_pid_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pid_controller,Vivado 2024.1" *)
module design_1_pid_controller_0_0(clk, rst_conv, rst_fp, start, pot_val, pwm_val, 
  servo_pwm_out, done)
/* synthesis syn_black_box black_box_pad_pin="rst_conv,rst_fp,start,pot_val[11:0],pwm_val[7:0],servo_pwm_out,done" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst_conv;
  input rst_fp;
  input start;
  input [11:0]pot_val;
  output [7:0]pwm_val;
  output servo_pwm_out;
  output done;
endmodule

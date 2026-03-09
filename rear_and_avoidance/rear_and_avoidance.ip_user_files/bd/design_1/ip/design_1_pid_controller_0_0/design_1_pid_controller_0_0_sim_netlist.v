// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Dec  3 15:19:26 2025
// Host        : Zbook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Facultate/Anul3/SSC/Proiect/rear_and_avoidance/rear_and_avoidance.gen/sources_1/bd/design_1/ip/design_1_pid_controller_0_0/design_1_pid_controller_0_0_sim_netlist.v
// Design      : design_1_pid_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pid_controller_0_0,pid_controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pid_controller,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_pid_controller_0_0
   (clk,
    rst_conv,
    rst_fp,
    start,
    pot_val,
    pwm_val,
    done);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input rst_conv;
  input rst_fp;
  input start;
  input [11:0]pot_val;
  output [7:0]pwm_val;
  output done;

  wire clk;
  wire done;
  wire [11:0]pot_val;
  wire [7:0]pwm_val;
  wire rst_conv;
  wire rst_fp;
  wire start;

  design_1_pid_controller_0_0_pid_controller inst
       (.clk(clk),
        .done(done),
        .pot_val(pot_val),
        .pwm_val(pwm_val),
        .rst_conv(rst_conv),
        .rst_fp(rst_fp),
        .start(start));
endmodule

(* ORIG_REF_NAME = "RestoringDivision" *) 
module design_1_pid_controller_0_0_RestoringDivision
   (pwm_val,
    rst_conv,
    Q,
    mult_gata,
    clk);
  output [7:0]pwm_val;
  input rst_conv;
  input [24:0]Q;
  input mult_gata;
  input clk;

  wire \A[0]_i_1_n_0 ;
  wire \A[10]_i_1_n_0 ;
  wire \A[11]_i_1_n_0 ;
  wire \A[1]_i_1_n_0 ;
  wire \A[2]_i_1_n_0 ;
  wire \A[3]_i_1_n_0 ;
  wire \A[4]_i_1_n_0 ;
  wire \A[5]_i_1_n_0 ;
  wire \A[6]_i_1_n_0 ;
  wire \A[7]_i_1_n_0 ;
  wire \A[8]_i_1_n_0 ;
  wire \A[9]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [12:0]L;
  wire [24:0]Q;
  wire \R[0]_i_1_n_0 ;
  wire \R[10]_i_1_n_0 ;
  wire \R[11]_i_1_n_0 ;
  wire \R[12]_i_1_n_0 ;
  wire \R[13]_i_1_n_0 ;
  wire \R[14]_i_1_n_0 ;
  wire \R[15]_i_1_n_0 ;
  wire \R[16]_i_1_n_0 ;
  wire \R[17]_i_1_n_0 ;
  wire \R[18]_i_1_n_0 ;
  wire \R[19]_i_1_n_0 ;
  wire \R[1]_i_1_n_0 ;
  wire \R[20]_i_1_n_0 ;
  wire \R[21]_i_1_n_0 ;
  wire \R[22]_i_1_n_0 ;
  wire \R[23]_i_1_n_0 ;
  wire \R[24]_i_1_n_0 ;
  wire \R[24]_i_2_n_0 ;
  wire \R[2]_i_1_n_0 ;
  wire \R[3]_i_1_n_0 ;
  wire \R[4]_i_1_n_0 ;
  wire \R[5]_i_1_n_0 ;
  wire \R[6]_i_1_n_0 ;
  wire \R[7]_i_1_n_0 ;
  wire \R[8]_i_1_n_0 ;
  wire \R[9]_i_1_n_0 ;
  wire clk;
  wire [3:1]contor;
  wire \contor[0]_i_1__0_n_0 ;
  wire \contor_reg_n_0_[0] ;
  wire \contor_reg_n_0_[1] ;
  wire \contor_reg_n_0_[2] ;
  wire \contor_reg_n_0_[3] ;
  wire mult_gata;
  wire [24:1]p_1_in;
  wire [7:0]pwm_val;
  wire quotient0;
  wire rst_conv;

  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[0]_i_1 
       (.I0(L[0]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\A[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[10]_i_1 
       (.I0(L[10]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\A[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[11]_i_1 
       (.I0(L[11]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\A[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[1]_i_1 
       (.I0(L[1]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\A[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[2]_i_1 
       (.I0(L[2]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\A[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[3]_i_1 
       (.I0(L[3]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\A[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[4]_i_1 
       (.I0(L[4]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\A[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[5]_i_1 
       (.I0(L[5]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\A[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[6]_i_1 
       (.I0(L[6]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\A[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[7]_i_1 
       (.I0(L[7]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\A[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[8]_i_1 
       (.I0(L[8]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\A[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[9]_i_1 
       (.I0(L[9]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\A[9]_i_1_n_0 ));
  FDCE \A_reg[0] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\A[0]_i_1_n_0 ),
        .Q(L[1]));
  FDCE \A_reg[10] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\A[10]_i_1_n_0 ),
        .Q(L[11]));
  FDCE \A_reg[11] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\A[11]_i_1_n_0 ),
        .Q(L[12]));
  FDCE \A_reg[1] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\A[1]_i_1_n_0 ),
        .Q(L[2]));
  FDCE \A_reg[2] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\A[2]_i_1_n_0 ),
        .Q(L[3]));
  FDCE \A_reg[3] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\A[3]_i_1_n_0 ),
        .Q(L[4]));
  FDCE \A_reg[4] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\A[4]_i_1_n_0 ),
        .Q(L[5]));
  FDCE \A_reg[5] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\A[5]_i_1_n_0 ),
        .Q(L[6]));
  FDCE \A_reg[6] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\A[6]_i_1_n_0 ),
        .Q(L[7]));
  FDCE \A_reg[7] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\A[7]_i_1_n_0 ),
        .Q(L[8]));
  FDCE \A_reg[8] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\A[8]_i_1_n_0 ),
        .Q(L[9]));
  FDCE \A_reg[9] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\A[9]_i_1_n_0 ),
        .Q(L[10]));
  LUT4 #(
    .INIT(16'hFF10)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(mult_gata),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hF0F5F0E0)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(mult_gata),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hAAAAA888)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(mult_gata),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\contor_reg_n_0_[3] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\contor_reg_n_0_[0] ),
        .I3(\contor_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "s_asteptare:001,s_calcul:010,s_final:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(rst_conv),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "s_asteptare:001,s_calcul:010,s_final:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_conv),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "s_asteptare:001,s_calcul:010,s_final:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_conv),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'h88F8)) 
    \R[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(L[12]),
        .O(\R[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \R[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[10]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[10]),
        .O(\R[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \R[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[11]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[11]),
        .O(\R[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \R[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[12]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[12]),
        .O(\R[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \R[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[13]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[13]),
        .O(\R[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \R[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[14]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[14]),
        .O(\R[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \R[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[15]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[15]),
        .O(\R[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \R[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[16]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[16]),
        .O(\R[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \R[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[17]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[17]),
        .O(\R[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \R[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[18]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[18]),
        .O(\R[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \R[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[19]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[19]),
        .O(\R[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \R[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[1]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[1]),
        .O(\R[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \R[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[20]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[20]),
        .O(\R[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \R[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[21]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[21]),
        .O(\R[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \R[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[22]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[22]),
        .O(\R[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \R[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[23]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[23]),
        .O(\R[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \R[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(mult_gata),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\R[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \R[24]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[24]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[24]),
        .O(\R[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \R[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[2]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[2]),
        .O(\R[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \R[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[3]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[3]),
        .O(\R[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \R[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[4]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[4]),
        .O(\R[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \R[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[5]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[5]),
        .O(\R[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \R[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[6]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[6]),
        .O(\R[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \R[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[7]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[7]),
        .O(\R[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \R[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[8]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[8]),
        .O(\R[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \R[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in[9]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[9]),
        .O(\R[9]_i_1_n_0 ));
  FDCE \R_reg[0] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[0]_i_1_n_0 ),
        .Q(p_1_in[1]));
  FDCE \R_reg[10] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[10]_i_1_n_0 ),
        .Q(p_1_in[11]));
  FDCE \R_reg[11] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[11]_i_1_n_0 ),
        .Q(p_1_in[12]));
  FDCE \R_reg[12] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[12]_i_1_n_0 ),
        .Q(p_1_in[13]));
  FDCE \R_reg[13] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[13]_i_1_n_0 ),
        .Q(p_1_in[14]));
  FDCE \R_reg[14] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[14]_i_1_n_0 ),
        .Q(p_1_in[15]));
  FDCE \R_reg[15] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[15]_i_1_n_0 ),
        .Q(p_1_in[16]));
  FDCE \R_reg[16] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[16]_i_1_n_0 ),
        .Q(p_1_in[17]));
  FDCE \R_reg[17] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[17]_i_1_n_0 ),
        .Q(p_1_in[18]));
  FDCE \R_reg[18] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[18]_i_1_n_0 ),
        .Q(p_1_in[19]));
  FDCE \R_reg[19] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[19]_i_1_n_0 ),
        .Q(p_1_in[20]));
  FDCE \R_reg[1] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[1]_i_1_n_0 ),
        .Q(p_1_in[2]));
  FDCE \R_reg[20] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[20]_i_1_n_0 ),
        .Q(p_1_in[21]));
  FDCE \R_reg[21] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[21]_i_1_n_0 ),
        .Q(p_1_in[22]));
  FDCE \R_reg[22] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[22]_i_1_n_0 ),
        .Q(p_1_in[23]));
  FDCE \R_reg[23] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[23]_i_1_n_0 ),
        .Q(p_1_in[24]));
  FDCE \R_reg[24] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[24]_i_2_n_0 ),
        .Q(L[0]));
  FDCE \R_reg[2] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[2]_i_1_n_0 ),
        .Q(p_1_in[3]));
  FDCE \R_reg[3] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[3]_i_1_n_0 ),
        .Q(p_1_in[4]));
  FDCE \R_reg[4] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[4]_i_1_n_0 ),
        .Q(p_1_in[5]));
  FDCE \R_reg[5] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[5]_i_1_n_0 ),
        .Q(p_1_in[6]));
  FDCE \R_reg[6] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[6]_i_1_n_0 ),
        .Q(p_1_in[7]));
  FDCE \R_reg[7] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[7]_i_1_n_0 ),
        .Q(p_1_in[8]));
  FDCE \R_reg[8] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[8]_i_1_n_0 ),
        .Q(p_1_in[9]));
  FDCE \R_reg[9] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\R[9]_i_1_n_0 ),
        .Q(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contor[0]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[0] ),
        .O(\contor[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \contor[1]_i_1__0 
       (.I0(\contor_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(contor[1]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'hFFFF8882)) 
    \contor[2]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[2] ),
        .I2(\contor_reg_n_0_[0] ),
        .I3(\contor_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(contor[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF88888882)) 
    \contor[3]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[3] ),
        .I2(\contor_reg_n_0_[0] ),
        .I3(\contor_reg_n_0_[1] ),
        .I4(\contor_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(contor[3]));
  FDCE #(
    .INIT(1'b0)) 
    \contor_reg[0] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\contor[0]_i_1__0_n_0 ),
        .Q(\contor_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \contor_reg[1] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(contor[1]),
        .Q(\contor_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \contor_reg[2] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(contor[2]),
        .Q(\contor_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \contor_reg[3] 
       (.C(clk),
        .CE(\R[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(contor[3]),
        .Q(\contor_reg_n_0_[3] ));
  LUT2 #(
    .INIT(4'h2)) 
    \quotient[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(rst_conv),
        .O(quotient0));
  FDRE \quotient_reg[0] 
       (.C(clk),
        .CE(quotient0),
        .D(p_1_in[1]),
        .Q(pwm_val[0]),
        .R(1'b0));
  FDRE \quotient_reg[1] 
       (.C(clk),
        .CE(quotient0),
        .D(p_1_in[2]),
        .Q(pwm_val[1]),
        .R(1'b0));
  FDRE \quotient_reg[2] 
       (.C(clk),
        .CE(quotient0),
        .D(p_1_in[3]),
        .Q(pwm_val[2]),
        .R(1'b0));
  FDRE \quotient_reg[3] 
       (.C(clk),
        .CE(quotient0),
        .D(p_1_in[4]),
        .Q(pwm_val[3]),
        .R(1'b0));
  FDRE \quotient_reg[4] 
       (.C(clk),
        .CE(quotient0),
        .D(p_1_in[5]),
        .Q(pwm_val[4]),
        .R(1'b0));
  FDRE \quotient_reg[5] 
       (.C(clk),
        .CE(quotient0),
        .D(p_1_in[6]),
        .Q(pwm_val[5]),
        .R(1'b0));
  FDRE \quotient_reg[6] 
       (.C(clk),
        .CE(quotient0),
        .D(p_1_in[7]),
        .Q(pwm_val[6]),
        .R(1'b0));
  FDRE \quotient_reg[7] 
       (.C(clk),
        .CE(quotient0),
        .D(p_1_in[8]),
        .Q(pwm_val[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "conv_pwm_int" *) 
module design_1_pid_controller_0_0_conv_pwm_int
   (pwm_val,
    \multiplicand_reg[0] ,
    clk,
    rst_conv,
    \multiplicand_reg[11] );
  output [7:0]pwm_val;
  input \multiplicand_reg[0] ;
  input clk;
  input rst_conv;
  input [11:0]\multiplicand_reg[11] ;

  wire clk;
  wire mult_gata;
  wire \multiplicand_reg[0] ;
  wire [11:0]\multiplicand_reg[11] ;
  wire [7:0]pwm_val;
  wire [24:0]rezultat;
  wire rst_conv;

  design_1_pid_controller_0_0_RestoringDivision div_inst
       (.Q(rezultat),
        .clk(clk),
        .mult_gata(mult_gata),
        .pwm_val(pwm_val),
        .rst_conv(rst_conv));
  design_1_pid_controller_0_0_inmultitor_shift_add mult_inst
       (.Q(rezultat),
        .clk(clk),
        .mult_gata(mult_gata),
        .\multiplicand_reg[0]_0 (\multiplicand_reg[0] ),
        .\multiplicand_reg[11]_0 (\multiplicand_reg[11] ),
        .rst_conv(rst_conv));
endmodule

(* ORIG_REF_NAME = "fp_converter" *) 
module design_1_pid_controller_0_0_fp_converter
   (Q,
    fp_sign_reg_0,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[0]_0 ,
    start_pid,
    E,
    start_pwm,
    \out_fp_reg[31]_0 ,
    \out_int_reg[11]_0 ,
    clk,
    rst_fp,
    fp_sign_reg_1,
    fp_sign_reg_2,
    \temp_int_v_reg[7]_0 ,
    \temp_int_v_reg[7]_1 ,
    \temp_int_v_reg[8]_0 ,
    pot_val,
    \temp_int_v_reg[8]_1 ,
    \temp_int_v_reg[11]_0 ,
    control_output_u,
    \FSM_onehot_secv_reg[0] ,
    start,
    done,
    D);
  output [3:0]Q;
  output fp_sign_reg_0;
  output \FSM_onehot_state_reg[1]_0 ;
  output \FSM_onehot_state_reg[0]_0 ;
  output start_pid;
  output [0:0]E;
  output start_pwm;
  output [29:0]\out_fp_reg[31]_0 ;
  output [11:0]\out_int_reg[11]_0 ;
  input clk;
  input rst_fp;
  input fp_sign_reg_1;
  input fp_sign_reg_2;
  input \temp_int_v_reg[7]_0 ;
  input \temp_int_v_reg[7]_1 ;
  input \temp_int_v_reg[8]_0 ;
  input [2:0]pot_val;
  input \temp_int_v_reg[8]_1 ;
  input \temp_int_v_reg[11]_0 ;
  input [0:0]control_output_u;
  input [5:0]\FSM_onehot_secv_reg[0] ;
  input start;
  input done;
  input [8:0]D;

  wire [8:0]D;
  wire [0:0]E;
  wire \FSM_onehot_secv[5]_i_2_n_0 ;
  wire [5:0]\FSM_onehot_secv_reg[0] ;
  wire \FSM_onehot_state[0]_i_1__0_n_0 ;
  wire \FSM_onehot_state[1]_i_1__0_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire [3:0]Q;
  wire clk;
  wire [0:0]control_output_u;
  wire done;
  wire done_f2i;
  wire done_i2f;
  wire \fp_exp_u[0]_i_1_n_0 ;
  wire \fp_exp_u[1]_i_1_n_0 ;
  wire \fp_exp_u[2]_i_1_n_0 ;
  wire \fp_exp_u[2]_i_2_n_0 ;
  wire \fp_exp_u[3]_i_1_n_0 ;
  wire \fp_exp_u[6]_i_1_n_0 ;
  wire \fp_exp_u[6]_i_2_n_0 ;
  wire \fp_exp_u[6]_i_3_n_0 ;
  wire \fp_exp_u[6]_i_4_n_0 ;
  wire \fp_exp_u[6]_i_5_n_0 ;
  wire \fp_exp_u[7]_i_1_n_0 ;
  wire \fp_exp_u[7]_i_2_n_0 ;
  wire [7:0]fp_exp_u__0;
  wire [22:0]fp_mant_u;
  wire \fp_mant_u[0]_i_1_n_0 ;
  wire \fp_mant_u[0]_i_2_n_0 ;
  wire \fp_mant_u[10]_i_1_n_0 ;
  wire \fp_mant_u[10]_i_2_n_0 ;
  wire \fp_mant_u[11]_i_1_n_0 ;
  wire \fp_mant_u[11]_i_2_n_0 ;
  wire \fp_mant_u[12]_i_1_n_0 ;
  wire \fp_mant_u[12]_i_2_n_0 ;
  wire \fp_mant_u[13]_i_1_n_0 ;
  wire \fp_mant_u[13]_i_2_n_0 ;
  wire \fp_mant_u[14]_i_1_n_0 ;
  wire \fp_mant_u[14]_i_2_n_0 ;
  wire \fp_mant_u[15]_i_1_n_0 ;
  wire \fp_mant_u[15]_i_2_n_0 ;
  wire \fp_mant_u[16]_i_1_n_0 ;
  wire \fp_mant_u[16]_i_2_n_0 ;
  wire \fp_mant_u[16]_i_3_n_0 ;
  wire \fp_mant_u[17]_i_1_n_0 ;
  wire \fp_mant_u[17]_i_2_n_0 ;
  wire \fp_mant_u[18]_i_1_n_0 ;
  wire \fp_mant_u[18]_i_2_n_0 ;
  wire \fp_mant_u[19]_i_1_n_0 ;
  wire \fp_mant_u[19]_i_2_n_0 ;
  wire \fp_mant_u[1]_i_1_n_0 ;
  wire \fp_mant_u[20]_i_1_n_0 ;
  wire \fp_mant_u[20]_i_2_n_0 ;
  wire \fp_mant_u[21]_i_1_n_0 ;
  wire \fp_mant_u[21]_i_2_n_0 ;
  wire \fp_mant_u[22]_i_10_n_0 ;
  wire \fp_mant_u[22]_i_11_n_0 ;
  wire \fp_mant_u[22]_i_12_n_0 ;
  wire \fp_mant_u[22]_i_13_n_0 ;
  wire \fp_mant_u[22]_i_14_n_0 ;
  wire \fp_mant_u[22]_i_15_n_0 ;
  wire \fp_mant_u[22]_i_1_n_0 ;
  wire \fp_mant_u[22]_i_2_n_0 ;
  wire \fp_mant_u[22]_i_3_n_0 ;
  wire \fp_mant_u[22]_i_4_n_0 ;
  wire \fp_mant_u[22]_i_5_n_0 ;
  wire \fp_mant_u[22]_i_6_n_0 ;
  wire \fp_mant_u[22]_i_7_n_0 ;
  wire \fp_mant_u[22]_i_8_n_0 ;
  wire \fp_mant_u[22]_i_9_n_0 ;
  wire \fp_mant_u[2]_i_1_n_0 ;
  wire \fp_mant_u[2]_i_2_n_0 ;
  wire \fp_mant_u[3]_i_1_n_0 ;
  wire \fp_mant_u[4]_i_1_n_0 ;
  wire \fp_mant_u[4]_i_2_n_0 ;
  wire \fp_mant_u[5]_i_1_n_0 ;
  wire \fp_mant_u[5]_i_2_n_0 ;
  wire \fp_mant_u[6]_i_1_n_0 ;
  wire \fp_mant_u[6]_i_2_n_0 ;
  wire \fp_mant_u[7]_i_1_n_0 ;
  wire \fp_mant_u[7]_i_2_n_0 ;
  wire \fp_mant_u[8]_i_1_n_0 ;
  wire \fp_mant_u[8]_i_2_n_0 ;
  wire \fp_mant_u[9]_i_1_n_0 ;
  wire \fp_mant_u[9]_i_2_n_0 ;
  wire fp_sign_i_1_n_0;
  wire fp_sign_reg_0;
  wire fp_sign_reg_1;
  wire fp_sign_reg_2;
  wire \out_fp[31]_i_1_n_0 ;
  wire [29:0]\out_fp_reg[31]_0 ;
  wire \out_int[11]_i_1_n_0 ;
  wire [11:0]\out_int_reg[11]_0 ;
  wire p_0_in;
  wire p_10_in;
  wire p_1_in;
  wire p_2_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in;
  wire [2:0]pot_val;
  wire rst_fp;
  wire start;
  wire start_pid;
  wire start_pwm;
  wire temp_int_v0;
  wire \temp_int_v[11]_i_2_n_0 ;
  wire \temp_int_v[7]_i_1_n_0 ;
  wire \temp_int_v[8]_i_1_n_0 ;
  wire \temp_int_v_reg[11]_0 ;
  wire \temp_int_v_reg[7]_0 ;
  wire \temp_int_v_reg[7]_1 ;
  wire \temp_int_v_reg[8]_0 ;
  wire \temp_int_v_reg[8]_1 ;
  wire \temp_int_v_reg_n_0_[0] ;
  wire \temp_int_v_reg_n_0_[4] ;

  LUT4 #(
    .INIT(16'hFBF8)) 
    \FSM_onehot_secv[5]_i_1 
       (.I0(\FSM_onehot_secv_reg[0] [0]),
        .I1(start),
        .I2(\FSM_onehot_secv[5]_i_2_n_0 ),
        .I3(\FSM_onehot_secv_reg[0] [5]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \FSM_onehot_secv[5]_i_2 
       (.I0(start_pwm),
        .I1(done),
        .I2(\FSM_onehot_secv_reg[0] [2]),
        .I3(done_i2f),
        .I4(\FSM_onehot_secv_reg[0] [1]),
        .I5(\FSM_onehot_secv_reg[0] [4]),
        .O(\FSM_onehot_secv[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[0]_i_1__0 
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(Q[0]),
        .I1(fp_sign_reg_2),
        .O(\FSM_onehot_state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(Q[0]),
        .I1(fp_sign_reg_2),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFEFE)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(Q[3]),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(Q[0]),
        .I4(fp_sign_reg_1),
        .I5(fp_sign_reg_2),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\FSM_onehot_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "c_idle:00001,c_i2f_pack:00100,c_f2i_finish:10000,c_f2i_unpack:01000,c_i2f_find_msb:00010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1__0_n_0 ),
        .PRE(rst_fp),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "c_idle:00001,c_i2f_pack:00100,c_f2i_finish:10000,c_f2i_unpack:01000,c_i2f_find_msb:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(rst_fp),
        .D(\FSM_onehot_state[1]_i_1__0_n_0 ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "c_idle:00001,c_i2f_pack:00100,c_f2i_finish:10000,c_f2i_unpack:01000,c_i2f_find_msb:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(rst_fp),
        .D(Q[1]),
        .Q(Q[2]));
  (* FSM_ENCODED_STATES = "c_idle:00001,c_i2f_pack:00100,c_f2i_finish:10000,c_f2i_unpack:01000,c_i2f_find_msb:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(rst_fp),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(Q[3]));
  (* FSM_ENCODED_STATES = "c_idle:00001,c_i2f_pack:00100,c_f2i_finish:10000,c_f2i_unpack:01000,c_i2f_find_msb:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(rst_fp),
        .D(Q[3]),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  FDCE done_f2i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_fp),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(done_f2i));
  FDCE done_i2f_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_fp),
        .D(Q[2]),
        .Q(done_i2f));
  LUT6 #(
    .INIT(64'h00000000FFFFFDFF)) 
    \fp_exp_u[0]_i_1 
       (.I0(\fp_exp_u[6]_i_3_n_0 ),
        .I1(\temp_int_v_reg_n_0_[0] ),
        .I2(p_1_in),
        .I3(\fp_exp_u[6]_i_4_n_0 ),
        .I4(\fp_exp_u[6]_i_5_n_0 ),
        .I5(\fp_mant_u[22]_i_5_n_0 ),
        .O(\fp_exp_u[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFDFF)) 
    \fp_exp_u[1]_i_1 
       (.I0(\fp_exp_u[6]_i_3_n_0 ),
        .I1(\temp_int_v_reg_n_0_[0] ),
        .I2(p_1_in),
        .I3(\fp_exp_u[6]_i_4_n_0 ),
        .I4(\fp_exp_u[6]_i_5_n_0 ),
        .I5(\fp_mant_u[22]_i_7_n_0 ),
        .O(\fp_exp_u[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAB55555554)) 
    \fp_exp_u[2]_i_1 
       (.I0(\fp_exp_u[6]_i_5_n_0 ),
        .I1(p_4_in),
        .I2(\temp_int_v_reg_n_0_[4] ),
        .I3(p_6_in),
        .I4(p_5_in),
        .I5(\fp_exp_u[2]_i_2_n_0 ),
        .O(\fp_exp_u[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011111110)) 
    \fp_exp_u[2]_i_2 
       (.I0(p_10_in),
        .I1(p_9_in),
        .I2(\fp_mant_u[22]_i_14_n_0 ),
        .I3(p_7_in),
        .I4(p_8_in),
        .I5(\fp_mant_u[22]_i_5_n_0 ),
        .O(\fp_exp_u[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \fp_exp_u[3]_i_1 
       (.I0(p_7_in),
        .I1(p_8_in),
        .I2(p_9_in),
        .I3(p_10_in),
        .I4(\fp_exp_u[7]_i_2_n_0 ),
        .O(\fp_exp_u[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \fp_exp_u[6]_i_1 
       (.I0(\fp_mant_u[22]_i_1_n_0 ),
        .I1(\fp_exp_u[6]_i_3_n_0 ),
        .I2(\temp_int_v_reg_n_0_[0] ),
        .I3(p_1_in),
        .I4(\fp_exp_u[6]_i_4_n_0 ),
        .I5(\fp_exp_u[6]_i_5_n_0 ),
        .O(\fp_exp_u[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \fp_exp_u[6]_i_2 
       (.I0(\fp_exp_u[7]_i_2_n_0 ),
        .I1(p_7_in),
        .I2(p_8_in),
        .I3(p_9_in),
        .I4(p_10_in),
        .O(\fp_exp_u[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \fp_exp_u[6]_i_3 
       (.I0(p_4_in),
        .I1(\temp_int_v_reg_n_0_[4] ),
        .I2(p_6_in),
        .I3(p_5_in),
        .O(\fp_exp_u[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \fp_exp_u[6]_i_4 
       (.I0(p_0_in),
        .I1(p_2_in),
        .O(\fp_exp_u[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fp_exp_u[6]_i_5 
       (.I0(p_10_in),
        .I1(p_9_in),
        .I2(p_8_in),
        .I3(p_7_in),
        .O(\fp_exp_u[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \fp_exp_u[7]_i_1 
       (.I0(\fp_exp_u[7]_i_2_n_0 ),
        .I1(p_7_in),
        .I2(p_8_in),
        .I3(p_9_in),
        .I4(p_10_in),
        .O(\fp_exp_u[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAB00000000)) 
    \fp_exp_u[7]_i_2 
       (.I0(\fp_exp_u[6]_i_5_n_0 ),
        .I1(p_4_in),
        .I2(\temp_int_v_reg_n_0_[4] ),
        .I3(p_6_in),
        .I4(p_5_in),
        .I5(\fp_exp_u[2]_i_2_n_0 ),
        .O(\fp_exp_u[7]_i_2_n_0 ));
  FDRE \fp_exp_u_reg[0] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_exp_u[0]_i_1_n_0 ),
        .Q(fp_exp_u__0[0]),
        .R(1'b0));
  FDRE \fp_exp_u_reg[1] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_exp_u[1]_i_1_n_0 ),
        .Q(fp_exp_u__0[1]),
        .R(1'b0));
  FDRE \fp_exp_u_reg[2] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_exp_u[2]_i_1_n_0 ),
        .Q(fp_exp_u__0[2]),
        .R(\fp_exp_u[6]_i_1_n_0 ));
  FDRE \fp_exp_u_reg[3] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_exp_u[3]_i_1_n_0 ),
        .Q(fp_exp_u__0[3]),
        .R(\fp_exp_u[6]_i_1_n_0 ));
  FDRE \fp_exp_u_reg[6] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_exp_u[6]_i_2_n_0 ),
        .Q(fp_exp_u__0[6]),
        .R(\fp_exp_u[6]_i_1_n_0 ));
  FDRE \fp_exp_u_reg[7] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_exp_u[7]_i_1_n_0 ),
        .Q(fp_exp_u__0[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB800)) 
    \fp_mant_u[0]_i_1 
       (.I0(\fp_mant_u[2]_i_2_n_0 ),
        .I1(\fp_mant_u[22]_i_7_n_0 ),
        .I2(\fp_mant_u[0]_i_2_n_0 ),
        .I3(\fp_mant_u[22]_i_5_n_0 ),
        .O(\fp_mant_u[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \fp_mant_u[0]_i_2 
       (.I0(\temp_int_v_reg_n_0_[4] ),
        .I1(\fp_mant_u[22]_i_9_n_0 ),
        .I2(\fp_mant_u[22]_i_11_n_0 ),
        .I3(\temp_int_v_reg_n_0_[0] ),
        .I4(\fp_mant_u[22]_i_10_n_0 ),
        .O(\fp_mant_u[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[10]_i_1 
       (.I0(\fp_mant_u[12]_i_2_n_0 ),
        .I1(\fp_mant_u[10]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[13]_i_2_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[11]_i_2_n_0 ),
        .O(\fp_mant_u[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \fp_mant_u[10]_i_2 
       (.I0(p_5_in),
        .I1(\fp_mant_u[22]_i_9_n_0 ),
        .I2(p_9_in),
        .I3(\fp_mant_u[16]_i_3_n_0 ),
        .I4(p_0_in),
        .I5(\fp_mant_u[22]_i_11_n_0 ),
        .O(\fp_mant_u[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[11]_i_1 
       (.I0(\fp_mant_u[13]_i_2_n_0 ),
        .I1(\fp_mant_u[11]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[14]_i_2_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[12]_i_2_n_0 ),
        .O(\fp_mant_u[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00300030BB308830)) 
    \fp_mant_u[11]_i_2 
       (.I0(p_6_in),
        .I1(\fp_mant_u[22]_i_9_n_0 ),
        .I2(p_10_in),
        .I3(\fp_mant_u[22]_i_10_n_0 ),
        .I4(p_2_in),
        .I5(\fp_mant_u[22]_i_11_n_0 ),
        .O(\fp_mant_u[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[12]_i_1 
       (.I0(\fp_mant_u[14]_i_2_n_0 ),
        .I1(\fp_mant_u[12]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[15]_i_2_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[13]_i_2_n_0 ),
        .O(\fp_mant_u[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AFC0A0)) 
    \fp_mant_u[12]_i_2 
       (.I0(p_7_in),
        .I1(\temp_int_v_reg_n_0_[0] ),
        .I2(\fp_mant_u[22]_i_9_n_0 ),
        .I3(\fp_mant_u[22]_i_11_n_0 ),
        .I4(\temp_int_v_reg_n_0_[4] ),
        .I5(\fp_mant_u[16]_i_3_n_0 ),
        .O(\fp_mant_u[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[13]_i_1 
       (.I0(\fp_mant_u[15]_i_2_n_0 ),
        .I1(\fp_mant_u[13]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[16]_i_2_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[14]_i_2_n_0 ),
        .O(\fp_mant_u[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0AFC0A000000000)) 
    \fp_mant_u[13]_i_2 
       (.I0(p_8_in),
        .I1(p_1_in),
        .I2(\fp_mant_u[22]_i_9_n_0 ),
        .I3(\fp_mant_u[22]_i_11_n_0 ),
        .I4(p_4_in),
        .I5(\fp_mant_u[22]_i_10_n_0 ),
        .O(\fp_mant_u[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[14]_i_1 
       (.I0(\fp_mant_u[16]_i_2_n_0 ),
        .I1(\fp_mant_u[14]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[17]_i_2_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[15]_i_2_n_0 ),
        .O(\fp_mant_u[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0AFC0A000000000)) 
    \fp_mant_u[14]_i_2 
       (.I0(p_9_in),
        .I1(p_0_in),
        .I2(\fp_mant_u[22]_i_9_n_0 ),
        .I3(\fp_mant_u[22]_i_11_n_0 ),
        .I4(p_5_in),
        .I5(\fp_mant_u[22]_i_10_n_0 ),
        .O(\fp_mant_u[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[15]_i_1 
       (.I0(\fp_mant_u[17]_i_2_n_0 ),
        .I1(\fp_mant_u[15]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[18]_i_2_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[16]_i_2_n_0 ),
        .O(\fp_mant_u[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC000C000AF00A000)) 
    \fp_mant_u[15]_i_2 
       (.I0(p_10_in),
        .I1(p_2_in),
        .I2(\fp_mant_u[22]_i_9_n_0 ),
        .I3(\fp_mant_u[22]_i_10_n_0 ),
        .I4(p_6_in),
        .I5(\fp_mant_u[22]_i_11_n_0 ),
        .O(\fp_mant_u[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[16]_i_1 
       (.I0(\fp_mant_u[18]_i_2_n_0 ),
        .I1(\fp_mant_u[16]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[19]_i_2_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[17]_i_2_n_0 ),
        .O(\fp_mant_u[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00BB008800300030)) 
    \fp_mant_u[16]_i_2 
       (.I0(\temp_int_v_reg_n_0_[4] ),
        .I1(\fp_mant_u[22]_i_9_n_0 ),
        .I2(p_7_in),
        .I3(\fp_mant_u[16]_i_3_n_0 ),
        .I4(\temp_int_v_reg_n_0_[0] ),
        .I5(\fp_mant_u[22]_i_11_n_0 ),
        .O(\fp_mant_u[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2222222222222223)) 
    \fp_mant_u[16]_i_3 
       (.I0(\fp_mant_u[22]_i_15_n_0 ),
        .I1(\fp_exp_u[6]_i_5_n_0 ),
        .I2(p_4_in),
        .I3(\temp_int_v_reg_n_0_[4] ),
        .I4(p_6_in),
        .I5(p_5_in),
        .O(\fp_mant_u[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[17]_i_1 
       (.I0(\fp_mant_u[19]_i_2_n_0 ),
        .I1(\fp_mant_u[17]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[20]_i_2_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[18]_i_2_n_0 ),
        .O(\fp_mant_u[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB00880030003000)) 
    \fp_mant_u[17]_i_2 
       (.I0(p_4_in),
        .I1(\fp_mant_u[22]_i_9_n_0 ),
        .I2(p_8_in),
        .I3(\fp_mant_u[22]_i_10_n_0 ),
        .I4(p_1_in),
        .I5(\fp_mant_u[22]_i_11_n_0 ),
        .O(\fp_mant_u[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[18]_i_1 
       (.I0(\fp_mant_u[20]_i_2_n_0 ),
        .I1(\fp_mant_u[18]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[21]_i_2_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[19]_i_2_n_0 ),
        .O(\fp_mant_u[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB00880030003000)) 
    \fp_mant_u[18]_i_2 
       (.I0(p_5_in),
        .I1(\fp_mant_u[22]_i_9_n_0 ),
        .I2(p_9_in),
        .I3(\fp_mant_u[22]_i_10_n_0 ),
        .I4(p_0_in),
        .I5(\fp_mant_u[22]_i_11_n_0 ),
        .O(\fp_mant_u[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[19]_i_1 
       (.I0(\fp_mant_u[21]_i_2_n_0 ),
        .I1(\fp_mant_u[19]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[22]_i_4_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[20]_i_2_n_0 ),
        .O(\fp_mant_u[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB00880030003000)) 
    \fp_mant_u[19]_i_2 
       (.I0(p_6_in),
        .I1(\fp_mant_u[22]_i_9_n_0 ),
        .I2(p_10_in),
        .I3(\fp_mant_u[22]_i_10_n_0 ),
        .I4(p_2_in),
        .I5(\fp_mant_u[22]_i_11_n_0 ),
        .O(\fp_mant_u[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4540)) 
    \fp_mant_u[1]_i_1 
       (.I0(\fp_mant_u[22]_i_5_n_0 ),
        .I1(\fp_mant_u[4]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_7_n_0 ),
        .I3(\fp_mant_u[2]_i_2_n_0 ),
        .O(\fp_mant_u[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[20]_i_1 
       (.I0(\fp_mant_u[22]_i_4_n_0 ),
        .I1(\fp_mant_u[20]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[22]_i_8_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[21]_i_2_n_0 ),
        .O(\fp_mant_u[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCF00C00000A000A0)) 
    \fp_mant_u[20]_i_2 
       (.I0(\temp_int_v_reg_n_0_[0] ),
        .I1(p_7_in),
        .I2(\fp_mant_u[22]_i_9_n_0 ),
        .I3(\fp_mant_u[22]_i_11_n_0 ),
        .I4(\temp_int_v_reg_n_0_[4] ),
        .I5(\fp_mant_u[22]_i_10_n_0 ),
        .O(\fp_mant_u[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[21]_i_1 
       (.I0(\fp_mant_u[22]_i_8_n_0 ),
        .I1(\fp_mant_u[21]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[22]_i_3_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[22]_i_4_n_0 ),
        .O(\fp_mant_u[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCF00C00000A000A0)) 
    \fp_mant_u[21]_i_2 
       (.I0(p_1_in),
        .I1(p_8_in),
        .I2(\fp_mant_u[22]_i_9_n_0 ),
        .I3(\fp_mant_u[22]_i_11_n_0 ),
        .I4(p_4_in),
        .I5(\fp_mant_u[22]_i_10_n_0 ),
        .O(\fp_mant_u[21]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \fp_mant_u[22]_i_1 
       (.I0(Q[1]),
        .I1(rst_fp),
        .O(\fp_mant_u[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFFFFFE)) 
    \fp_mant_u[22]_i_10 
       (.I0(p_5_in),
        .I1(p_6_in),
        .I2(\temp_int_v_reg_n_0_[4] ),
        .I3(p_4_in),
        .I4(\fp_exp_u[6]_i_5_n_0 ),
        .I5(\fp_mant_u[22]_i_15_n_0 ),
        .O(\fp_mant_u[22]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FFFE)) 
    \fp_mant_u[22]_i_11 
       (.I0(p_5_in),
        .I1(p_6_in),
        .I2(\temp_int_v_reg_n_0_[4] ),
        .I3(p_4_in),
        .I4(\fp_mant_u[22]_i_15_n_0 ),
        .I5(\fp_exp_u[6]_i_5_n_0 ),
        .O(\fp_mant_u[22]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF0D)) 
    \fp_mant_u[22]_i_12 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(p_2_in),
        .I3(\temp_int_v_reg_n_0_[4] ),
        .I4(p_4_in),
        .I5(p_5_in),
        .O(\fp_mant_u[22]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \fp_mant_u[22]_i_13 
       (.I0(p_6_in),
        .I1(p_5_in),
        .I2(p_4_in),
        .O(\fp_mant_u[22]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFF1)) 
    \fp_mant_u[22]_i_14 
       (.I0(p_0_in),
        .I1(p_2_in),
        .I2(\temp_int_v_reg_n_0_[4] ),
        .I3(p_4_in),
        .I4(p_6_in),
        .I5(p_5_in),
        .O(\fp_mant_u[22]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h11111110FFFFFFFF)) 
    \fp_mant_u[22]_i_15 
       (.I0(p_10_in),
        .I1(p_9_in),
        .I2(\fp_mant_u[22]_i_14_n_0 ),
        .I3(p_7_in),
        .I4(p_8_in),
        .I5(\fp_mant_u[22]_i_5_n_0 ),
        .O(\fp_mant_u[22]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0CFC0)) 
    \fp_mant_u[22]_i_2 
       (.I0(\fp_mant_u[22]_i_3_n_0 ),
        .I1(\fp_mant_u[22]_i_4_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[22]_i_6_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[22]_i_8_n_0 ),
        .O(\fp_mant_u[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5000500000FF0044)) 
    \fp_mant_u[22]_i_3 
       (.I0(\fp_mant_u[22]_i_9_n_0 ),
        .I1(\temp_int_v_reg_n_0_[0] ),
        .I2(p_7_in),
        .I3(\fp_mant_u[22]_i_10_n_0 ),
        .I4(\temp_int_v_reg_n_0_[4] ),
        .I5(\fp_mant_u[22]_i_11_n_0 ),
        .O(\fp_mant_u[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCF00C00000A000A0)) 
    \fp_mant_u[22]_i_4 
       (.I0(p_0_in),
        .I1(p_9_in),
        .I2(\fp_mant_u[22]_i_9_n_0 ),
        .I3(\fp_mant_u[22]_i_11_n_0 ),
        .I4(p_5_in),
        .I5(\fp_mant_u[22]_i_10_n_0 ),
        .O(\fp_mant_u[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFFAAFB)) 
    \fp_mant_u[22]_i_5 
       (.I0(p_8_in),
        .I1(\fp_mant_u[22]_i_12_n_0 ),
        .I2(\fp_mant_u[22]_i_13_n_0 ),
        .I3(p_7_in),
        .I4(p_10_in),
        .I5(p_9_in),
        .O(\fp_mant_u[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5000500000FF0044)) 
    \fp_mant_u[22]_i_6 
       (.I0(\fp_mant_u[22]_i_9_n_0 ),
        .I1(p_1_in),
        .I2(p_8_in),
        .I3(\fp_mant_u[22]_i_10_n_0 ),
        .I4(p_4_in),
        .I5(\fp_mant_u[22]_i_11_n_0 ),
        .O(\fp_mant_u[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h11111110EEEEEEEF)) 
    \fp_mant_u[22]_i_7 
       (.I0(p_10_in),
        .I1(p_9_in),
        .I2(\fp_mant_u[22]_i_14_n_0 ),
        .I3(p_7_in),
        .I4(p_8_in),
        .I5(\fp_mant_u[22]_i_5_n_0 ),
        .O(\fp_mant_u[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0200F0FF0200000)) 
    \fp_mant_u[22]_i_8 
       (.I0(p_6_in),
        .I1(\fp_mant_u[22]_i_9_n_0 ),
        .I2(\fp_mant_u[22]_i_10_n_0 ),
        .I3(p_10_in),
        .I4(\fp_mant_u[22]_i_11_n_0 ),
        .I5(p_2_in),
        .O(\fp_mant_u[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666666665)) 
    \fp_mant_u[22]_i_9 
       (.I0(\fp_mant_u[22]_i_15_n_0 ),
        .I1(\fp_exp_u[6]_i_5_n_0 ),
        .I2(p_4_in),
        .I3(\temp_int_v_reg_n_0_[4] ),
        .I4(p_6_in),
        .I5(p_5_in),
        .O(\fp_mant_u[22]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \fp_mant_u[2]_i_1 
       (.I0(\fp_mant_u[4]_i_2_n_0 ),
        .I1(\fp_mant_u[2]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[5]_i_2_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .O(\fp_mant_u[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \fp_mant_u[2]_i_2 
       (.I0(p_5_in),
        .I1(\fp_mant_u[22]_i_9_n_0 ),
        .I2(\fp_mant_u[22]_i_11_n_0 ),
        .I3(p_0_in),
        .I4(\fp_mant_u[22]_i_10_n_0 ),
        .O(\fp_mant_u[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \fp_mant_u[3]_i_1 
       (.I0(\fp_mant_u[5]_i_2_n_0 ),
        .I1(\fp_mant_u[22]_i_5_n_0 ),
        .I2(\fp_mant_u[6]_i_2_n_0 ),
        .I3(\fp_mant_u[22]_i_7_n_0 ),
        .I4(\fp_mant_u[4]_i_2_n_0 ),
        .O(\fp_mant_u[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[4]_i_1 
       (.I0(\fp_mant_u[6]_i_2_n_0 ),
        .I1(\fp_mant_u[4]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[7]_i_2_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[5]_i_2_n_0 ),
        .O(\fp_mant_u[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00C000C0AFA0A0A0)) 
    \fp_mant_u[4]_i_2 
       (.I0(p_7_in),
        .I1(\temp_int_v_reg_n_0_[0] ),
        .I2(\fp_mant_u[22]_i_9_n_0 ),
        .I3(\fp_mant_u[22]_i_11_n_0 ),
        .I4(\temp_int_v_reg_n_0_[4] ),
        .I5(\fp_mant_u[22]_i_10_n_0 ),
        .O(\fp_mant_u[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[5]_i_1 
       (.I0(\fp_mant_u[7]_i_2_n_0 ),
        .I1(\fp_mant_u[5]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[8]_i_2_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[6]_i_2_n_0 ),
        .O(\fp_mant_u[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00C000C0AFA0A0A0)) 
    \fp_mant_u[5]_i_2 
       (.I0(p_8_in),
        .I1(p_1_in),
        .I2(\fp_mant_u[22]_i_9_n_0 ),
        .I3(\fp_mant_u[22]_i_11_n_0 ),
        .I4(p_4_in),
        .I5(\fp_mant_u[22]_i_10_n_0 ),
        .O(\fp_mant_u[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[6]_i_1 
       (.I0(\fp_mant_u[8]_i_2_n_0 ),
        .I1(\fp_mant_u[6]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[9]_i_2_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[7]_i_2_n_0 ),
        .O(\fp_mant_u[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA000C0A0A000C0)) 
    \fp_mant_u[6]_i_2 
       (.I0(p_9_in),
        .I1(p_0_in),
        .I2(\fp_mant_u[22]_i_9_n_0 ),
        .I3(\fp_mant_u[22]_i_11_n_0 ),
        .I4(\fp_mant_u[16]_i_3_n_0 ),
        .I5(p_5_in),
        .O(\fp_mant_u[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[7]_i_1 
       (.I0(\fp_mant_u[9]_i_2_n_0 ),
        .I1(\fp_mant_u[7]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[10]_i_2_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[8]_i_2_n_0 ),
        .O(\fp_mant_u[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA000C0A0A000C0)) 
    \fp_mant_u[7]_i_2 
       (.I0(p_10_in),
        .I1(p_2_in),
        .I2(\fp_mant_u[22]_i_9_n_0 ),
        .I3(\fp_mant_u[22]_i_11_n_0 ),
        .I4(\fp_mant_u[16]_i_3_n_0 ),
        .I5(p_6_in),
        .O(\fp_mant_u[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[8]_i_1 
       (.I0(\fp_mant_u[10]_i_2_n_0 ),
        .I1(\fp_mant_u[8]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[11]_i_2_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[9]_i_2_n_0 ),
        .O(\fp_mant_u[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \fp_mant_u[8]_i_2 
       (.I0(\temp_int_v_reg_n_0_[4] ),
        .I1(\fp_mant_u[22]_i_9_n_0 ),
        .I2(p_7_in),
        .I3(\fp_mant_u[16]_i_3_n_0 ),
        .I4(\temp_int_v_reg_n_0_[0] ),
        .I5(\fp_mant_u[22]_i_11_n_0 ),
        .O(\fp_mant_u[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fp_mant_u[9]_i_1 
       (.I0(\fp_mant_u[11]_i_2_n_0 ),
        .I1(\fp_mant_u[9]_i_2_n_0 ),
        .I2(\fp_mant_u[22]_i_5_n_0 ),
        .I3(\fp_mant_u[12]_i_2_n_0 ),
        .I4(\fp_mant_u[22]_i_7_n_0 ),
        .I5(\fp_mant_u[10]_i_2_n_0 ),
        .O(\fp_mant_u[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \fp_mant_u[9]_i_2 
       (.I0(p_4_in),
        .I1(\fp_mant_u[22]_i_9_n_0 ),
        .I2(p_8_in),
        .I3(\fp_mant_u[16]_i_3_n_0 ),
        .I4(p_1_in),
        .I5(\fp_mant_u[22]_i_11_n_0 ),
        .O(\fp_mant_u[9]_i_2_n_0 ));
  FDRE \fp_mant_u_reg[0] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[0]_i_1_n_0 ),
        .Q(fp_mant_u[0]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[10] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[10]_i_1_n_0 ),
        .Q(fp_mant_u[10]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[11] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[11]_i_1_n_0 ),
        .Q(fp_mant_u[11]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[12] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[12]_i_1_n_0 ),
        .Q(fp_mant_u[12]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[13] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[13]_i_1_n_0 ),
        .Q(fp_mant_u[13]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[14] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[14]_i_1_n_0 ),
        .Q(fp_mant_u[14]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[15] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[15]_i_1_n_0 ),
        .Q(fp_mant_u[15]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[16] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[16]_i_1_n_0 ),
        .Q(fp_mant_u[16]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[17] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[17]_i_1_n_0 ),
        .Q(fp_mant_u[17]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[18] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[18]_i_1_n_0 ),
        .Q(fp_mant_u[18]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[19] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[19]_i_1_n_0 ),
        .Q(fp_mant_u[19]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[1] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[1]_i_1_n_0 ),
        .Q(fp_mant_u[1]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[20] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[20]_i_1_n_0 ),
        .Q(fp_mant_u[20]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[21] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[21]_i_1_n_0 ),
        .Q(fp_mant_u[21]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[22] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[22]_i_2_n_0 ),
        .Q(fp_mant_u[22]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[2] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[2]_i_1_n_0 ),
        .Q(fp_mant_u[2]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[3] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[3]_i_1_n_0 ),
        .Q(fp_mant_u[3]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[4] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[4]_i_1_n_0 ),
        .Q(fp_mant_u[4]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[5] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[5]_i_1_n_0 ),
        .Q(fp_mant_u[5]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[6] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[6]_i_1_n_0 ),
        .Q(fp_mant_u[6]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[7] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[7]_i_1_n_0 ),
        .Q(fp_mant_u[7]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[8] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[8]_i_1_n_0 ),
        .Q(fp_mant_u[8]),
        .R(1'b0));
  FDRE \fp_mant_u_reg[9] 
       (.C(clk),
        .CE(\fp_mant_u[22]_i_1_n_0 ),
        .D(\fp_mant_u[9]_i_1_n_0 ),
        .Q(fp_mant_u[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCFEFCFFF00200000)) 
    fp_sign_i_1
       (.I0(control_output_u),
        .I1(rst_fp),
        .I2(Q[0]),
        .I3(fp_sign_reg_2),
        .I4(fp_sign_reg_1),
        .I5(fp_sign_reg_0),
        .O(fp_sign_i_1_n_0));
  FDRE fp_sign_reg
       (.C(clk),
        .CE(1'b1),
        .D(fp_sign_i_1_n_0),
        .Q(fp_sign_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \out_fp[31]_i_1 
       (.I0(Q[2]),
        .I1(rst_fp),
        .O(\out_fp[31]_i_1_n_0 ));
  FDRE \out_fp_reg[0] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[0]),
        .Q(\out_fp_reg[31]_0 [0]),
        .R(1'b0));
  FDRE \out_fp_reg[10] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[10]),
        .Q(\out_fp_reg[31]_0 [10]),
        .R(1'b0));
  FDRE \out_fp_reg[11] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[11]),
        .Q(\out_fp_reg[31]_0 [11]),
        .R(1'b0));
  FDRE \out_fp_reg[12] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[12]),
        .Q(\out_fp_reg[31]_0 [12]),
        .R(1'b0));
  FDRE \out_fp_reg[13] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[13]),
        .Q(\out_fp_reg[31]_0 [13]),
        .R(1'b0));
  FDRE \out_fp_reg[14] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[14]),
        .Q(\out_fp_reg[31]_0 [14]),
        .R(1'b0));
  FDRE \out_fp_reg[15] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[15]),
        .Q(\out_fp_reg[31]_0 [15]),
        .R(1'b0));
  FDRE \out_fp_reg[16] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[16]),
        .Q(\out_fp_reg[31]_0 [16]),
        .R(1'b0));
  FDRE \out_fp_reg[17] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[17]),
        .Q(\out_fp_reg[31]_0 [17]),
        .R(1'b0));
  FDRE \out_fp_reg[18] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[18]),
        .Q(\out_fp_reg[31]_0 [18]),
        .R(1'b0));
  FDRE \out_fp_reg[19] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[19]),
        .Q(\out_fp_reg[31]_0 [19]),
        .R(1'b0));
  FDRE \out_fp_reg[1] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[1]),
        .Q(\out_fp_reg[31]_0 [1]),
        .R(1'b0));
  FDRE \out_fp_reg[20] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[20]),
        .Q(\out_fp_reg[31]_0 [20]),
        .R(1'b0));
  FDRE \out_fp_reg[21] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[21]),
        .Q(\out_fp_reg[31]_0 [21]),
        .R(1'b0));
  FDRE \out_fp_reg[22] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[22]),
        .Q(\out_fp_reg[31]_0 [22]),
        .R(1'b0));
  FDRE \out_fp_reg[23] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_exp_u__0[0]),
        .Q(\out_fp_reg[31]_0 [23]),
        .R(1'b0));
  FDRE \out_fp_reg[24] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_exp_u__0[1]),
        .Q(\out_fp_reg[31]_0 [24]),
        .R(1'b0));
  FDRE \out_fp_reg[25] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_exp_u__0[2]),
        .Q(\out_fp_reg[31]_0 [25]),
        .R(1'b0));
  FDRE \out_fp_reg[26] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_exp_u__0[3]),
        .Q(\out_fp_reg[31]_0 [26]),
        .R(1'b0));
  FDRE \out_fp_reg[29] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_exp_u__0[6]),
        .Q(\out_fp_reg[31]_0 [27]),
        .R(1'b0));
  FDRE \out_fp_reg[2] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[2]),
        .Q(\out_fp_reg[31]_0 [2]),
        .R(1'b0));
  FDRE \out_fp_reg[30] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_exp_u__0[7]),
        .Q(\out_fp_reg[31]_0 [28]),
        .R(1'b0));
  FDRE \out_fp_reg[31] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_sign_reg_0),
        .Q(\out_fp_reg[31]_0 [29]),
        .R(1'b0));
  FDRE \out_fp_reg[3] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[3]),
        .Q(\out_fp_reg[31]_0 [3]),
        .R(1'b0));
  FDRE \out_fp_reg[4] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[4]),
        .Q(\out_fp_reg[31]_0 [4]),
        .R(1'b0));
  FDRE \out_fp_reg[5] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[5]),
        .Q(\out_fp_reg[31]_0 [5]),
        .R(1'b0));
  FDRE \out_fp_reg[6] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[6]),
        .Q(\out_fp_reg[31]_0 [6]),
        .R(1'b0));
  FDRE \out_fp_reg[7] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[7]),
        .Q(\out_fp_reg[31]_0 [7]),
        .R(1'b0));
  FDRE \out_fp_reg[8] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[8]),
        .Q(\out_fp_reg[31]_0 [8]),
        .R(1'b0));
  FDRE \out_fp_reg[9] 
       (.C(clk),
        .CE(\out_fp[31]_i_1_n_0 ),
        .D(fp_mant_u[9]),
        .Q(\out_fp_reg[31]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \out_int[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(rst_fp),
        .O(\out_int[11]_i_1_n_0 ));
  FDRE \out_int_reg[0] 
       (.C(clk),
        .CE(\out_int[11]_i_1_n_0 ),
        .D(\temp_int_v_reg_n_0_[0] ),
        .Q(\out_int_reg[11]_0 [0]),
        .R(1'b0));
  FDRE \out_int_reg[10] 
       (.C(clk),
        .CE(\out_int[11]_i_1_n_0 ),
        .D(p_9_in),
        .Q(\out_int_reg[11]_0 [10]),
        .R(1'b0));
  FDRE \out_int_reg[11] 
       (.C(clk),
        .CE(\out_int[11]_i_1_n_0 ),
        .D(p_10_in),
        .Q(\out_int_reg[11]_0 [11]),
        .R(1'b0));
  FDRE \out_int_reg[1] 
       (.C(clk),
        .CE(\out_int[11]_i_1_n_0 ),
        .D(p_1_in),
        .Q(\out_int_reg[11]_0 [1]),
        .R(1'b0));
  FDRE \out_int_reg[2] 
       (.C(clk),
        .CE(\out_int[11]_i_1_n_0 ),
        .D(p_0_in),
        .Q(\out_int_reg[11]_0 [2]),
        .R(1'b0));
  FDRE \out_int_reg[3] 
       (.C(clk),
        .CE(\out_int[11]_i_1_n_0 ),
        .D(p_2_in),
        .Q(\out_int_reg[11]_0 [3]),
        .R(1'b0));
  FDRE \out_int_reg[4] 
       (.C(clk),
        .CE(\out_int[11]_i_1_n_0 ),
        .D(\temp_int_v_reg_n_0_[4] ),
        .Q(\out_int_reg[11]_0 [4]),
        .R(1'b0));
  FDRE \out_int_reg[5] 
       (.C(clk),
        .CE(\out_int[11]_i_1_n_0 ),
        .D(p_4_in),
        .Q(\out_int_reg[11]_0 [5]),
        .R(1'b0));
  FDRE \out_int_reg[6] 
       (.C(clk),
        .CE(\out_int[11]_i_1_n_0 ),
        .D(p_5_in),
        .Q(\out_int_reg[11]_0 [6]),
        .R(1'b0));
  FDRE \out_int_reg[7] 
       (.C(clk),
        .CE(\out_int[11]_i_1_n_0 ),
        .D(p_6_in),
        .Q(\out_int_reg[11]_0 [7]),
        .R(1'b0));
  FDRE \out_int_reg[8] 
       (.C(clk),
        .CE(\out_int[11]_i_1_n_0 ),
        .D(p_7_in),
        .Q(\out_int_reg[11]_0 [8]),
        .R(1'b0));
  FDRE \out_int_reg[9] 
       (.C(clk),
        .CE(\out_int[11]_i_1_n_0 ),
        .D(p_8_in),
        .Q(\out_int_reg[11]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    start_pid_i_1
       (.I0(\FSM_onehot_secv_reg[0] [1]),
        .I1(done_i2f),
        .O(start_pid));
  LUT2 #(
    .INIT(4'h8)) 
    start_pwm_i_1
       (.I0(\FSM_onehot_secv_reg[0] [3]),
        .I1(done_f2i),
        .O(start_pwm));
  LUT4 #(
    .INIT(16'h3222)) 
    \temp_int_v[11]_i_1 
       (.I0(Q[3]),
        .I1(rst_fp),
        .I2(Q[0]),
        .I3(fp_sign_reg_2),
        .O(temp_int_v0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \temp_int_v[11]_i_2 
       (.I0(\temp_int_v_reg[11]_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(pot_val[2]),
        .O(\temp_int_v[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp_int_v[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\temp_int_v_reg[7]_0 ),
        .I3(\temp_int_v_reg[7]_1 ),
        .O(\temp_int_v[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \temp_int_v[8]_i_1 
       (.I0(\temp_int_v_reg[8]_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(pot_val[0]),
        .I4(Q[0]),
        .I5(\temp_int_v_reg[8]_1 ),
        .O(\temp_int_v[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \temp_int_v[9]_i_2 
       (.I0(Q[0]),
        .I1(pot_val[1]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\FSM_onehot_state_reg[0]_0 ));
  FDRE \temp_int_v_reg[0] 
       (.C(clk),
        .CE(temp_int_v0),
        .D(D[0]),
        .Q(\temp_int_v_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \temp_int_v_reg[10] 
       (.C(clk),
        .CE(temp_int_v0),
        .D(D[8]),
        .Q(p_9_in),
        .R(1'b0));
  FDRE \temp_int_v_reg[11] 
       (.C(clk),
        .CE(temp_int_v0),
        .D(\temp_int_v[11]_i_2_n_0 ),
        .Q(p_10_in),
        .R(1'b0));
  FDRE \temp_int_v_reg[1] 
       (.C(clk),
        .CE(temp_int_v0),
        .D(D[1]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \temp_int_v_reg[2] 
       (.C(clk),
        .CE(temp_int_v0),
        .D(D[2]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \temp_int_v_reg[3] 
       (.C(clk),
        .CE(temp_int_v0),
        .D(D[3]),
        .Q(p_2_in),
        .R(1'b0));
  FDRE \temp_int_v_reg[4] 
       (.C(clk),
        .CE(temp_int_v0),
        .D(D[4]),
        .Q(\temp_int_v_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \temp_int_v_reg[5] 
       (.C(clk),
        .CE(temp_int_v0),
        .D(D[5]),
        .Q(p_4_in),
        .R(1'b0));
  FDRE \temp_int_v_reg[6] 
       (.C(clk),
        .CE(temp_int_v0),
        .D(D[6]),
        .Q(p_5_in),
        .R(1'b0));
  FDRE \temp_int_v_reg[7] 
       (.C(clk),
        .CE(temp_int_v0),
        .D(\temp_int_v[7]_i_1_n_0 ),
        .Q(p_6_in),
        .R(1'b0));
  FDRE \temp_int_v_reg[8] 
       (.C(clk),
        .CE(temp_int_v0),
        .D(\temp_int_v[8]_i_1_n_0 ),
        .Q(p_7_in),
        .R(1'b0));
  FDRE \temp_int_v_reg[9] 
       (.C(clk),
        .CE(temp_int_v0),
        .D(D[7]),
        .Q(p_8_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "inmultitor_shift_add" *) 
module design_1_pid_controller_0_0_inmultitor_shift_add
   (mult_gata,
    Q,
    clk,
    rst_conv,
    \multiplicand_reg[0]_0 ,
    \multiplicand_reg[11]_0 );
  output mult_gata;
  output [24:0]Q;
  input clk;
  input rst_conv;
  input \multiplicand_reg[0]_0 ;
  input [11:0]\multiplicand_reg[11]_0 ;

  wire \FSM_onehot_stare[0]_i_1_n_0 ;
  wire \FSM_onehot_stare[1]_i_1_n_0 ;
  wire \FSM_onehot_stare[2]_i_1_n_0 ;
  wire \FSM_onehot_stare[2]_i_2_n_0 ;
  wire \FSM_onehot_stare_reg_n_0_[0] ;
  wire \FSM_onehot_stare_reg_n_0_[1] ;
  wire \FSM_onehot_stare_reg_n_0_[2] ;
  wire [24:0]Q;
  wire clk;
  wire [3:1]contor;
  wire \contor[0]_i_1_n_0 ;
  wire \contor[3]_i_1_n_0 ;
  wire \contor_reg_n_0_[0] ;
  wire \contor_reg_n_0_[1] ;
  wire \contor_reg_n_0_[2] ;
  wire \contor_reg_n_0_[3] ;
  wire gata_i_1_n_0;
  wire [24:0]in4;
  wire [24:1]in7;
  wire mult_gata;
  wire \multiplicand[0]_i_1_n_0 ;
  wire \multiplicand[10]_i_1_n_0 ;
  wire \multiplicand[11]_i_1_n_0 ;
  wire \multiplicand[12]_i_1_n_0 ;
  wire \multiplicand[13]_i_1_n_0 ;
  wire \multiplicand[14]_i_1_n_0 ;
  wire \multiplicand[15]_i_1_n_0 ;
  wire \multiplicand[16]_i_1_n_0 ;
  wire \multiplicand[17]_i_1_n_0 ;
  wire \multiplicand[18]_i_1_n_0 ;
  wire \multiplicand[19]_i_1_n_0 ;
  wire \multiplicand[1]_i_1_n_0 ;
  wire \multiplicand[20]_i_1_n_0 ;
  wire \multiplicand[21]_i_1_n_0 ;
  wire \multiplicand[22]_i_1_n_0 ;
  wire \multiplicand[23]_i_1_n_0 ;
  wire \multiplicand[24]_i_1_n_0 ;
  wire \multiplicand[2]_i_1_n_0 ;
  wire \multiplicand[3]_i_1_n_0 ;
  wire \multiplicand[4]_i_1_n_0 ;
  wire \multiplicand[5]_i_1_n_0 ;
  wire \multiplicand[6]_i_1_n_0 ;
  wire \multiplicand[7]_i_1_n_0 ;
  wire \multiplicand[8]_i_1_n_0 ;
  wire \multiplicand[9]_i_1_n_0 ;
  wire \multiplicand_reg[0]_0 ;
  wire [11:0]\multiplicand_reg[11]_0 ;
  wire \multiplicand_reg_n_0_[24] ;
  wire [7:1]multiplicator;
  wire \multiplicator[0]_i_1_n_0 ;
  wire \multiplicator[1]_i_1_n_0 ;
  wire \multiplicator[2]_i_1_n_0 ;
  wire \multiplicator[3]_i_1_n_0 ;
  wire \multiplicator[4]_i_1_n_0 ;
  wire \multiplicator[5]_i_1_n_0 ;
  wire \multiplicator[6]_i_1_n_0 ;
  wire \multiplicator_reg_n_0_[0] ;
  wire [24:0]produs;
  wire produs0_carry__0_i_1_n_0;
  wire produs0_carry__0_i_2_n_0;
  wire produs0_carry__0_i_3_n_0;
  wire produs0_carry__0_i_4_n_0;
  wire produs0_carry__0_n_0;
  wire produs0_carry__0_n_1;
  wire produs0_carry__0_n_2;
  wire produs0_carry__0_n_3;
  wire produs0_carry__1_i_1_n_0;
  wire produs0_carry__1_i_2_n_0;
  wire produs0_carry__1_i_3_n_0;
  wire produs0_carry__1_i_4_n_0;
  wire produs0_carry__1_n_0;
  wire produs0_carry__1_n_1;
  wire produs0_carry__1_n_2;
  wire produs0_carry__1_n_3;
  wire produs0_carry__2_i_1_n_0;
  wire produs0_carry__2_i_2_n_0;
  wire produs0_carry__2_i_3_n_0;
  wire produs0_carry__2_i_4_n_0;
  wire produs0_carry__2_n_0;
  wire produs0_carry__2_n_1;
  wire produs0_carry__2_n_2;
  wire produs0_carry__2_n_3;
  wire produs0_carry__3_i_1_n_0;
  wire produs0_carry__3_i_2_n_0;
  wire produs0_carry__3_i_3_n_0;
  wire produs0_carry__3_i_4_n_0;
  wire produs0_carry__3_n_0;
  wire produs0_carry__3_n_1;
  wire produs0_carry__3_n_2;
  wire produs0_carry__3_n_3;
  wire produs0_carry__4_i_1_n_0;
  wire produs0_carry__4_i_2_n_0;
  wire produs0_carry__4_i_3_n_0;
  wire produs0_carry__4_i_4_n_0;
  wire produs0_carry__4_n_0;
  wire produs0_carry__4_n_1;
  wire produs0_carry__4_n_2;
  wire produs0_carry__4_n_3;
  wire produs0_carry__5_i_1_n_0;
  wire produs0_carry_i_1_n_0;
  wire produs0_carry_i_2_n_0;
  wire produs0_carry_i_3_n_0;
  wire produs0_carry_i_4_n_0;
  wire produs0_carry_n_0;
  wire produs0_carry_n_1;
  wire produs0_carry_n_2;
  wire produs0_carry_n_3;
  wire \produs[0]_i_1_n_0 ;
  wire \produs[10]_i_1_n_0 ;
  wire \produs[11]_i_1_n_0 ;
  wire \produs[12]_i_1_n_0 ;
  wire \produs[13]_i_1_n_0 ;
  wire \produs[14]_i_1_n_0 ;
  wire \produs[15]_i_1_n_0 ;
  wire \produs[16]_i_1_n_0 ;
  wire \produs[17]_i_1_n_0 ;
  wire \produs[18]_i_1_n_0 ;
  wire \produs[19]_i_1_n_0 ;
  wire \produs[1]_i_1_n_0 ;
  wire \produs[20]_i_1_n_0 ;
  wire \produs[21]_i_1_n_0 ;
  wire \produs[22]_i_1_n_0 ;
  wire \produs[23]_i_1_n_0 ;
  wire \produs[24]_i_1_n_0 ;
  wire \produs[24]_i_2_n_0 ;
  wire \produs[2]_i_1_n_0 ;
  wire \produs[3]_i_1_n_0 ;
  wire \produs[4]_i_1_n_0 ;
  wire \produs[5]_i_1_n_0 ;
  wire \produs[6]_i_1_n_0 ;
  wire \produs[7]_i_1_n_0 ;
  wire \produs[8]_i_1_n_0 ;
  wire \produs[9]_i_1_n_0 ;
  wire rezultat0;
  wire rst_conv;
  wire [3:0]NLW_produs0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_produs0_carry__5_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFFFF0222)) 
    \FSM_onehot_stare[0]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[0] ),
        .I1(\multiplicand_reg[0]_0 ),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(\FSM_onehot_stare[2]_i_2_n_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[2] ),
        .O(\FSM_onehot_stare[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hAAAAA8F8)) 
    \FSM_onehot_stare[1]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[0] ),
        .I1(\multiplicand_reg[0]_0 ),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(\FSM_onehot_stare[2]_i_2_n_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[2] ),
        .O(\FSM_onehot_stare[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hF0F0F080)) 
    \FSM_onehot_stare[2]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[0] ),
        .I1(\multiplicand_reg[0]_0 ),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(\FSM_onehot_stare[2]_i_2_n_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[2] ),
        .O(\FSM_onehot_stare[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_onehot_stare[2]_i_2 
       (.I0(\contor_reg_n_0_[2] ),
        .I1(\contor_reg_n_0_[0] ),
        .I2(\contor_reg_n_0_[1] ),
        .I3(\contor_reg_n_0_[3] ),
        .O(\FSM_onehot_stare[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "asteptare:001,calcul:010,finalizare:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_stare_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_stare[0]_i_1_n_0 ),
        .PRE(rst_conv),
        .Q(\FSM_onehot_stare_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "asteptare:001,calcul:010,finalizare:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_stare_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_conv),
        .D(\FSM_onehot_stare[1]_i_1_n_0 ),
        .Q(\FSM_onehot_stare_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "asteptare:001,calcul:010,finalizare:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_stare_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_conv),
        .D(\FSM_onehot_stare[2]_i_1_n_0 ),
        .Q(\FSM_onehot_stare_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contor[0]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[0] ),
        .O(\contor[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \contor[1]_i_1 
       (.I0(\contor_reg_n_0_[0] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(contor[1]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \contor[2]_i_1 
       (.I0(\contor_reg_n_0_[0] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\contor_reg_n_0_[2] ),
        .I3(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(contor[2]));
  LUT3 #(
    .INIT(8'hF8)) 
    \contor[3]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[0] ),
        .I1(\multiplicand_reg[0]_0 ),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\contor[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \contor[3]_i_2 
       (.I0(\contor_reg_n_0_[2] ),
        .I1(\contor_reg_n_0_[0] ),
        .I2(\contor_reg_n_0_[1] ),
        .I3(\contor_reg_n_0_[3] ),
        .I4(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(contor[3]));
  FDCE #(
    .INIT(1'b0)) 
    \contor_reg[0] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\contor[0]_i_1_n_0 ),
        .Q(\contor_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \contor_reg[1] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(contor[1]),
        .Q(\contor_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \contor_reg[2] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(contor[2]),
        .Q(\contor_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \contor_reg[3] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(contor[3]),
        .Q(\contor_reg_n_0_[3] ));
  LUT4 #(
    .INIT(16'hF7F0)) 
    gata_i_1
       (.I0(\FSM_onehot_stare_reg_n_0_[0] ),
        .I1(\multiplicand_reg[0]_0 ),
        .I2(\FSM_onehot_stare_reg_n_0_[2] ),
        .I3(mult_gata),
        .O(gata_i_1_n_0));
  FDCE gata_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_conv),
        .D(gata_i_1_n_0),
        .Q(mult_gata));
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[0]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[0] ),
        .I1(\multiplicand_reg[11]_0 [0]),
        .O(\multiplicand[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \multiplicand[10]_i_1 
       (.I0(in7[10]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\multiplicand_reg[11]_0 [10]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\multiplicand[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \multiplicand[11]_i_1 
       (.I0(in7[11]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\multiplicand_reg[11]_0 [11]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\multiplicand[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[12]_i_1 
       (.I0(in7[12]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\multiplicand[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[13]_i_1 
       (.I0(in7[13]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\multiplicand[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[14]_i_1 
       (.I0(in7[14]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\multiplicand[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[15]_i_1 
       (.I0(in7[15]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\multiplicand[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[16]_i_1 
       (.I0(in7[16]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\multiplicand[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[17]_i_1 
       (.I0(in7[17]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\multiplicand[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[18]_i_1 
       (.I0(in7[18]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\multiplicand[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[19]_i_1 
       (.I0(in7[19]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\multiplicand[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \multiplicand[1]_i_1 
       (.I0(in7[1]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\FSM_onehot_stare_reg_n_0_[0] ),
        .I3(\multiplicand_reg[11]_0 [1]),
        .O(\multiplicand[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[20]_i_1 
       (.I0(in7[20]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\multiplicand[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[21]_i_1 
       (.I0(in7[21]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\multiplicand[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[22]_i_1 
       (.I0(in7[22]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\multiplicand[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[23]_i_1 
       (.I0(in7[23]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\multiplicand[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[24]_i_1 
       (.I0(in7[24]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\multiplicand[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \multiplicand[2]_i_1 
       (.I0(in7[2]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\FSM_onehot_stare_reg_n_0_[0] ),
        .I3(\multiplicand_reg[11]_0 [2]),
        .O(\multiplicand[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \multiplicand[3]_i_1 
       (.I0(in7[3]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\FSM_onehot_stare_reg_n_0_[0] ),
        .I3(\multiplicand_reg[11]_0 [3]),
        .O(\multiplicand[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \multiplicand[4]_i_1 
       (.I0(in7[4]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\FSM_onehot_stare_reg_n_0_[0] ),
        .I3(\multiplicand_reg[11]_0 [4]),
        .O(\multiplicand[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \multiplicand[5]_i_1 
       (.I0(in7[5]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\multiplicand_reg[11]_0 [5]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\multiplicand[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \multiplicand[6]_i_1 
       (.I0(in7[6]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\multiplicand_reg[11]_0 [6]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\multiplicand[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \multiplicand[7]_i_1 
       (.I0(in7[7]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\multiplicand_reg[11]_0 [7]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\multiplicand[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \multiplicand[8]_i_1 
       (.I0(in7[8]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\multiplicand_reg[11]_0 [8]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\multiplicand[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \multiplicand[9]_i_1 
       (.I0(in7[9]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\multiplicand_reg[11]_0 [9]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\multiplicand[9]_i_1_n_0 ));
  FDCE \multiplicand_reg[0] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[0]_i_1_n_0 ),
        .Q(in7[1]));
  FDCE \multiplicand_reg[10] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[10]_i_1_n_0 ),
        .Q(in7[11]));
  FDCE \multiplicand_reg[11] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[11]_i_1_n_0 ),
        .Q(in7[12]));
  FDCE \multiplicand_reg[12] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[12]_i_1_n_0 ),
        .Q(in7[13]));
  FDCE \multiplicand_reg[13] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[13]_i_1_n_0 ),
        .Q(in7[14]));
  FDCE \multiplicand_reg[14] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[14]_i_1_n_0 ),
        .Q(in7[15]));
  FDCE \multiplicand_reg[15] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[15]_i_1_n_0 ),
        .Q(in7[16]));
  FDCE \multiplicand_reg[16] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[16]_i_1_n_0 ),
        .Q(in7[17]));
  FDCE \multiplicand_reg[17] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[17]_i_1_n_0 ),
        .Q(in7[18]));
  FDCE \multiplicand_reg[18] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[18]_i_1_n_0 ),
        .Q(in7[19]));
  FDCE \multiplicand_reg[19] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[19]_i_1_n_0 ),
        .Q(in7[20]));
  FDCE \multiplicand_reg[1] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[1]_i_1_n_0 ),
        .Q(in7[2]));
  FDCE \multiplicand_reg[20] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[20]_i_1_n_0 ),
        .Q(in7[21]));
  FDCE \multiplicand_reg[21] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[21]_i_1_n_0 ),
        .Q(in7[22]));
  FDCE \multiplicand_reg[22] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[22]_i_1_n_0 ),
        .Q(in7[23]));
  FDCE \multiplicand_reg[23] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[23]_i_1_n_0 ),
        .Q(in7[24]));
  FDCE \multiplicand_reg[24] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[24]_i_1_n_0 ),
        .Q(\multiplicand_reg_n_0_[24] ));
  FDCE \multiplicand_reg[2] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[2]_i_1_n_0 ),
        .Q(in7[3]));
  FDCE \multiplicand_reg[3] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[3]_i_1_n_0 ),
        .Q(in7[4]));
  FDCE \multiplicand_reg[4] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[4]_i_1_n_0 ),
        .Q(in7[5]));
  FDCE \multiplicand_reg[5] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[5]_i_1_n_0 ),
        .Q(in7[6]));
  FDCE \multiplicand_reg[6] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[6]_i_1_n_0 ),
        .Q(in7[7]));
  FDCE \multiplicand_reg[7] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[7]_i_1_n_0 ),
        .Q(in7[8]));
  FDCE \multiplicand_reg[8] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[8]_i_1_n_0 ),
        .Q(in7[9]));
  FDCE \multiplicand_reg[9] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicand[9]_i_1_n_0 ),
        .Q(in7[10]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \multiplicator[0]_i_1 
       (.I0(multiplicator[1]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\multiplicator[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \multiplicator[1]_i_1 
       (.I0(multiplicator[2]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\multiplicator[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \multiplicator[2]_i_1 
       (.I0(multiplicator[3]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\multiplicator[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \multiplicator[3]_i_1 
       (.I0(multiplicator[4]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\multiplicator[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \multiplicator[4]_i_1 
       (.I0(multiplicator[5]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\multiplicator[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \multiplicator[5]_i_1 
       (.I0(multiplicator[6]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\multiplicator[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \multiplicator[6]_i_1 
       (.I0(multiplicator[7]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\multiplicator[6]_i_1_n_0 ));
  FDCE \multiplicator_reg[0] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicator[0]_i_1_n_0 ),
        .Q(\multiplicator_reg_n_0_[0] ));
  FDCE \multiplicator_reg[1] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicator[1]_i_1_n_0 ),
        .Q(multiplicator[1]));
  FDCE \multiplicator_reg[2] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicator[2]_i_1_n_0 ),
        .Q(multiplicator[2]));
  FDCE \multiplicator_reg[3] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicator[3]_i_1_n_0 ),
        .Q(multiplicator[3]));
  FDCE \multiplicator_reg[4] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicator[4]_i_1_n_0 ),
        .Q(multiplicator[4]));
  FDCE \multiplicator_reg[5] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicator[5]_i_1_n_0 ),
        .Q(multiplicator[5]));
  FDCE \multiplicator_reg[6] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\multiplicator[6]_i_1_n_0 ),
        .Q(multiplicator[6]));
  FDCE \multiplicator_reg[7] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\FSM_onehot_stare_reg_n_0_[0] ),
        .Q(multiplicator[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 produs0_carry
       (.CI(1'b0),
        .CO({produs0_carry_n_0,produs0_carry_n_1,produs0_carry_n_2,produs0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(produs[3:0]),
        .O(in4[3:0]),
        .S({produs0_carry_i_1_n_0,produs0_carry_i_2_n_0,produs0_carry_i_3_n_0,produs0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 produs0_carry__0
       (.CI(produs0_carry_n_0),
        .CO({produs0_carry__0_n_0,produs0_carry__0_n_1,produs0_carry__0_n_2,produs0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(produs[7:4]),
        .O(in4[7:4]),
        .S({produs0_carry__0_i_1_n_0,produs0_carry__0_i_2_n_0,produs0_carry__0_i_3_n_0,produs0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__0_i_1
       (.I0(produs[7]),
        .I1(in7[8]),
        .O(produs0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__0_i_2
       (.I0(produs[6]),
        .I1(in7[7]),
        .O(produs0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__0_i_3
       (.I0(produs[5]),
        .I1(in7[6]),
        .O(produs0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__0_i_4
       (.I0(produs[4]),
        .I1(in7[5]),
        .O(produs0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 produs0_carry__1
       (.CI(produs0_carry__0_n_0),
        .CO({produs0_carry__1_n_0,produs0_carry__1_n_1,produs0_carry__1_n_2,produs0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(produs[11:8]),
        .O(in4[11:8]),
        .S({produs0_carry__1_i_1_n_0,produs0_carry__1_i_2_n_0,produs0_carry__1_i_3_n_0,produs0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__1_i_1
       (.I0(produs[11]),
        .I1(in7[12]),
        .O(produs0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__1_i_2
       (.I0(produs[10]),
        .I1(in7[11]),
        .O(produs0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__1_i_3
       (.I0(produs[9]),
        .I1(in7[10]),
        .O(produs0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__1_i_4
       (.I0(produs[8]),
        .I1(in7[9]),
        .O(produs0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 produs0_carry__2
       (.CI(produs0_carry__1_n_0),
        .CO({produs0_carry__2_n_0,produs0_carry__2_n_1,produs0_carry__2_n_2,produs0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(produs[15:12]),
        .O(in4[15:12]),
        .S({produs0_carry__2_i_1_n_0,produs0_carry__2_i_2_n_0,produs0_carry__2_i_3_n_0,produs0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__2_i_1
       (.I0(produs[15]),
        .I1(in7[16]),
        .O(produs0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__2_i_2
       (.I0(produs[14]),
        .I1(in7[15]),
        .O(produs0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__2_i_3
       (.I0(produs[13]),
        .I1(in7[14]),
        .O(produs0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__2_i_4
       (.I0(produs[12]),
        .I1(in7[13]),
        .O(produs0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 produs0_carry__3
       (.CI(produs0_carry__2_n_0),
        .CO({produs0_carry__3_n_0,produs0_carry__3_n_1,produs0_carry__3_n_2,produs0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(produs[19:16]),
        .O(in4[19:16]),
        .S({produs0_carry__3_i_1_n_0,produs0_carry__3_i_2_n_0,produs0_carry__3_i_3_n_0,produs0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__3_i_1
       (.I0(produs[19]),
        .I1(in7[20]),
        .O(produs0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__3_i_2
       (.I0(produs[18]),
        .I1(in7[19]),
        .O(produs0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__3_i_3
       (.I0(produs[17]),
        .I1(in7[18]),
        .O(produs0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__3_i_4
       (.I0(produs[16]),
        .I1(in7[17]),
        .O(produs0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 produs0_carry__4
       (.CI(produs0_carry__3_n_0),
        .CO({produs0_carry__4_n_0,produs0_carry__4_n_1,produs0_carry__4_n_2,produs0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(produs[23:20]),
        .O(in4[23:20]),
        .S({produs0_carry__4_i_1_n_0,produs0_carry__4_i_2_n_0,produs0_carry__4_i_3_n_0,produs0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__4_i_1
       (.I0(produs[23]),
        .I1(in7[24]),
        .O(produs0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__4_i_2
       (.I0(produs[22]),
        .I1(in7[23]),
        .O(produs0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__4_i_3
       (.I0(produs[21]),
        .I1(in7[22]),
        .O(produs0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__4_i_4
       (.I0(produs[20]),
        .I1(in7[21]),
        .O(produs0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 produs0_carry__5
       (.CI(produs0_carry__4_n_0),
        .CO(NLW_produs0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_produs0_carry__5_O_UNCONNECTED[3:1],in4[24]}),
        .S({1'b0,1'b0,1'b0,produs0_carry__5_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry__5_i_1
       (.I0(\multiplicand_reg_n_0_[24] ),
        .I1(produs[24]),
        .O(produs0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry_i_1
       (.I0(produs[3]),
        .I1(in7[4]),
        .O(produs0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry_i_2
       (.I0(produs[2]),
        .I1(in7[3]),
        .O(produs0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry_i_3
       (.I0(produs[1]),
        .I1(in7[2]),
        .O(produs0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    produs0_carry_i_4
       (.I0(produs[0]),
        .I1(in7[1]),
        .O(produs0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \produs[0]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[0]),
        .O(\produs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[10]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[10]),
        .O(\produs[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[11]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[11]),
        .O(\produs[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[12]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[12]),
        .O(\produs[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[13]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[13]),
        .O(\produs[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[14]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[14]),
        .O(\produs[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[15]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[15]),
        .O(\produs[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[16]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[16]),
        .O(\produs[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[17]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[17]),
        .O(\produs[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[18]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[18]),
        .O(\produs[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[19]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[19]),
        .O(\produs[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[1]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[1]),
        .O(\produs[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[20]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[20]),
        .O(\produs[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[21]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[21]),
        .O(\produs[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[22]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[22]),
        .O(\produs[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[23]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[23]),
        .O(\produs[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \produs[24]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(\multiplicator_reg_n_0_[0] ),
        .I2(\multiplicand_reg[0]_0 ),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\produs[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[24]_i_2 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[24]),
        .O(\produs[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[2]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[2]),
        .O(\produs[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[3]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[3]),
        .O(\produs[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[4]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[4]),
        .O(\produs[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[5]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[5]),
        .O(\produs[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[6]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[6]),
        .O(\produs[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[7]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[7]),
        .O(\produs[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[8]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[8]),
        .O(\produs[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[9]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[9]),
        .O(\produs[9]_i_1_n_0 ));
  FDCE \produs_reg[0] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[0]_i_1_n_0 ),
        .Q(produs[0]));
  FDCE \produs_reg[10] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[10]_i_1_n_0 ),
        .Q(produs[10]));
  FDCE \produs_reg[11] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[11]_i_1_n_0 ),
        .Q(produs[11]));
  FDCE \produs_reg[12] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[12]_i_1_n_0 ),
        .Q(produs[12]));
  FDCE \produs_reg[13] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[13]_i_1_n_0 ),
        .Q(produs[13]));
  FDCE \produs_reg[14] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[14]_i_1_n_0 ),
        .Q(produs[14]));
  FDCE \produs_reg[15] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[15]_i_1_n_0 ),
        .Q(produs[15]));
  FDCE \produs_reg[16] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[16]_i_1_n_0 ),
        .Q(produs[16]));
  FDCE \produs_reg[17] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[17]_i_1_n_0 ),
        .Q(produs[17]));
  FDCE \produs_reg[18] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[18]_i_1_n_0 ),
        .Q(produs[18]));
  FDCE \produs_reg[19] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[19]_i_1_n_0 ),
        .Q(produs[19]));
  FDCE \produs_reg[1] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[1]_i_1_n_0 ),
        .Q(produs[1]));
  FDCE \produs_reg[20] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[20]_i_1_n_0 ),
        .Q(produs[20]));
  FDCE \produs_reg[21] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[21]_i_1_n_0 ),
        .Q(produs[21]));
  FDCE \produs_reg[22] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[22]_i_1_n_0 ),
        .Q(produs[22]));
  FDCE \produs_reg[23] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[23]_i_1_n_0 ),
        .Q(produs[23]));
  FDCE \produs_reg[24] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[24]_i_2_n_0 ),
        .Q(produs[24]));
  FDCE \produs_reg[2] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[2]_i_1_n_0 ),
        .Q(produs[2]));
  FDCE \produs_reg[3] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[3]_i_1_n_0 ),
        .Q(produs[3]));
  FDCE \produs_reg[4] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[4]_i_1_n_0 ),
        .Q(produs[4]));
  FDCE \produs_reg[5] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[5]_i_1_n_0 ),
        .Q(produs[5]));
  FDCE \produs_reg[6] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[6]_i_1_n_0 ),
        .Q(produs[6]));
  FDCE \produs_reg[7] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[7]_i_1_n_0 ),
        .Q(produs[7]));
  FDCE \produs_reg[8] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[8]_i_1_n_0 ),
        .Q(produs[8]));
  FDCE \produs_reg[9] 
       (.C(clk),
        .CE(\produs[24]_i_1_n_0 ),
        .CLR(rst_conv),
        .D(\produs[9]_i_1_n_0 ),
        .Q(produs[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \rezultat[24]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[2] ),
        .I1(rst_conv),
        .O(rezultat0));
  FDRE \rezultat_reg[0] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \rezultat_reg[10] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \rezultat_reg[11] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \rezultat_reg[12] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \rezultat_reg[13] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \rezultat_reg[14] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \rezultat_reg[15] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \rezultat_reg[16] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \rezultat_reg[17] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \rezultat_reg[18] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \rezultat_reg[19] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \rezultat_reg[1] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \rezultat_reg[20] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \rezultat_reg[21] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \rezultat_reg[22] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \rezultat_reg[23] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \rezultat_reg[24] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \rezultat_reg[2] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \rezultat_reg[3] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \rezultat_reg[4] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \rezultat_reg[5] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \rezultat_reg[6] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \rezultat_reg[7] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \rezultat_reg[8] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \rezultat_reg[9] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pid_controller" *) 
module design_1_pid_controller_0_0_pid_controller
   (pwm_val,
    done,
    rst_fp,
    clk,
    rst_conv,
    pot_val,
    start);
  output [7:0]pwm_val;
  output done;
  input rst_fp;
  input clk;
  input rst_conv;
  input [11:0]pot_val;
  input start;

  wire \FSM_onehot_secv[0]_i_1_n_0 ;
  wire \FSM_onehot_secv_reg_n_0_[0] ;
  wire \FSM_onehot_secv_reg_n_0_[1] ;
  wire \FSM_onehot_secv_reg_n_0_[2] ;
  wire \FSM_onehot_secv_reg_n_0_[3] ;
  wire \FSM_onehot_secv_reg_n_0_[4] ;
  wire \FSM_onehot_secv_reg_n_0_[5] ;
  wire clk;
  wire conv_inst_n_0;
  wire conv_inst_n_1;
  wire conv_inst_n_3;
  wire conv_inst_n_4;
  wire conv_inst_n_5;
  wire conv_inst_n_6;
  wire conv_inst_n_8;
  wire done;
  wire done_pid;
  wire fp_exp_u;
  wire p_0_in;
  wire pid_inst_n_1;
  wire pid_inst_n_10;
  wire pid_inst_n_11;
  wire pid_inst_n_12;
  wire pid_inst_n_13;
  wire pid_inst_n_14;
  wire pid_inst_n_2;
  wire pid_inst_n_3;
  wire pid_inst_n_4;
  wire pid_inst_n_5;
  wire pid_inst_n_6;
  wire pid_inst_n_7;
  wire pid_inst_n_8;
  wire pid_inst_n_9;
  wire [11:0]pot_val;
  wire [31:0]pv_val_fp;
  wire [7:0]pwm_val;
  wire rst_conv;
  wire rst_fp;
  wire start;
  wire start_f2i;
  wire start_f2i_reg_n_0;
  wire start_i2f;
  wire start_i2f_reg_n_0;
  wire start_pid;
  wire start_pid_reg_n_0;
  wire start_pwm;
  wire start_pwm_reg_n_0;
  wire [31:31]u_val_fp;
  wire [11:0]u_val_int;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_secv[0]_i_1 
       (.I0(\FSM_onehot_secv_reg_n_0_[5] ),
        .I1(start),
        .O(\FSM_onehot_secv[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_i2f:0000010,s_pid:0000100,s_f2i:0001000,s_pwm:0010000,s_done:0100000,s_idle:0000001,iSTATE:1000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_secv_reg[0] 
       (.C(clk),
        .CE(conv_inst_n_8),
        .D(\FSM_onehot_secv[0]_i_1_n_0 ),
        .PRE(rst_fp),
        .Q(\FSM_onehot_secv_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "s_i2f:0000010,s_pid:0000100,s_f2i:0001000,s_pwm:0010000,s_done:0100000,s_idle:0000001,iSTATE:1000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_secv_reg[1] 
       (.C(clk),
        .CE(conv_inst_n_8),
        .CLR(rst_fp),
        .D(\FSM_onehot_secv_reg_n_0_[0] ),
        .Q(\FSM_onehot_secv_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "s_i2f:0000010,s_pid:0000100,s_f2i:0001000,s_pwm:0010000,s_done:0100000,s_idle:0000001,iSTATE:1000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_secv_reg[2] 
       (.C(clk),
        .CE(conv_inst_n_8),
        .CLR(rst_fp),
        .D(\FSM_onehot_secv_reg_n_0_[1] ),
        .Q(\FSM_onehot_secv_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "s_i2f:0000010,s_pid:0000100,s_f2i:0001000,s_pwm:0010000,s_done:0100000,s_idle:0000001,iSTATE:1000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_secv_reg[3] 
       (.C(clk),
        .CE(conv_inst_n_8),
        .CLR(rst_fp),
        .D(\FSM_onehot_secv_reg_n_0_[2] ),
        .Q(\FSM_onehot_secv_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "s_i2f:0000010,s_pid:0000100,s_f2i:0001000,s_pwm:0010000,s_done:0100000,s_idle:0000001,iSTATE:1000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_secv_reg[4] 
       (.C(clk),
        .CE(conv_inst_n_8),
        .CLR(rst_fp),
        .D(\FSM_onehot_secv_reg_n_0_[3] ),
        .Q(\FSM_onehot_secv_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "s_i2f:0000010,s_pid:0000100,s_f2i:0001000,s_pwm:0010000,s_done:0100000,s_idle:0000001,iSTATE:1000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_secv_reg[5] 
       (.C(clk),
        .CE(conv_inst_n_8),
        .CLR(rst_fp),
        .D(\FSM_onehot_secv_reg_n_0_[4] ),
        .Q(\FSM_onehot_secv_reg_n_0_[5] ));
  design_1_pid_controller_0_0_fp_converter conv_inst
       (.D({pid_inst_n_1,pid_inst_n_2,pid_inst_n_3,pid_inst_n_4,pid_inst_n_5,pid_inst_n_6,pid_inst_n_7,pid_inst_n_8,pid_inst_n_9}),
        .E(conv_inst_n_8),
        .\FSM_onehot_secv_reg[0] ({\FSM_onehot_secv_reg_n_0_[5] ,\FSM_onehot_secv_reg_n_0_[4] ,\FSM_onehot_secv_reg_n_0_[3] ,\FSM_onehot_secv_reg_n_0_[2] ,\FSM_onehot_secv_reg_n_0_[1] ,\FSM_onehot_secv_reg_n_0_[0] }),
        .\FSM_onehot_state_reg[0]_0 (conv_inst_n_6),
        .\FSM_onehot_state_reg[1]_0 (conv_inst_n_5),
        .Q({conv_inst_n_0,conv_inst_n_1,fp_exp_u,conv_inst_n_3}),
        .clk(clk),
        .control_output_u(u_val_fp),
        .done(done_pid),
        .fp_sign_reg_0(conv_inst_n_4),
        .fp_sign_reg_1(start_f2i_reg_n_0),
        .fp_sign_reg_2(start_i2f_reg_n_0),
        .\out_fp_reg[31]_0 ({pv_val_fp[31:29],pv_val_fp[26:0]}),
        .\out_int_reg[11]_0 (u_val_int),
        .pot_val({pot_val[11],pot_val[9:8]}),
        .rst_fp(rst_fp),
        .start(start),
        .start_pid(start_pid),
        .start_pwm(start_pwm),
        .\temp_int_v_reg[11]_0 (pid_inst_n_10),
        .\temp_int_v_reg[7]_0 (pid_inst_n_11),
        .\temp_int_v_reg[7]_1 (pid_inst_n_14),
        .\temp_int_v_reg[8]_0 (pid_inst_n_12),
        .\temp_int_v_reg[8]_1 (pid_inst_n_13));
  FDCE done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_fp),
        .D(\FSM_onehot_secv_reg_n_0_[5] ),
        .Q(done));
  design_1_pid_controller_0_0_pid_core pid_inst
       (.D({pid_inst_n_1,pid_inst_n_2,pid_inst_n_3,pid_inst_n_4,pid_inst_n_5,pid_inst_n_6,pid_inst_n_7,pid_inst_n_8,pid_inst_n_9}),
        .\FSM_sequential_state_reg[0]_0 (start_pid_reg_n_0),
        .Q(u_val_fp),
        .clk(clk),
        .\control_output_u_reg[20]_0 (pid_inst_n_13),
        .\control_output_u_reg[20]_1 (pid_inst_n_14),
        .\control_output_u_reg[23]_0 (pid_inst_n_10),
        .\control_output_u_reg[23]_1 (pid_inst_n_11),
        .\control_output_u_reg[23]_2 (pid_inst_n_12),
        .done(done_pid),
        .\fp_B_reg[31]_0 ({pv_val_fp[31:29],pv_val_fp[26:0]}),
        .p_0_in(p_0_in),
        .pot_val({pot_val[10],pot_val[7:0]}),
        .rst_fp(rst_fp),
        .start_f2i(start_f2i),
        .start_f2i_reg(\FSM_onehot_secv_reg_n_0_[2] ),
        .\temp_int_v_reg[0] ({conv_inst_n_0,conv_inst_n_1,fp_exp_u,conv_inst_n_3}),
        .\temp_int_v_reg[0]_0 (conv_inst_n_4),
        .\temp_int_v_reg[1] (conv_inst_n_5),
        .\temp_int_v_reg[9] (conv_inst_n_6));
  design_1_pid_controller_0_0_conv_pwm_int pwm_inst
       (.clk(clk),
        .\multiplicand_reg[0] (start_pwm_reg_n_0),
        .\multiplicand_reg[11] (u_val_int),
        .pwm_val(pwm_val),
        .rst_conv(rst_conv));
  FDRE #(
    .INIT(1'b0)) 
    start_f2i_reg
       (.C(clk),
        .CE(p_0_in),
        .D(start_f2i),
        .Q(start_f2i_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    start_i2f_i_1
       (.I0(\FSM_onehot_secv_reg_n_0_[0] ),
        .I1(start),
        .O(start_i2f));
  FDRE #(
    .INIT(1'b0)) 
    start_i2f_reg
       (.C(clk),
        .CE(p_0_in),
        .D(start_i2f),
        .Q(start_i2f_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    start_pid_reg
       (.C(clk),
        .CE(p_0_in),
        .D(start_pid),
        .Q(start_pid_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    start_pwm_reg
       (.C(clk),
        .CE(p_0_in),
        .D(start_pwm),
        .Q(start_pwm_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pid_core" *) 
module design_1_pid_controller_0_0_pid_core
   (Q,
    D,
    \control_output_u_reg[23]_0 ,
    \control_output_u_reg[23]_1 ,
    \control_output_u_reg[23]_2 ,
    \control_output_u_reg[20]_0 ,
    \control_output_u_reg[20]_1 ,
    start_f2i,
    done,
    p_0_in,
    rst_fp,
    \temp_int_v_reg[1] ,
    pot_val,
    \temp_int_v_reg[0] ,
    \temp_int_v_reg[9] ,
    \temp_int_v_reg[0]_0 ,
    start_f2i_reg,
    clk,
    \FSM_sequential_state_reg[0]_0 ,
    \fp_B_reg[31]_0 );
  output [0:0]Q;
  output [8:0]D;
  output \control_output_u_reg[23]_0 ;
  output \control_output_u_reg[23]_1 ;
  output \control_output_u_reg[23]_2 ;
  output \control_output_u_reg[20]_0 ;
  output \control_output_u_reg[20]_1 ;
  output start_f2i;
  output done;
  output p_0_in;
  input rst_fp;
  input \temp_int_v_reg[1] ;
  input [8:0]pot_val;
  input [3:0]\temp_int_v_reg[0] ;
  input \temp_int_v_reg[9] ;
  input \temp_int_v_reg[0]_0 ;
  input [0:0]start_f2i_reg;
  input clk;
  input \FSM_sequential_state_reg[0]_0 ;
  input [29:0]\fp_B_reg[31]_0 ;

  wire [31:0]A;
  wire ADD_SUB_UNIT_n_31;
  wire ADD_SUB_UNIT_n_35;
  wire ADD_SUB_UNIT_n_68;
  wire [31:0]B;
  wire [8:0]D;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire MUL_UNIT_n_0;
  wire MUL_UNIT_n_11;
  wire MUL_UNIT_n_12;
  wire MUL_UNIT_n_13;
  wire MUL_UNIT_n_14;
  wire MUL_UNIT_n_15;
  wire MUL_UNIT_n_16;
  wire MUL_UNIT_n_17;
  wire MUL_UNIT_n_18;
  wire MUL_UNIT_n_19;
  wire MUL_UNIT_n_20;
  wire MUL_UNIT_n_21;
  wire MUL_UNIT_n_22;
  wire MUL_UNIT_n_23;
  wire MUL_UNIT_n_24;
  wire MUL_UNIT_n_25;
  wire MUL_UNIT_n_26;
  wire MUL_UNIT_n_27;
  wire MUL_UNIT_n_28;
  wire MUL_UNIT_n_29;
  wire MUL_UNIT_n_30;
  wire MUL_UNIT_n_31;
  wire MUL_UNIT_n_32;
  wire MUL_UNIT_n_33;
  wire MUL_UNIT_n_34;
  wire MUL_UNIT_n_35;
  wire MUL_UNIT_n_36;
  wire MUL_UNIT_n_37;
  wire MUL_UNIT_n_38;
  wire MUL_UNIT_n_39;
  wire MUL_UNIT_n_40;
  wire MUL_UNIT_n_41;
  wire MUL_UNIT_n_42;
  wire MUL_UNIT_n_43;
  wire MUL_UNIT_n_44;
  wire MUL_UNIT_n_45;
  wire MUL_UNIT_n_9;
  wire [0:0]Q;
  wire add_done;
  wire add_start;
  wire add_start_reg_n_0;
  wire clk;
  wire control_output_u0;
  wire \control_output_u_reg[20]_0 ;
  wire \control_output_u_reg[20]_1 ;
  wire \control_output_u_reg[23]_0 ;
  wire \control_output_u_reg[23]_1 ;
  wire \control_output_u_reg[23]_2 ;
  wire done;
  wire done_i_1_n_0;
  wire error_n0;
  wire error_n_1;
  wire \error_n_1_reg_n_0_[0] ;
  wire \error_n_1_reg_n_0_[10] ;
  wire \error_n_1_reg_n_0_[11] ;
  wire \error_n_1_reg_n_0_[12] ;
  wire \error_n_1_reg_n_0_[13] ;
  wire \error_n_1_reg_n_0_[14] ;
  wire \error_n_1_reg_n_0_[15] ;
  wire \error_n_1_reg_n_0_[16] ;
  wire \error_n_1_reg_n_0_[17] ;
  wire \error_n_1_reg_n_0_[18] ;
  wire \error_n_1_reg_n_0_[19] ;
  wire \error_n_1_reg_n_0_[1] ;
  wire \error_n_1_reg_n_0_[20] ;
  wire \error_n_1_reg_n_0_[21] ;
  wire \error_n_1_reg_n_0_[22] ;
  wire \error_n_1_reg_n_0_[23] ;
  wire \error_n_1_reg_n_0_[24] ;
  wire \error_n_1_reg_n_0_[25] ;
  wire \error_n_1_reg_n_0_[26] ;
  wire \error_n_1_reg_n_0_[27] ;
  wire \error_n_1_reg_n_0_[28] ;
  wire \error_n_1_reg_n_0_[29] ;
  wire \error_n_1_reg_n_0_[2] ;
  wire \error_n_1_reg_n_0_[30] ;
  wire \error_n_1_reg_n_0_[31] ;
  wire \error_n_1_reg_n_0_[3] ;
  wire \error_n_1_reg_n_0_[4] ;
  wire \error_n_1_reg_n_0_[5] ;
  wire \error_n_1_reg_n_0_[6] ;
  wire \error_n_1_reg_n_0_[7] ;
  wire \error_n_1_reg_n_0_[8] ;
  wire \error_n_1_reg_n_0_[9] ;
  wire [31:0]error_n__0;
  wire [31:0]fp_A;
  wire [31:0]fp_B;
  wire [29:0]\fp_B_reg[31]_0 ;
  wire [31:0]fp_result;
  wire fp_sub_i_2_n_0;
  wire fp_sub_reg_n_0;
  wire integral_sum;
  wire \integral_sum_reg_n_0_[0] ;
  wire \integral_sum_reg_n_0_[10] ;
  wire \integral_sum_reg_n_0_[11] ;
  wire \integral_sum_reg_n_0_[12] ;
  wire \integral_sum_reg_n_0_[13] ;
  wire \integral_sum_reg_n_0_[14] ;
  wire \integral_sum_reg_n_0_[15] ;
  wire \integral_sum_reg_n_0_[16] ;
  wire \integral_sum_reg_n_0_[17] ;
  wire \integral_sum_reg_n_0_[18] ;
  wire \integral_sum_reg_n_0_[19] ;
  wire \integral_sum_reg_n_0_[1] ;
  wire \integral_sum_reg_n_0_[20] ;
  wire \integral_sum_reg_n_0_[21] ;
  wire \integral_sum_reg_n_0_[22] ;
  wire \integral_sum_reg_n_0_[23] ;
  wire \integral_sum_reg_n_0_[24] ;
  wire \integral_sum_reg_n_0_[25] ;
  wire \integral_sum_reg_n_0_[26] ;
  wire \integral_sum_reg_n_0_[27] ;
  wire \integral_sum_reg_n_0_[28] ;
  wire \integral_sum_reg_n_0_[29] ;
  wire \integral_sum_reg_n_0_[2] ;
  wire \integral_sum_reg_n_0_[30] ;
  wire \integral_sum_reg_n_0_[31] ;
  wire \integral_sum_reg_n_0_[3] ;
  wire \integral_sum_reg_n_0_[4] ;
  wire \integral_sum_reg_n_0_[5] ;
  wire \integral_sum_reg_n_0_[6] ;
  wire \integral_sum_reg_n_0_[7] ;
  wire \integral_sum_reg_n_0_[8] ;
  wire \integral_sum_reg_n_0_[9] ;
  wire mul_done;
  wire mul_start;
  wire mul_start_reg_n_0;
  wire p_0_in;
  wire [8:0]pot_val;
  wire rst_fp;
  wire start_f2i;
  wire [0:0]start_f2i_reg;
  wire [3:0]state;
  wire [3:0]state__0;
  wire temp_error_diff0;
  wire [31:0]temp_error_diff__0;
  wire \temp_int_v[0]_i_2_n_0 ;
  wire \temp_int_v[0]_i_3_n_0 ;
  wire \temp_int_v[0]_i_4_n_0 ;
  wire \temp_int_v[0]_i_5_n_0 ;
  wire \temp_int_v[0]_i_6_n_0 ;
  wire \temp_int_v[0]_i_7_n_0 ;
  wire \temp_int_v[0]_i_8_n_0 ;
  wire \temp_int_v[10]_i_2_n_0 ;
  wire \temp_int_v[11]_i_4_n_0 ;
  wire \temp_int_v[1]_i_2_n_0 ;
  wire \temp_int_v[1]_i_3_n_0 ;
  wire \temp_int_v[1]_i_4_n_0 ;
  wire \temp_int_v[1]_i_5_n_0 ;
  wire \temp_int_v[2]_i_2_n_0 ;
  wire \temp_int_v[2]_i_3_n_0 ;
  wire \temp_int_v[2]_i_4_n_0 ;
  wire \temp_int_v[2]_i_5_n_0 ;
  wire \temp_int_v[3]_i_2_n_0 ;
  wire \temp_int_v[3]_i_3_n_0 ;
  wire \temp_int_v[3]_i_4_n_0 ;
  wire \temp_int_v[3]_i_5_n_0 ;
  wire \temp_int_v[3]_i_6_n_0 ;
  wire \temp_int_v[4]_i_2_n_0 ;
  wire \temp_int_v[4]_i_3_n_0 ;
  wire \temp_int_v[4]_i_4_n_0 ;
  wire \temp_int_v[5]_i_2_n_0 ;
  wire \temp_int_v[5]_i_3_n_0 ;
  wire \temp_int_v[5]_i_4_n_0 ;
  wire \temp_int_v[6]_i_2_n_0 ;
  wire \temp_int_v[6]_i_3_n_0 ;
  wire \temp_int_v[6]_i_4_n_0 ;
  wire \temp_int_v[6]_i_5_n_0 ;
  wire \temp_int_v[8]_i_4_n_0 ;
  wire \temp_int_v[9]_i_3_n_0 ;
  wire [3:0]\temp_int_v_reg[0] ;
  wire \temp_int_v_reg[0]_0 ;
  wire \temp_int_v_reg[1] ;
  wire \temp_int_v_reg[9] ;
  wire term_D0;
  wire [31:0]term_D__0;
  wire [31:0]term_I;
  wire term_I0;
  wire term_P0;
  wire [31:0]term_P__0;
  wire [30:12]u_val_fp;

  design_1_pid_controller_0_0_vm_add_sub ADD_SUB_UNIT
       (.B_sgn_reg_0(B),
        .B_sgn_reg_1(fp_sub_reg_n_0),
        .D({fp_A[31:30],fp_A[26:25],fp_A[22:0]}),
        .E(temp_error_diff0),
        .\FSM_sequential_state_reg[0]_0 (control_output_u0),
        .\FSM_sequential_state_reg[0]_1 (ADD_SUB_UNIT_n_35),
        .\FSM_sequential_state_reg[0]_2 (\FSM_sequential_state_reg[0]_0 ),
        .\FSM_sequential_state_reg[0]_3 (\FSM_sequential_state[3]_i_3_n_0 ),
        .\FSM_sequential_state_reg[0]_4 (MUL_UNIT_n_9),
        .\FSM_sequential_state_reg[1]_0 (term_I0),
        .\FSM_sequential_state_reg[1]_1 (fp_B),
        .\FSM_sequential_state_reg[2]_0 (error_n0),
        .\FSM_sequential_state_reg[2]_1 (add_start_reg_n_0),
        .Q(A),
        .UNCONN_OUT({fp_result[29:27],fp_result[24:23]}),
        .add_done(add_done),
        .clk(clk),
        .done_reg_0(integral_sum),
        .done_reg_1(ADD_SUB_UNIT_n_68),
        .\error_n_reg[0] (state),
        .\fp_A_reg[25] (MUL_UNIT_n_43),
        .\fp_A_reg[26] (MUL_UNIT_n_44),
        .\fp_A_reg[31] (error_n__0),
        .\fp_A_reg[31]_0 ({term_P__0[31:30],term_P__0[22:0]}),
        .\fp_A_reg[31]_1 ({\integral_sum_reg_n_0_[31] ,\integral_sum_reg_n_0_[30] ,\integral_sum_reg_n_0_[22] ,\integral_sum_reg_n_0_[21] ,\integral_sum_reg_n_0_[20] ,\integral_sum_reg_n_0_[19] ,\integral_sum_reg_n_0_[18] ,\integral_sum_reg_n_0_[17] ,\integral_sum_reg_n_0_[16] ,\integral_sum_reg_n_0_[15] ,\integral_sum_reg_n_0_[14] ,\integral_sum_reg_n_0_[13] ,\integral_sum_reg_n_0_[12] ,\integral_sum_reg_n_0_[11] ,\integral_sum_reg_n_0_[10] ,\integral_sum_reg_n_0_[9] ,\integral_sum_reg_n_0_[8] ,\integral_sum_reg_n_0_[7] ,\integral_sum_reg_n_0_[6] ,\integral_sum_reg_n_0_[5] ,\integral_sum_reg_n_0_[4] ,\integral_sum_reg_n_0_[3] ,\integral_sum_reg_n_0_[2] ,\integral_sum_reg_n_0_[1] ,\integral_sum_reg_n_0_[0] }),
        .\fp_B_reg[0] (MUL_UNIT_n_42),
        .\fp_B_reg[10] (MUL_UNIT_n_32),
        .\fp_B_reg[11] (MUL_UNIT_n_31),
        .\fp_B_reg[12] (MUL_UNIT_n_30),
        .\fp_B_reg[13] (MUL_UNIT_n_29),
        .\fp_B_reg[14] (MUL_UNIT_n_28),
        .\fp_B_reg[15] (MUL_UNIT_n_27),
        .\fp_B_reg[16] (MUL_UNIT_n_26),
        .\fp_B_reg[17] (MUL_UNIT_n_25),
        .\fp_B_reg[18] (MUL_UNIT_n_24),
        .\fp_B_reg[19] (MUL_UNIT_n_23),
        .\fp_B_reg[1] (MUL_UNIT_n_41),
        .\fp_B_reg[20] (MUL_UNIT_n_22),
        .\fp_B_reg[21] (MUL_UNIT_n_21),
        .\fp_B_reg[22] (MUL_UNIT_n_20),
        .\fp_B_reg[23] (MUL_UNIT_n_19),
        .\fp_B_reg[24] (MUL_UNIT_n_18),
        .\fp_B_reg[25] (MUL_UNIT_n_17),
        .\fp_B_reg[26] (MUL_UNIT_n_16),
        .\fp_B_reg[27] (MUL_UNIT_n_15),
        .\fp_B_reg[28] (MUL_UNIT_n_14),
        .\fp_B_reg[29] (MUL_UNIT_n_13),
        .\fp_B_reg[2] (MUL_UNIT_n_40),
        .\fp_B_reg[30] (MUL_UNIT_n_12),
        .\fp_B_reg[31] (temp_error_diff__0),
        .\fp_B_reg[31]_0 ({\error_n_1_reg_n_0_[31] ,\error_n_1_reg_n_0_[30] ,\error_n_1_reg_n_0_[29] ,\error_n_1_reg_n_0_[28] ,\error_n_1_reg_n_0_[27] ,\error_n_1_reg_n_0_[26] ,\error_n_1_reg_n_0_[25] ,\error_n_1_reg_n_0_[24] ,\error_n_1_reg_n_0_[23] ,\error_n_1_reg_n_0_[22] ,\error_n_1_reg_n_0_[21] ,\error_n_1_reg_n_0_[20] ,\error_n_1_reg_n_0_[19] ,\error_n_1_reg_n_0_[18] ,\error_n_1_reg_n_0_[17] ,\error_n_1_reg_n_0_[16] ,\error_n_1_reg_n_0_[15] ,\error_n_1_reg_n_0_[14] ,\error_n_1_reg_n_0_[13] ,\error_n_1_reg_n_0_[12] ,\error_n_1_reg_n_0_[11] ,\error_n_1_reg_n_0_[10] ,\error_n_1_reg_n_0_[9] ,\error_n_1_reg_n_0_[8] ,\error_n_1_reg_n_0_[7] ,\error_n_1_reg_n_0_[6] ,\error_n_1_reg_n_0_[5] ,\error_n_1_reg_n_0_[4] ,\error_n_1_reg_n_0_[3] ,\error_n_1_reg_n_0_[2] ,\error_n_1_reg_n_0_[1] ,\error_n_1_reg_n_0_[0] }),
        .\fp_B_reg[31]_1 (\fp_B_reg[31]_0 ),
        .\fp_B_reg[31]_2 (term_D__0),
        .\fp_B_reg[31]_3 (term_I),
        .\fp_B_reg[31]_4 (MUL_UNIT_n_11),
        .\fp_B_reg[3] (MUL_UNIT_n_39),
        .\fp_B_reg[4] (MUL_UNIT_n_38),
        .\fp_B_reg[5] (MUL_UNIT_n_37),
        .\fp_B_reg[6] (MUL_UNIT_n_36),
        .\fp_B_reg[7] (MUL_UNIT_n_35),
        .\fp_B_reg[8] (MUL_UNIT_n_34),
        .\fp_B_reg[9] (MUL_UNIT_n_33),
        .fp_result({fp_result[31:30],fp_result[26:25],fp_result[22:0]}),
        .mul_done(mul_done),
        .mul_start(mul_start),
        .rst_fp(rst_fp),
        .start_pid_reg(ADD_SUB_UNIT_n_31));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h80BF)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[0]),
        .O(state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h8FB0)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .O(state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h006C)) 
    \FSM_sequential_state[2]_i_1__0 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[3]),
        .O(state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hFF0F8080)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(state[3]),
        .O(state__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(state[3]),
        .I1(state[2]),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "calc_i_mul:0011,calc_i_add:0100,calc_p:0010,finished:1010,calc_error:0001,idle:0000,update_error:1001,calc_u_add1:0111,calc_u_add2:1000,calc_d_mul:0110,iSTATE:1011,calc_d_sub:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(ADD_SUB_UNIT_n_31),
        .CLR(rst_fp),
        .D(state__0[0]),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "calc_i_mul:0011,calc_i_add:0100,calc_p:0010,finished:1010,calc_error:0001,idle:0000,update_error:1001,calc_u_add1:0111,calc_u_add2:1000,calc_d_mul:0110,iSTATE:1011,calc_d_sub:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(ADD_SUB_UNIT_n_31),
        .CLR(rst_fp),
        .D(state__0[1]),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "calc_i_mul:0011,calc_i_add:0100,calc_p:0010,finished:1010,calc_error:0001,idle:0000,update_error:1001,calc_u_add1:0111,calc_u_add2:1000,calc_d_mul:0110,iSTATE:1011,calc_d_sub:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(ADD_SUB_UNIT_n_31),
        .CLR(rst_fp),
        .D(state__0[2]),
        .Q(state[2]));
  (* FSM_ENCODED_STATES = "calc_i_mul:0011,calc_i_add:0100,calc_p:0010,finished:1010,calc_error:0001,idle:0000,update_error:1001,calc_u_add1:0111,calc_u_add2:1000,calc_d_mul:0110,iSTATE:1011,calc_d_sub:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(clk),
        .CE(ADD_SUB_UNIT_n_31),
        .CLR(rst_fp),
        .D(state__0[3]),
        .Q(state[3]));
  design_1_pid_controller_0_0_vm_mul MUL_UNIT
       (.D(fp_A[16:0]),
        .E(MUL_UNIT_n_0),
        .\FSM_sequential_state_reg[0] (MUL_UNIT_n_9),
        .\FSM_sequential_state_reg[0]_0 (ADD_SUB_UNIT_n_35),
        .\FSM_sequential_state_reg[2] (term_D0),
        .\FSM_sequential_state_reg[2]_0 (term_P0),
        .Q(B),
        .add_done(add_done),
        .add_start(add_start),
        .clk(clk),
        .done_reg_0(MUL_UNIT_n_11),
        .done_reg_1(MUL_UNIT_n_12),
        .done_reg_10(MUL_UNIT_n_21),
        .done_reg_11(MUL_UNIT_n_22),
        .done_reg_12(MUL_UNIT_n_23),
        .done_reg_13(MUL_UNIT_n_24),
        .done_reg_14(MUL_UNIT_n_25),
        .done_reg_15(MUL_UNIT_n_26),
        .done_reg_16(MUL_UNIT_n_27),
        .done_reg_17(MUL_UNIT_n_28),
        .done_reg_18(MUL_UNIT_n_29),
        .done_reg_19(MUL_UNIT_n_30),
        .done_reg_2(MUL_UNIT_n_13),
        .done_reg_20(MUL_UNIT_n_31),
        .done_reg_21(MUL_UNIT_n_32),
        .done_reg_22(MUL_UNIT_n_33),
        .done_reg_23(MUL_UNIT_n_34),
        .done_reg_24(MUL_UNIT_n_35),
        .done_reg_25(MUL_UNIT_n_36),
        .done_reg_26(MUL_UNIT_n_37),
        .done_reg_27(MUL_UNIT_n_38),
        .done_reg_28(MUL_UNIT_n_39),
        .done_reg_29(MUL_UNIT_n_40),
        .done_reg_3(MUL_UNIT_n_14),
        .done_reg_30(MUL_UNIT_n_41),
        .done_reg_31(MUL_UNIT_n_42),
        .done_reg_32(MUL_UNIT_n_43),
        .done_reg_33(MUL_UNIT_n_44),
        .done_reg_34(MUL_UNIT_n_45),
        .done_reg_4(MUL_UNIT_n_15),
        .done_reg_5(MUL_UNIT_n_16),
        .done_reg_6(MUL_UNIT_n_17),
        .done_reg_7(MUL_UNIT_n_18),
        .done_reg_8(MUL_UNIT_n_19),
        .done_reg_9(MUL_UNIT_n_20),
        .\error_n_reg[29] ({fp_A[29:27],fp_A[24:23]}),
        .\fp_A_reg[23] (ADD_SUB_UNIT_n_68),
        .\fp_A_reg[29] (term_P__0[29:23]),
        .\fp_A_reg[29]_0 ({\integral_sum_reg_n_0_[29] ,\integral_sum_reg_n_0_[28] ,\integral_sum_reg_n_0_[27] ,\integral_sum_reg_n_0_[26] ,\integral_sum_reg_n_0_[25] ,\integral_sum_reg_n_0_[24] ,\integral_sum_reg_n_0_[23] }),
        .\fp_B[31]_i_3 (error_n__0),
        .fp_result(fp_result),
        .fp_sub_reg(fp_sub_i_2_n_0),
        .fp_sub_reg_0(fp_sub_reg_n_0),
        .mul_done(mul_done),
        .rst_fp(rst_fp),
        .signA_reg_0(A),
        .\state_reg[0]_0 (mul_start_reg_n_0),
        .\term_P_reg[0] (state));
  FDRE #(
    .INIT(1'b0)) 
    add_start_reg
       (.C(clk),
        .CE(p_0_in),
        .D(add_start),
        .Q(add_start_reg_n_0),
        .R(1'b0));
  FDRE \control_output_u_reg[12] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[12]),
        .Q(u_val_fp[12]),
        .R(1'b0));
  FDRE \control_output_u_reg[13] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[13]),
        .Q(u_val_fp[13]),
        .R(1'b0));
  FDRE \control_output_u_reg[14] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[14]),
        .Q(u_val_fp[14]),
        .R(1'b0));
  FDRE \control_output_u_reg[15] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[15]),
        .Q(u_val_fp[15]),
        .R(1'b0));
  FDRE \control_output_u_reg[16] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[16]),
        .Q(u_val_fp[16]),
        .R(1'b0));
  FDRE \control_output_u_reg[17] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[17]),
        .Q(u_val_fp[17]),
        .R(1'b0));
  FDRE \control_output_u_reg[18] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[18]),
        .Q(u_val_fp[18]),
        .R(1'b0));
  FDRE \control_output_u_reg[19] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[19]),
        .Q(u_val_fp[19]),
        .R(1'b0));
  FDRE \control_output_u_reg[20] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[20]),
        .Q(u_val_fp[20]),
        .R(1'b0));
  FDRE \control_output_u_reg[21] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[21]),
        .Q(u_val_fp[21]),
        .R(1'b0));
  FDRE \control_output_u_reg[22] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[22]),
        .Q(u_val_fp[22]),
        .R(1'b0));
  FDRE \control_output_u_reg[23] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[23]),
        .Q(u_val_fp[23]),
        .R(1'b0));
  FDRE \control_output_u_reg[24] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[24]),
        .Q(u_val_fp[24]),
        .R(1'b0));
  FDRE \control_output_u_reg[25] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[25]),
        .Q(u_val_fp[25]),
        .R(1'b0));
  FDRE \control_output_u_reg[26] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[26]),
        .Q(u_val_fp[26]),
        .R(1'b0));
  FDRE \control_output_u_reg[27] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[27]),
        .Q(u_val_fp[27]),
        .R(1'b0));
  FDRE \control_output_u_reg[28] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[28]),
        .Q(u_val_fp[28]),
        .R(1'b0));
  FDRE \control_output_u_reg[29] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[29]),
        .Q(u_val_fp[29]),
        .R(1'b0));
  FDRE \control_output_u_reg[30] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[30]),
        .Q(u_val_fp[30]),
        .R(1'b0));
  FDRE \control_output_u_reg[31] 
       (.C(clk),
        .CE(control_output_u0),
        .D(fp_result[31]),
        .Q(Q),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    done_i_1
       (.I0(state[3]),
        .I1(state[1]),
        .O(done_i_1_n_0));
  FDCE done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_fp),
        .D(done_i_1_n_0),
        .Q(done));
  LUT2 #(
    .INIT(4'h8)) 
    \error_n_1[31]_i_1 
       (.I0(state[3]),
        .I1(state[0]),
        .O(error_n_1));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[0] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[0]),
        .Q(\error_n_1_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[10] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[10]),
        .Q(\error_n_1_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[11] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[11]),
        .Q(\error_n_1_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[12] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[12]),
        .Q(\error_n_1_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[13] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[13]),
        .Q(\error_n_1_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[14] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[14]),
        .Q(\error_n_1_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[15] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[15]),
        .Q(\error_n_1_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[16] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[16]),
        .Q(\error_n_1_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[17] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[17]),
        .Q(\error_n_1_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[18] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[18]),
        .Q(\error_n_1_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[19] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[19]),
        .Q(\error_n_1_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[1] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[1]),
        .Q(\error_n_1_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[20] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[20]),
        .Q(\error_n_1_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[21] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[21]),
        .Q(\error_n_1_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[22] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[22]),
        .Q(\error_n_1_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[23] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[23]),
        .Q(\error_n_1_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[24] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[24]),
        .Q(\error_n_1_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[25] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[25]),
        .Q(\error_n_1_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[26] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[26]),
        .Q(\error_n_1_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[27] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[27]),
        .Q(\error_n_1_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[28] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[28]),
        .Q(\error_n_1_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[29] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[29]),
        .Q(\error_n_1_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[2] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[2]),
        .Q(\error_n_1_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[30] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[30]),
        .Q(\error_n_1_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[31] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[31]),
        .Q(\error_n_1_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[3] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[3]),
        .Q(\error_n_1_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[4] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[4]),
        .Q(\error_n_1_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[5] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[5]),
        .Q(\error_n_1_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[6] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[6]),
        .Q(\error_n_1_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[7] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[7]),
        .Q(\error_n_1_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[8] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[8]),
        .Q(\error_n_1_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \error_n_1_reg[9] 
       (.C(clk),
        .CE(error_n_1),
        .CLR(rst_fp),
        .D(error_n__0[9]),
        .Q(\error_n_1_reg_n_0_[9] ));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[0] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[0]),
        .Q(error_n__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[10] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[10]),
        .Q(error_n__0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[11] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[11]),
        .Q(error_n__0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[12] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[12]),
        .Q(error_n__0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[13] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[13]),
        .Q(error_n__0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[14] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[14]),
        .Q(error_n__0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[15] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[15]),
        .Q(error_n__0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[16] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[16]),
        .Q(error_n__0[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[17] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[17]),
        .Q(error_n__0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[18] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[18]),
        .Q(error_n__0[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[19] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[19]),
        .Q(error_n__0[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[1] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[1]),
        .Q(error_n__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[20] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[20]),
        .Q(error_n__0[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[21] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[21]),
        .Q(error_n__0[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[22] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[22]),
        .Q(error_n__0[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[23] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[23]),
        .Q(error_n__0[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[24] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[24]),
        .Q(error_n__0[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[25] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[25]),
        .Q(error_n__0[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[26] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[26]),
        .Q(error_n__0[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[27] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[27]),
        .Q(error_n__0[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[28] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[28]),
        .Q(error_n__0[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[29] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[29]),
        .Q(error_n__0[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[2] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[2]),
        .Q(error_n__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[30] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[30]),
        .Q(error_n__0[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[31] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[31]),
        .Q(error_n__0[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[3] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[3]),
        .Q(error_n__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[4] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[4]),
        .Q(error_n__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[5] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[5]),
        .Q(error_n__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[6] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[6]),
        .Q(error_n__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[7] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[7]),
        .Q(error_n__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[8] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[8]),
        .Q(error_n__0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_n_reg[9] 
       (.C(clk),
        .CE(error_n0),
        .D(fp_result[9]),
        .Q(error_n__0[9]),
        .R(1'b0));
  FDRE \fp_A_reg[0] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[0]),
        .Q(A[0]),
        .R(1'b0));
  FDRE \fp_A_reg[10] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[10]),
        .Q(A[10]),
        .R(1'b0));
  FDRE \fp_A_reg[11] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[11]),
        .Q(A[11]),
        .R(1'b0));
  FDRE \fp_A_reg[12] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[12]),
        .Q(A[12]),
        .R(1'b0));
  FDRE \fp_A_reg[13] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[13]),
        .Q(A[13]),
        .R(1'b0));
  FDRE \fp_A_reg[14] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[14]),
        .Q(A[14]),
        .R(1'b0));
  FDRE \fp_A_reg[15] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[15]),
        .Q(A[15]),
        .R(1'b0));
  FDRE \fp_A_reg[16] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[16]),
        .Q(A[16]),
        .R(1'b0));
  FDRE \fp_A_reg[17] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[17]),
        .Q(A[17]),
        .R(1'b0));
  FDRE \fp_A_reg[18] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[18]),
        .Q(A[18]),
        .R(1'b0));
  FDRE \fp_A_reg[19] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[19]),
        .Q(A[19]),
        .R(1'b0));
  FDRE \fp_A_reg[1] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[1]),
        .Q(A[1]),
        .R(1'b0));
  FDRE \fp_A_reg[20] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[20]),
        .Q(A[20]),
        .R(1'b0));
  FDRE \fp_A_reg[21] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[21]),
        .Q(A[21]),
        .R(1'b0));
  FDRE \fp_A_reg[22] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[22]),
        .Q(A[22]),
        .R(1'b0));
  FDRE \fp_A_reg[23] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[23]),
        .Q(A[23]),
        .R(1'b0));
  FDRE \fp_A_reg[24] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[24]),
        .Q(A[24]),
        .R(1'b0));
  FDRE \fp_A_reg[25] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[25]),
        .Q(A[25]),
        .R(1'b0));
  FDRE \fp_A_reg[26] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[26]),
        .Q(A[26]),
        .R(1'b0));
  FDRE \fp_A_reg[27] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[27]),
        .Q(A[27]),
        .R(1'b0));
  FDRE \fp_A_reg[28] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[28]),
        .Q(A[28]),
        .R(1'b0));
  FDRE \fp_A_reg[29] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[29]),
        .Q(A[29]),
        .R(1'b0));
  FDRE \fp_A_reg[2] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[2]),
        .Q(A[2]),
        .R(1'b0));
  FDRE \fp_A_reg[30] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[30]),
        .Q(A[30]),
        .R(1'b0));
  FDRE \fp_A_reg[31] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[31]),
        .Q(A[31]),
        .R(1'b0));
  FDRE \fp_A_reg[3] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[3]),
        .Q(A[3]),
        .R(1'b0));
  FDRE \fp_A_reg[4] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[4]),
        .Q(A[4]),
        .R(1'b0));
  FDRE \fp_A_reg[5] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[5]),
        .Q(A[5]),
        .R(1'b0));
  FDRE \fp_A_reg[6] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[6]),
        .Q(A[6]),
        .R(1'b0));
  FDRE \fp_A_reg[7] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[7]),
        .Q(A[7]),
        .R(1'b0));
  FDRE \fp_A_reg[8] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[8]),
        .Q(A[8]),
        .R(1'b0));
  FDRE \fp_A_reg[9] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_A[9]),
        .Q(A[9]),
        .R(1'b0));
  FDRE \fp_B_reg[0] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[0]),
        .Q(B[0]),
        .R(1'b0));
  FDRE \fp_B_reg[10] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[10]),
        .Q(B[10]),
        .R(1'b0));
  FDRE \fp_B_reg[11] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[11]),
        .Q(B[11]),
        .R(1'b0));
  FDRE \fp_B_reg[12] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[12]),
        .Q(B[12]),
        .R(1'b0));
  FDRE \fp_B_reg[13] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[13]),
        .Q(B[13]),
        .R(1'b0));
  FDRE \fp_B_reg[14] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[14]),
        .Q(B[14]),
        .R(1'b0));
  FDRE \fp_B_reg[15] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[15]),
        .Q(B[15]),
        .R(1'b0));
  FDRE \fp_B_reg[16] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[16]),
        .Q(B[16]),
        .R(1'b0));
  FDRE \fp_B_reg[17] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[17]),
        .Q(B[17]),
        .R(1'b0));
  FDRE \fp_B_reg[18] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[18]),
        .Q(B[18]),
        .R(1'b0));
  FDRE \fp_B_reg[19] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[19]),
        .Q(B[19]),
        .R(1'b0));
  FDRE \fp_B_reg[1] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[1]),
        .Q(B[1]),
        .R(1'b0));
  FDRE \fp_B_reg[20] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[20]),
        .Q(B[20]),
        .R(1'b0));
  FDRE \fp_B_reg[21] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[21]),
        .Q(B[21]),
        .R(1'b0));
  FDRE \fp_B_reg[22] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[22]),
        .Q(B[22]),
        .R(1'b0));
  FDRE \fp_B_reg[23] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[23]),
        .Q(B[23]),
        .R(1'b0));
  FDRE \fp_B_reg[24] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[24]),
        .Q(B[24]),
        .R(1'b0));
  FDRE \fp_B_reg[25] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[25]),
        .Q(B[25]),
        .R(1'b0));
  FDRE \fp_B_reg[26] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[26]),
        .Q(B[26]),
        .R(1'b0));
  FDRE \fp_B_reg[27] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[27]),
        .Q(B[27]),
        .R(1'b0));
  FDRE \fp_B_reg[28] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[28]),
        .Q(B[28]),
        .R(1'b0));
  FDRE \fp_B_reg[29] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[29]),
        .Q(B[29]),
        .R(1'b0));
  FDRE \fp_B_reg[2] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[2]),
        .Q(B[2]),
        .R(1'b0));
  FDRE \fp_B_reg[30] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[30]),
        .Q(B[30]),
        .R(1'b0));
  FDRE \fp_B_reg[31] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[31]),
        .Q(B[31]),
        .R(1'b0));
  FDRE \fp_B_reg[3] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[3]),
        .Q(B[3]),
        .R(1'b0));
  FDRE \fp_B_reg[4] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[4]),
        .Q(B[4]),
        .R(1'b0));
  FDRE \fp_B_reg[5] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[5]),
        .Q(B[5]),
        .R(1'b0));
  FDRE \fp_B_reg[6] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[6]),
        .Q(B[6]),
        .R(1'b0));
  FDRE \fp_B_reg[7] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[7]),
        .Q(B[7]),
        .R(1'b0));
  FDRE \fp_B_reg[8] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[8]),
        .Q(B[8]),
        .R(1'b0));
  FDRE \fp_B_reg[9] 
       (.C(clk),
        .CE(MUL_UNIT_n_0),
        .D(fp_B[9]),
        .Q(B[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    fp_sub_i_2
       (.I0(state[0]),
        .I1(state[3]),
        .O(fp_sub_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fp_sub_reg
       (.C(clk),
        .CE(1'b1),
        .D(MUL_UNIT_n_45),
        .Q(fp_sub_reg_n_0),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[0] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[0]),
        .Q(\integral_sum_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[10] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[10]),
        .Q(\integral_sum_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[11] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[11]),
        .Q(\integral_sum_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[12] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[12]),
        .Q(\integral_sum_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[13] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[13]),
        .Q(\integral_sum_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[14] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[14]),
        .Q(\integral_sum_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[15] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[15]),
        .Q(\integral_sum_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[16] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[16]),
        .Q(\integral_sum_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[17] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[17]),
        .Q(\integral_sum_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[18] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[18]),
        .Q(\integral_sum_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[19] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[19]),
        .Q(\integral_sum_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[1] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[1]),
        .Q(\integral_sum_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[20] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[20]),
        .Q(\integral_sum_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[21] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[21]),
        .Q(\integral_sum_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[22] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[22]),
        .Q(\integral_sum_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[23] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[23]),
        .Q(\integral_sum_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[24] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[24]),
        .Q(\integral_sum_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[25] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[25]),
        .Q(\integral_sum_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[26] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[26]),
        .Q(\integral_sum_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[27] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[27]),
        .Q(\integral_sum_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[28] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[28]),
        .Q(\integral_sum_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[29] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[29]),
        .Q(\integral_sum_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[2] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[2]),
        .Q(\integral_sum_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[30] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[30]),
        .Q(\integral_sum_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[31] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[31]),
        .Q(\integral_sum_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[3] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[3]),
        .Q(\integral_sum_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[4] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[4]),
        .Q(\integral_sum_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[5] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[5]),
        .Q(\integral_sum_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[6] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[6]),
        .Q(\integral_sum_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[7] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[7]),
        .Q(\integral_sum_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[8] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[8]),
        .Q(\integral_sum_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \integral_sum_reg[9] 
       (.C(clk),
        .CE(integral_sum),
        .CLR(rst_fp),
        .D(fp_result[9]),
        .Q(\integral_sum_reg_n_0_[9] ));
  LUT1 #(
    .INIT(2'h1)) 
    mul_start_i_1
       (.I0(rst_fp),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    mul_start_reg
       (.C(clk),
        .CE(p_0_in),
        .D(mul_start),
        .Q(mul_start_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    start_f2i_i_1
       (.I0(start_f2i_reg),
        .I1(done),
        .O(start_f2i));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[0] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[0]),
        .Q(temp_error_diff__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[10] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[10]),
        .Q(temp_error_diff__0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[11] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[11]),
        .Q(temp_error_diff__0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[12] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[12]),
        .Q(temp_error_diff__0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[13] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[13]),
        .Q(temp_error_diff__0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[14] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[14]),
        .Q(temp_error_diff__0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[15] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[15]),
        .Q(temp_error_diff__0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[16] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[16]),
        .Q(temp_error_diff__0[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[17] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[17]),
        .Q(temp_error_diff__0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[18] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[18]),
        .Q(temp_error_diff__0[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[19] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[19]),
        .Q(temp_error_diff__0[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[1] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[1]),
        .Q(temp_error_diff__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[20] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[20]),
        .Q(temp_error_diff__0[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[21] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[21]),
        .Q(temp_error_diff__0[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[22] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[22]),
        .Q(temp_error_diff__0[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[23] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[23]),
        .Q(temp_error_diff__0[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[24] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[24]),
        .Q(temp_error_diff__0[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[25] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[25]),
        .Q(temp_error_diff__0[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[26] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[26]),
        .Q(temp_error_diff__0[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[27] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[27]),
        .Q(temp_error_diff__0[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[28] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[28]),
        .Q(temp_error_diff__0[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[29] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[29]),
        .Q(temp_error_diff__0[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[2] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[2]),
        .Q(temp_error_diff__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[30] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[30]),
        .Q(temp_error_diff__0[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[31] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[31]),
        .Q(temp_error_diff__0[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[3] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[3]),
        .Q(temp_error_diff__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[4] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[4]),
        .Q(temp_error_diff__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[5] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[5]),
        .Q(temp_error_diff__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[6] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[6]),
        .Q(temp_error_diff__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[7] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[7]),
        .Q(temp_error_diff__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[8] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[8]),
        .Q(temp_error_diff__0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_error_diff_reg[9] 
       (.C(clk),
        .CE(temp_error_diff0),
        .D(fp_result[9]),
        .Q(temp_error_diff__0[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \temp_int_v[0]_i_1 
       (.I0(\temp_int_v[0]_i_2_n_0 ),
        .I1(\temp_int_v[0]_i_3_n_0 ),
        .I2(\temp_int_v[0]_i_4_n_0 ),
        .I3(\temp_int_v[0]_i_5_n_0 ),
        .I4(\temp_int_v[0]_i_6_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h8800F80088008800)) 
    \temp_int_v[0]_i_2 
       (.I0(\temp_int_v[0]_i_3_n_0 ),
        .I1(u_val_fp[19]),
        .I2(\temp_int_v[0]_i_7_n_0 ),
        .I3(\temp_int_v[4]_i_4_n_0 ),
        .I4(\temp_int_v_reg[0]_0 ),
        .I5(\temp_int_v_reg[0] [3]),
        .O(\temp_int_v[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \temp_int_v[0]_i_3 
       (.I0(u_val_fp[25]),
        .I1(\temp_int_v[11]_i_4_n_0 ),
        .I2(u_val_fp[26]),
        .O(\temp_int_v[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \temp_int_v[0]_i_4 
       (.I0(u_val_fp[20]),
        .I1(u_val_fp[24]),
        .I2(u_val_fp[21]),
        .I3(u_val_fp[23]),
        .I4(u_val_fp[22]),
        .O(\temp_int_v[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \temp_int_v[0]_i_5 
       (.I0(\control_output_u_reg[23]_2 ),
        .I1(u_val_fp[15]),
        .I2(\temp_int_v[6]_i_3_n_0 ),
        .I3(u_val_fp[14]),
        .I4(u_val_fp[13]),
        .I5(\temp_int_v[10]_i_2_n_0 ),
        .O(\temp_int_v[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \temp_int_v[0]_i_6 
       (.I0(\temp_int_v[0]_i_8_n_0 ),
        .I1(\control_output_u_reg[23]_0 ),
        .I2(u_val_fp[12]),
        .I3(\temp_int_v_reg[1] ),
        .I4(pot_val[0]),
        .I5(\temp_int_v_reg[0] [0]),
        .O(\temp_int_v[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \temp_int_v[0]_i_7 
       (.I0(u_val_fp[27]),
        .I1(u_val_fp[28]),
        .I2(u_val_fp[25]),
        .I3(u_val_fp[26]),
        .I4(u_val_fp[30]),
        .I5(u_val_fp[29]),
        .O(\temp_int_v[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00CC0000F0AA0000)) 
    \temp_int_v[0]_i_8 
       (.I0(u_val_fp[18]),
        .I1(u_val_fp[16]),
        .I2(u_val_fp[17]),
        .I3(u_val_fp[23]),
        .I4(\temp_int_v[8]_i_4_n_0 ),
        .I5(u_val_fp[24]),
        .O(\temp_int_v[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \temp_int_v[10]_i_1 
       (.I0(\control_output_u_reg[23]_0 ),
        .I1(u_val_fp[22]),
        .I2(pot_val[8]),
        .I3(\temp_int_v_reg[0] [0]),
        .I4(\temp_int_v[10]_i_2_n_0 ),
        .I5(\temp_int_v_reg[1] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \temp_int_v[10]_i_2 
       (.I0(u_val_fp[26]),
        .I1(\temp_int_v[11]_i_4_n_0 ),
        .I2(u_val_fp[25]),
        .I3(u_val_fp[24]),
        .I4(u_val_fp[23]),
        .O(\temp_int_v[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \temp_int_v[11]_i_3 
       (.I0(u_val_fp[23]),
        .I1(u_val_fp[24]),
        .I2(u_val_fp[26]),
        .I3(\temp_int_v[11]_i_4_n_0 ),
        .I4(u_val_fp[25]),
        .O(\control_output_u_reg[23]_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \temp_int_v[11]_i_4 
       (.I0(u_val_fp[27]),
        .I1(u_val_fp[28]),
        .I2(u_val_fp[30]),
        .I3(u_val_fp[29]),
        .I4(\temp_int_v_reg[0]_0 ),
        .I5(\temp_int_v_reg[0] [3]),
        .O(\temp_int_v[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \temp_int_v[1]_i_1 
       (.I0(\temp_int_v[1]_i_2_n_0 ),
        .I1(\temp_int_v[1]_i_3_n_0 ),
        .I2(\temp_int_v_reg[1] ),
        .I3(\temp_int_v[1]_i_4_n_0 ),
        .I4(u_val_fp[18]),
        .I5(\temp_int_v[6]_i_4_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \temp_int_v[1]_i_2 
       (.I0(\temp_int_v[2]_i_4_n_0 ),
        .I1(u_val_fp[17]),
        .I2(\control_output_u_reg[23]_2 ),
        .I3(u_val_fp[16]),
        .I4(u_val_fp[14]),
        .I5(\temp_int_v[10]_i_2_n_0 ),
        .O(\temp_int_v[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \temp_int_v[1]_i_3 
       (.I0(\control_output_u_reg[23]_0 ),
        .I1(u_val_fp[13]),
        .I2(pot_val[1]),
        .I3(\temp_int_v_reg[0] [0]),
        .I4(\temp_int_v[3]_i_6_n_0 ),
        .I5(\temp_int_v[1]_i_5_n_0 ),
        .O(\temp_int_v[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0A0E000C0A0E0)) 
    \temp_int_v[1]_i_4 
       (.I0(u_val_fp[21]),
        .I1(u_val_fp[22]),
        .I2(\temp_int_v[0]_i_3_n_0 ),
        .I3(u_val_fp[24]),
        .I4(u_val_fp[23]),
        .I5(u_val_fp[20]),
        .O(\temp_int_v[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \temp_int_v[1]_i_5 
       (.I0(u_val_fp[23]),
        .I1(u_val_fp[24]),
        .O(\temp_int_v[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \temp_int_v[2]_i_1 
       (.I0(\control_output_u_reg[23]_0 ),
        .I1(u_val_fp[14]),
        .I2(pot_val[2]),
        .I3(\temp_int_v_reg[0] [0]),
        .I4(\temp_int_v[2]_i_2_n_0 ),
        .I5(\temp_int_v[2]_i_3_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \temp_int_v[2]_i_2 
       (.I0(\temp_int_v[2]_i_4_n_0 ),
        .I1(u_val_fp[18]),
        .I2(\control_output_u_reg[23]_2 ),
        .I3(u_val_fp[17]),
        .I4(u_val_fp[16]),
        .I5(\temp_int_v[6]_i_3_n_0 ),
        .O(\temp_int_v[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEEAAFAAAEEAAAA)) 
    \temp_int_v[2]_i_3 
       (.I0(\temp_int_v[2]_i_5_n_0 ),
        .I1(\temp_int_v[3]_i_6_n_0 ),
        .I2(u_val_fp[20]),
        .I3(u_val_fp[24]),
        .I4(u_val_fp[23]),
        .I5(\temp_int_v[8]_i_4_n_0 ),
        .O(\temp_int_v[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \temp_int_v[2]_i_4 
       (.I0(u_val_fp[23]),
        .I1(u_val_fp[24]),
        .I2(\temp_int_v[8]_i_4_n_0 ),
        .O(\temp_int_v[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAAAAAEAAAEAAA)) 
    \temp_int_v[2]_i_5 
       (.I0(\temp_int_v_reg[1] ),
        .I1(u_val_fp[22]),
        .I2(u_val_fp[24]),
        .I3(\temp_int_v[0]_i_3_n_0 ),
        .I4(u_val_fp[21]),
        .I5(u_val_fp[23]),
        .O(\temp_int_v[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \temp_int_v[3]_i_1 
       (.I0(\temp_int_v[3]_i_2_n_0 ),
        .I1(\temp_int_v[3]_i_3_n_0 ),
        .I2(pot_val[3]),
        .I3(\temp_int_v_reg[0] [0]),
        .I4(\temp_int_v[3]_i_4_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \temp_int_v[3]_i_2 
       (.I0(\temp_int_v_reg[1] ),
        .I1(u_val_fp[24]),
        .I2(u_val_fp[22]),
        .I3(\temp_int_v[0]_i_3_n_0 ),
        .I4(u_val_fp[21]),
        .I5(\temp_int_v[5]_i_4_n_0 ),
        .O(\temp_int_v[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC840C840C840)) 
    \temp_int_v[3]_i_3 
       (.I0(u_val_fp[24]),
        .I1(\temp_int_v[3]_i_5_n_0 ),
        .I2(u_val_fp[20]),
        .I3(u_val_fp[18]),
        .I4(u_val_fp[17]),
        .I5(\temp_int_v[6]_i_3_n_0 ),
        .O(\temp_int_v[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hFF202020)) 
    \temp_int_v[3]_i_4 
       (.I0(u_val_fp[24]),
        .I1(u_val_fp[23]),
        .I2(\temp_int_v[3]_i_6_n_0 ),
        .I3(u_val_fp[16]),
        .I4(\temp_int_v[10]_i_2_n_0 ),
        .O(\temp_int_v[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_int_v[3]_i_5 
       (.I0(\temp_int_v[8]_i_4_n_0 ),
        .I1(u_val_fp[23]),
        .O(\temp_int_v[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h20F02030)) 
    \temp_int_v[3]_i_6 
       (.I0(u_val_fp[15]),
        .I1(u_val_fp[25]),
        .I2(\temp_int_v[11]_i_4_n_0 ),
        .I3(u_val_fp[26]),
        .I4(u_val_fp[19]),
        .O(\temp_int_v[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \temp_int_v[4]_i_1 
       (.I0(\temp_int_v_reg[0] [1]),
        .I1(\temp_int_v_reg[0] [2]),
        .I2(\temp_int_v[4]_i_2_n_0 ),
        .I3(u_val_fp[18]),
        .I4(\temp_int_v[6]_i_3_n_0 ),
        .I5(\temp_int_v[4]_i_3_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0E000F000A000000)) 
    \temp_int_v[4]_i_2 
       (.I0(\temp_int_v[0]_i_4_n_0 ),
        .I1(u_val_fp[19]),
        .I2(u_val_fp[26]),
        .I3(\temp_int_v[11]_i_4_n_0 ),
        .I4(u_val_fp[25]),
        .I5(\temp_int_v[4]_i_4_n_0 ),
        .O(\temp_int_v[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \temp_int_v[4]_i_3 
       (.I0(\temp_int_v[10]_i_2_n_0 ),
        .I1(u_val_fp[17]),
        .I2(\control_output_u_reg[23]_0 ),
        .I3(u_val_fp[16]),
        .I4(\temp_int_v_reg[0] [0]),
        .I5(pot_val[4]),
        .O(\temp_int_v[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_int_v[4]_i_4 
       (.I0(u_val_fp[23]),
        .I1(u_val_fp[24]),
        .O(\temp_int_v[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \temp_int_v[5]_i_1 
       (.I0(\temp_int_v[5]_i_2_n_0 ),
        .I1(u_val_fp[19]),
        .I2(\temp_int_v[6]_i_3_n_0 ),
        .I3(\temp_int_v[5]_i_3_n_0 ),
        .I4(\temp_int_v[5]_i_4_n_0 ),
        .I5(\temp_int_v_reg[1] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hF0AA0000CCEE0000)) 
    \temp_int_v[5]_i_2 
       (.I0(u_val_fp[21]),
        .I1(u_val_fp[22]),
        .I2(u_val_fp[20]),
        .I3(u_val_fp[23]),
        .I4(\temp_int_v[8]_i_4_n_0 ),
        .I5(u_val_fp[24]),
        .O(\temp_int_v[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \temp_int_v[5]_i_3 
       (.I0(\temp_int_v[10]_i_2_n_0 ),
        .I1(u_val_fp[18]),
        .I2(\control_output_u_reg[23]_0 ),
        .I3(u_val_fp[17]),
        .I4(\temp_int_v_reg[0] [0]),
        .I5(pot_val[5]),
        .O(\temp_int_v[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \temp_int_v[5]_i_4 
       (.I0(u_val_fp[24]),
        .I1(u_val_fp[23]),
        .I2(\temp_int_v[8]_i_4_n_0 ),
        .O(\temp_int_v[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \temp_int_v[6]_i_1 
       (.I0(\temp_int_v[6]_i_2_n_0 ),
        .I1(u_val_fp[20]),
        .I2(\temp_int_v[6]_i_3_n_0 ),
        .I3(\temp_int_v_reg[1] ),
        .I4(\temp_int_v[6]_i_4_n_0 ),
        .I5(\temp_int_v[6]_i_5_n_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hACA00000)) 
    \temp_int_v[6]_i_2 
       (.I0(u_val_fp[21]),
        .I1(u_val_fp[22]),
        .I2(u_val_fp[23]),
        .I3(u_val_fp[24]),
        .I4(\temp_int_v[8]_i_4_n_0 ),
        .O(\temp_int_v[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \temp_int_v[6]_i_3 
       (.I0(u_val_fp[26]),
        .I1(\temp_int_v[11]_i_4_n_0 ),
        .I2(u_val_fp[25]),
        .I3(u_val_fp[24]),
        .I4(u_val_fp[23]),
        .O(\temp_int_v[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \temp_int_v[6]_i_4 
       (.I0(u_val_fp[23]),
        .I1(\temp_int_v[8]_i_4_n_0 ),
        .I2(u_val_fp[24]),
        .O(\temp_int_v[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \temp_int_v[6]_i_5 
       (.I0(\temp_int_v[10]_i_2_n_0 ),
        .I1(u_val_fp[19]),
        .I2(\control_output_u_reg[23]_0 ),
        .I3(u_val_fp[18]),
        .I4(\temp_int_v_reg[0] [0]),
        .I5(pot_val[6]),
        .O(\temp_int_v[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC040C040C040)) 
    \temp_int_v[7]_i_2 
       (.I0(u_val_fp[23]),
        .I1(u_val_fp[24]),
        .I2(\temp_int_v[8]_i_4_n_0 ),
        .I3(u_val_fp[22]),
        .I4(u_val_fp[21]),
        .I5(\temp_int_v[6]_i_3_n_0 ),
        .O(\control_output_u_reg[23]_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \temp_int_v[7]_i_3 
       (.I0(\temp_int_v[10]_i_2_n_0 ),
        .I1(u_val_fp[20]),
        .I2(\control_output_u_reg[23]_0 ),
        .I3(u_val_fp[19]),
        .I4(\temp_int_v_reg[0] [0]),
        .I5(pot_val[7]),
        .O(\control_output_u_reg[20]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \temp_int_v[8]_i_2 
       (.I0(u_val_fp[23]),
        .I1(\temp_int_v[8]_i_4_n_0 ),
        .I2(u_val_fp[24]),
        .O(\control_output_u_reg[23]_2 ));
  LUT6 #(
    .INIT(64'h0C008C8C0C008080)) 
    \temp_int_v[8]_i_3 
       (.I0(u_val_fp[20]),
        .I1(\temp_int_v[9]_i_3_n_0 ),
        .I2(u_val_fp[24]),
        .I3(u_val_fp[21]),
        .I4(u_val_fp[23]),
        .I5(u_val_fp[22]),
        .O(\control_output_u_reg[20]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \temp_int_v[8]_i_4 
       (.I0(u_val_fp[26]),
        .I1(\temp_int_v[11]_i_4_n_0 ),
        .I2(u_val_fp[25]),
        .O(\temp_int_v[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABAAAFAFABABA)) 
    \temp_int_v[9]_i_1 
       (.I0(\temp_int_v_reg[9] ),
        .I1(u_val_fp[24]),
        .I2(\temp_int_v[9]_i_3_n_0 ),
        .I3(u_val_fp[22]),
        .I4(u_val_fp[21]),
        .I5(u_val_fp[23]),
        .O(D[7]));
  LUT3 #(
    .INIT(8'h40)) 
    \temp_int_v[9]_i_3 
       (.I0(u_val_fp[25]),
        .I1(\temp_int_v[11]_i_4_n_0 ),
        .I2(u_val_fp[26]),
        .O(\temp_int_v[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[0] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[0]),
        .Q(term_D__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[10] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[10]),
        .Q(term_D__0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[11] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[11]),
        .Q(term_D__0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[12] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[12]),
        .Q(term_D__0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[13] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[13]),
        .Q(term_D__0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[14] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[14]),
        .Q(term_D__0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[15] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[15]),
        .Q(term_D__0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[16] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[16]),
        .Q(term_D__0[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[17] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[17]),
        .Q(term_D__0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[18] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[18]),
        .Q(term_D__0[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[19] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[19]),
        .Q(term_D__0[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[1] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[1]),
        .Q(term_D__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[20] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[20]),
        .Q(term_D__0[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[21] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[21]),
        .Q(term_D__0[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[22] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[22]),
        .Q(term_D__0[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[23] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[23]),
        .Q(term_D__0[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[24] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[24]),
        .Q(term_D__0[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[25] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[25]),
        .Q(term_D__0[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[26] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[26]),
        .Q(term_D__0[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[27] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[27]),
        .Q(term_D__0[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[28] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[28]),
        .Q(term_D__0[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[29] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[29]),
        .Q(term_D__0[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[2] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[2]),
        .Q(term_D__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[30] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[30]),
        .Q(term_D__0[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[31] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[31]),
        .Q(term_D__0[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[3] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[3]),
        .Q(term_D__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[4] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[4]),
        .Q(term_D__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[5] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[5]),
        .Q(term_D__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[6] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[6]),
        .Q(term_D__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[7] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[7]),
        .Q(term_D__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[8] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[8]),
        .Q(term_D__0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_D_reg[9] 
       (.C(clk),
        .CE(term_D0),
        .D(fp_result[9]),
        .Q(term_D__0[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[0] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[0]),
        .Q(term_I[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[10] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[10]),
        .Q(term_I[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[11] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[11]),
        .Q(term_I[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[12] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[12]),
        .Q(term_I[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[13] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[13]),
        .Q(term_I[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[14] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[14]),
        .Q(term_I[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[15] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[15]),
        .Q(term_I[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[16] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[16]),
        .Q(term_I[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[17] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[17]),
        .Q(term_I[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[18] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[18]),
        .Q(term_I[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[19] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[19]),
        .Q(term_I[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[1] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[1]),
        .Q(term_I[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[20] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[20]),
        .Q(term_I[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[21] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[21]),
        .Q(term_I[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[22] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[22]),
        .Q(term_I[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[23] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[23]),
        .Q(term_I[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[24] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[24]),
        .Q(term_I[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[25] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[25]),
        .Q(term_I[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[26] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[26]),
        .Q(term_I[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[27] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[27]),
        .Q(term_I[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[28] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[28]),
        .Q(term_I[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[29] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[29]),
        .Q(term_I[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[2] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[2]),
        .Q(term_I[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[30] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[30]),
        .Q(term_I[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[31] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[31]),
        .Q(term_I[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[3] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[3]),
        .Q(term_I[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[4] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[4]),
        .Q(term_I[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[5] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[5]),
        .Q(term_I[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[6] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[6]),
        .Q(term_I[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[7] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[7]),
        .Q(term_I[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[8] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[8]),
        .Q(term_I[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_I_reg[9] 
       (.C(clk),
        .CE(term_I0),
        .D(fp_result[9]),
        .Q(term_I[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[0] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[0]),
        .Q(term_P__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[10] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[10]),
        .Q(term_P__0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[11] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[11]),
        .Q(term_P__0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[12] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[12]),
        .Q(term_P__0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[13] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[13]),
        .Q(term_P__0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[14] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[14]),
        .Q(term_P__0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[15] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[15]),
        .Q(term_P__0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[16] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[16]),
        .Q(term_P__0[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[17] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[17]),
        .Q(term_P__0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[18] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[18]),
        .Q(term_P__0[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[19] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[19]),
        .Q(term_P__0[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[1] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[1]),
        .Q(term_P__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[20] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[20]),
        .Q(term_P__0[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[21] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[21]),
        .Q(term_P__0[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[22] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[22]),
        .Q(term_P__0[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[23] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[23]),
        .Q(term_P__0[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[24] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[24]),
        .Q(term_P__0[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[25] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[25]),
        .Q(term_P__0[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[26] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[26]),
        .Q(term_P__0[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[27] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[27]),
        .Q(term_P__0[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[28] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[28]),
        .Q(term_P__0[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[29] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[29]),
        .Q(term_P__0[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[2] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[2]),
        .Q(term_P__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[30] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[30]),
        .Q(term_P__0[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[31] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[31]),
        .Q(term_P__0[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[3] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[3]),
        .Q(term_P__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[4] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[4]),
        .Q(term_P__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[5] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[5]),
        .Q(term_P__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[6] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[6]),
        .Q(term_P__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[7] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[7]),
        .Q(term_P__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[8] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[8]),
        .Q(term_P__0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \term_P_reg[9] 
       (.C(clk),
        .CE(term_P0),
        .D(fp_result[9]),
        .Q(term_P__0[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "vm_add_sub" *) 
module design_1_pid_controller_0_0_vm_add_sub
   (add_done,
    D,
    E,
    \FSM_sequential_state_reg[2]_0 ,
    \FSM_sequential_state_reg[0]_0 ,
    start_pid_reg,
    mul_start,
    \FSM_sequential_state_reg[1]_0 ,
    done_reg_0,
    \FSM_sequential_state_reg[0]_1 ,
    \FSM_sequential_state_reg[1]_1 ,
    done_reg_1,
    UNCONN_OUT,
    fp_result,
    clk,
    Q,
    rst_fp,
    B_sgn_reg_0,
    \fp_A_reg[31] ,
    \error_n_reg[0] ,
    \FSM_sequential_state_reg[0]_2 ,
    \FSM_sequential_state_reg[0]_3 ,
    \FSM_sequential_state_reg[0]_4 ,
    \fp_A_reg[25] ,
    \fp_A_reg[26] ,
    \fp_B_reg[31] ,
    \fp_B_reg[31]_0 ,
    \fp_B_reg[31]_1 ,
    \fp_B_reg[31]_2 ,
    \fp_B_reg[31]_3 ,
    \fp_B_reg[31]_4 ,
    \fp_B_reg[30] ,
    \fp_B_reg[29] ,
    \fp_B_reg[28] ,
    \fp_B_reg[27] ,
    \fp_B_reg[26] ,
    \fp_B_reg[25] ,
    \fp_B_reg[24] ,
    \fp_B_reg[23] ,
    \fp_B_reg[22] ,
    \fp_B_reg[21] ,
    \fp_B_reg[20] ,
    \fp_B_reg[19] ,
    \fp_B_reg[18] ,
    \fp_B_reg[17] ,
    \fp_B_reg[16] ,
    \fp_B_reg[15] ,
    \fp_B_reg[14] ,
    \fp_B_reg[13] ,
    \fp_B_reg[12] ,
    \fp_B_reg[11] ,
    \fp_B_reg[10] ,
    \fp_B_reg[9] ,
    \fp_B_reg[8] ,
    \fp_B_reg[7] ,
    \fp_B_reg[6] ,
    \fp_B_reg[5] ,
    \fp_B_reg[4] ,
    \fp_B_reg[3] ,
    \fp_B_reg[2] ,
    \fp_B_reg[1] ,
    \fp_B_reg[0] ,
    \fp_A_reg[31]_0 ,
    mul_done,
    \fp_A_reg[31]_1 ,
    B_sgn_reg_1,
    \FSM_sequential_state_reg[2]_1 );
  output add_done;
  output [26:0]D;
  output [0:0]E;
  output [0:0]\FSM_sequential_state_reg[2]_0 ;
  output [0:0]\FSM_sequential_state_reg[0]_0 ;
  output [0:0]start_pid_reg;
  output mul_start;
  output [0:0]\FSM_sequential_state_reg[1]_0 ;
  output [0:0]done_reg_0;
  output \FSM_sequential_state_reg[0]_1 ;
  output [31:0]\FSM_sequential_state_reg[1]_1 ;
  output done_reg_1;
  output [4:0]UNCONN_OUT;
  inout [26:0]fp_result;
  input clk;
  input [31:0]Q;
  input rst_fp;
  input [31:0]B_sgn_reg_0;
  input [31:0]\fp_A_reg[31] ;
  input [3:0]\error_n_reg[0] ;
  input \FSM_sequential_state_reg[0]_2 ;
  input \FSM_sequential_state_reg[0]_3 ;
  input \FSM_sequential_state_reg[0]_4 ;
  input \fp_A_reg[25] ;
  input \fp_A_reg[26] ;
  input [31:0]\fp_B_reg[31] ;
  input [31:0]\fp_B_reg[31]_0 ;
  input [29:0]\fp_B_reg[31]_1 ;
  input [31:0]\fp_B_reg[31]_2 ;
  input [31:0]\fp_B_reg[31]_3 ;
  input \fp_B_reg[31]_4 ;
  input \fp_B_reg[30] ;
  input \fp_B_reg[29] ;
  input \fp_B_reg[28] ;
  input \fp_B_reg[27] ;
  input \fp_B_reg[26] ;
  input \fp_B_reg[25] ;
  input \fp_B_reg[24] ;
  input \fp_B_reg[23] ;
  input \fp_B_reg[22] ;
  input \fp_B_reg[21] ;
  input \fp_B_reg[20] ;
  input \fp_B_reg[19] ;
  input \fp_B_reg[18] ;
  input \fp_B_reg[17] ;
  input \fp_B_reg[16] ;
  input \fp_B_reg[15] ;
  input \fp_B_reg[14] ;
  input \fp_B_reg[13] ;
  input \fp_B_reg[12] ;
  input \fp_B_reg[11] ;
  input \fp_B_reg[10] ;
  input \fp_B_reg[9] ;
  input \fp_B_reg[8] ;
  input \fp_B_reg[7] ;
  input \fp_B_reg[6] ;
  input \fp_B_reg[5] ;
  input \fp_B_reg[4] ;
  input \fp_B_reg[3] ;
  input \fp_B_reg[2] ;
  input \fp_B_reg[1] ;
  input \fp_B_reg[0] ;
  input [24:0]\fp_A_reg[31]_0 ;
  input mul_done;
  input [24:0]\fp_A_reg[31]_1 ;
  input B_sgn_reg_1;
  input \FSM_sequential_state_reg[2]_1 ;

  wire [7:0]A_exp_s;
  wire A_exp_s0;
  wire [26:0]A_mantissa_ext;
  wire A_mantissa_ext0;
  wire \A_mantissa_ext[0]_i_2_n_0 ;
  wire \A_mantissa_ext[0]_i_3_n_0 ;
  wire \A_mantissa_ext[0]_i_4_n_0 ;
  wire \A_mantissa_ext[10]_i_2_n_0 ;
  wire \A_mantissa_ext[10]_i_3_n_0 ;
  wire \A_mantissa_ext[10]_i_4_n_0 ;
  wire \A_mantissa_ext[11]_i_2_n_0 ;
  wire \A_mantissa_ext[11]_i_3_n_0 ;
  wire \A_mantissa_ext[11]_i_4_n_0 ;
  wire \A_mantissa_ext[12]_i_2_n_0 ;
  wire \A_mantissa_ext[12]_i_3_n_0 ;
  wire \A_mantissa_ext[12]_i_4_n_0 ;
  wire \A_mantissa_ext[13]_i_2_n_0 ;
  wire \A_mantissa_ext[13]_i_3_n_0 ;
  wire \A_mantissa_ext[13]_i_4_n_0 ;
  wire \A_mantissa_ext[14]_i_2_n_0 ;
  wire \A_mantissa_ext[14]_i_3_n_0 ;
  wire \A_mantissa_ext[14]_i_4_n_0 ;
  wire \A_mantissa_ext[15]_i_2_n_0 ;
  wire \A_mantissa_ext[15]_i_3_n_0 ;
  wire \A_mantissa_ext[16]_i_2_n_0 ;
  wire \A_mantissa_ext[16]_i_3_n_0 ;
  wire \A_mantissa_ext[17]_i_2_n_0 ;
  wire \A_mantissa_ext[17]_i_3_n_0 ;
  wire \A_mantissa_ext[18]_i_2_n_0 ;
  wire \A_mantissa_ext[18]_i_3_n_0 ;
  wire \A_mantissa_ext[19]_i_2_n_0 ;
  wire \A_mantissa_ext[19]_i_3_n_0 ;
  wire \A_mantissa_ext[1]_i_2_n_0 ;
  wire \A_mantissa_ext[1]_i_3_n_0 ;
  wire \A_mantissa_ext[1]_i_4_n_0 ;
  wire \A_mantissa_ext[20]_i_2_n_0 ;
  wire \A_mantissa_ext[20]_i_3_n_0 ;
  wire \A_mantissa_ext[21]_i_2_n_0 ;
  wire \A_mantissa_ext[21]_i_3_n_0 ;
  wire \A_mantissa_ext[22]_i_2_n_0 ;
  wire \A_mantissa_ext[22]_i_3_n_0 ;
  wire \A_mantissa_ext[23]_i_2_n_0 ;
  wire \A_mantissa_ext[24]_i_2_n_0 ;
  wire \A_mantissa_ext[24]_i_3_n_0 ;
  wire \A_mantissa_ext[25]_i_2_n_0 ;
  wire \A_mantissa_ext[26]_i_3_n_0 ;
  wire \A_mantissa_ext[26]_i_4_n_0 ;
  wire \A_mantissa_ext[2]_i_2_n_0 ;
  wire \A_mantissa_ext[2]_i_3_n_0 ;
  wire \A_mantissa_ext[2]_i_4_n_0 ;
  wire \A_mantissa_ext[3]_i_2_n_0 ;
  wire \A_mantissa_ext[3]_i_4_n_0 ;
  wire \A_mantissa_ext[3]_i_5_n_0 ;
  wire \A_mantissa_ext[4]_i_2_n_0 ;
  wire \A_mantissa_ext[4]_i_3_n_0 ;
  wire \A_mantissa_ext[5]_i_2_n_0 ;
  wire \A_mantissa_ext[5]_i_3_n_0 ;
  wire \A_mantissa_ext[6]_i_2_n_0 ;
  wire \A_mantissa_ext[6]_i_3_n_0 ;
  wire \A_mantissa_ext[6]_i_4_n_0 ;
  wire \A_mantissa_ext[7]_i_2_n_0 ;
  wire \A_mantissa_ext[7]_i_3_n_0 ;
  wire \A_mantissa_ext[7]_i_4_n_0 ;
  wire \A_mantissa_ext[8]_i_2_n_0 ;
  wire \A_mantissa_ext[8]_i_3_n_0 ;
  wire \A_mantissa_ext[8]_i_4_n_0 ;
  wire \A_mantissa_ext[9]_i_2_n_0 ;
  wire \A_mantissa_ext[9]_i_3_n_0 ;
  wire \A_mantissa_ext[9]_i_4_n_0 ;
  wire \A_mantissa_ext_reg[3]_i_3_n_0 ;
  wire \A_mantissa_ext_reg_n_0_[0] ;
  wire \A_mantissa_ext_reg_n_0_[10] ;
  wire \A_mantissa_ext_reg_n_0_[11] ;
  wire \A_mantissa_ext_reg_n_0_[12] ;
  wire \A_mantissa_ext_reg_n_0_[13] ;
  wire \A_mantissa_ext_reg_n_0_[14] ;
  wire \A_mantissa_ext_reg_n_0_[15] ;
  wire \A_mantissa_ext_reg_n_0_[16] ;
  wire \A_mantissa_ext_reg_n_0_[17] ;
  wire \A_mantissa_ext_reg_n_0_[18] ;
  wire \A_mantissa_ext_reg_n_0_[19] ;
  wire \A_mantissa_ext_reg_n_0_[1] ;
  wire \A_mantissa_ext_reg_n_0_[20] ;
  wire \A_mantissa_ext_reg_n_0_[21] ;
  wire \A_mantissa_ext_reg_n_0_[22] ;
  wire \A_mantissa_ext_reg_n_0_[23] ;
  wire \A_mantissa_ext_reg_n_0_[24] ;
  wire \A_mantissa_ext_reg_n_0_[25] ;
  wire \A_mantissa_ext_reg_n_0_[26] ;
  wire \A_mantissa_ext_reg_n_0_[2] ;
  wire \A_mantissa_ext_reg_n_0_[3] ;
  wire \A_mantissa_ext_reg_n_0_[4] ;
  wire \A_mantissa_ext_reg_n_0_[5] ;
  wire \A_mantissa_ext_reg_n_0_[6] ;
  wire \A_mantissa_ext_reg_n_0_[7] ;
  wire \A_mantissa_ext_reg_n_0_[8] ;
  wire \A_mantissa_ext_reg_n_0_[9] ;
  wire A_sgn__0;
  wire [7:0]B_exp_s;
  wire [26:0]B_mantissa_ext;
  wire B_mantissa_ext0;
  wire \B_mantissa_ext[0]_i_2_n_0 ;
  wire \B_mantissa_ext[0]_i_3_n_0 ;
  wire \B_mantissa_ext[0]_i_4_n_0 ;
  wire \B_mantissa_ext[10]_i_2_n_0 ;
  wire \B_mantissa_ext[10]_i_3_n_0 ;
  wire \B_mantissa_ext[10]_i_4_n_0 ;
  wire \B_mantissa_ext[11]_i_2_n_0 ;
  wire \B_mantissa_ext[11]_i_3_n_0 ;
  wire \B_mantissa_ext[11]_i_4_n_0 ;
  wire \B_mantissa_ext[12]_i_2_n_0 ;
  wire \B_mantissa_ext[12]_i_3_n_0 ;
  wire \B_mantissa_ext[12]_i_4_n_0 ;
  wire \B_mantissa_ext[13]_i_2_n_0 ;
  wire \B_mantissa_ext[13]_i_3_n_0 ;
  wire \B_mantissa_ext[13]_i_4_n_0 ;
  wire \B_mantissa_ext[14]_i_2_n_0 ;
  wire \B_mantissa_ext[14]_i_3_n_0 ;
  wire \B_mantissa_ext[14]_i_4_n_0 ;
  wire \B_mantissa_ext[15]_i_2_n_0 ;
  wire \B_mantissa_ext[15]_i_3_n_0 ;
  wire \B_mantissa_ext[16]_i_2_n_0 ;
  wire \B_mantissa_ext[16]_i_3_n_0 ;
  wire \B_mantissa_ext[17]_i_2_n_0 ;
  wire \B_mantissa_ext[17]_i_3_n_0 ;
  wire \B_mantissa_ext[18]_i_2_n_0 ;
  wire \B_mantissa_ext[18]_i_3_n_0 ;
  wire \B_mantissa_ext[19]_i_2_n_0 ;
  wire \B_mantissa_ext[19]_i_3_n_0 ;
  wire \B_mantissa_ext[1]_i_2_n_0 ;
  wire \B_mantissa_ext[1]_i_3_n_0 ;
  wire \B_mantissa_ext[1]_i_4_n_0 ;
  wire \B_mantissa_ext[20]_i_2_n_0 ;
  wire \B_mantissa_ext[20]_i_3_n_0 ;
  wire \B_mantissa_ext[21]_i_2_n_0 ;
  wire \B_mantissa_ext[21]_i_3_n_0 ;
  wire \B_mantissa_ext[22]_i_2_n_0 ;
  wire \B_mantissa_ext[22]_i_3_n_0 ;
  wire \B_mantissa_ext[23]_i_2_n_0 ;
  wire \B_mantissa_ext[24]_i_2_n_0 ;
  wire \B_mantissa_ext[24]_i_3_n_0 ;
  wire \B_mantissa_ext[25]_i_2_n_0 ;
  wire \B_mantissa_ext[25]_i_3_n_0 ;
  wire \B_mantissa_ext[25]_i_4_n_0 ;
  wire \B_mantissa_ext[26]_i_3_n_0 ;
  wire \B_mantissa_ext[26]_i_4_n_0 ;
  wire \B_mantissa_ext[2]_i_2_n_0 ;
  wire \B_mantissa_ext[2]_i_3_n_0 ;
  wire \B_mantissa_ext[2]_i_4_n_0 ;
  wire \B_mantissa_ext[3]_i_2_n_0 ;
  wire \B_mantissa_ext[3]_i_3_n_0 ;
  wire \B_mantissa_ext[3]_i_4_n_0 ;
  wire \B_mantissa_ext[4]_i_2_n_0 ;
  wire \B_mantissa_ext[4]_i_3_n_0 ;
  wire \B_mantissa_ext[5]_i_2_n_0 ;
  wire \B_mantissa_ext[5]_i_3_n_0 ;
  wire \B_mantissa_ext[6]_i_2_n_0 ;
  wire \B_mantissa_ext[6]_i_3_n_0 ;
  wire \B_mantissa_ext[6]_i_4_n_0 ;
  wire \B_mantissa_ext[7]_i_2_n_0 ;
  wire \B_mantissa_ext[7]_i_3_n_0 ;
  wire \B_mantissa_ext[7]_i_4_n_0 ;
  wire \B_mantissa_ext[8]_i_2_n_0 ;
  wire \B_mantissa_ext[8]_i_3_n_0 ;
  wire \B_mantissa_ext[8]_i_4_n_0 ;
  wire \B_mantissa_ext[9]_i_2_n_0 ;
  wire \B_mantissa_ext[9]_i_3_n_0 ;
  wire \B_mantissa_ext[9]_i_4_n_0 ;
  wire \B_mantissa_ext_reg_n_0_[0] ;
  wire \B_mantissa_ext_reg_n_0_[10] ;
  wire \B_mantissa_ext_reg_n_0_[11] ;
  wire \B_mantissa_ext_reg_n_0_[12] ;
  wire \B_mantissa_ext_reg_n_0_[13] ;
  wire \B_mantissa_ext_reg_n_0_[14] ;
  wire \B_mantissa_ext_reg_n_0_[15] ;
  wire \B_mantissa_ext_reg_n_0_[16] ;
  wire \B_mantissa_ext_reg_n_0_[17] ;
  wire \B_mantissa_ext_reg_n_0_[18] ;
  wire \B_mantissa_ext_reg_n_0_[19] ;
  wire \B_mantissa_ext_reg_n_0_[1] ;
  wire \B_mantissa_ext_reg_n_0_[20] ;
  wire \B_mantissa_ext_reg_n_0_[21] ;
  wire \B_mantissa_ext_reg_n_0_[22] ;
  wire \B_mantissa_ext_reg_n_0_[23] ;
  wire \B_mantissa_ext_reg_n_0_[24] ;
  wire \B_mantissa_ext_reg_n_0_[25] ;
  wire \B_mantissa_ext_reg_n_0_[26] ;
  wire \B_mantissa_ext_reg_n_0_[2] ;
  wire \B_mantissa_ext_reg_n_0_[3] ;
  wire \B_mantissa_ext_reg_n_0_[4] ;
  wire \B_mantissa_ext_reg_n_0_[5] ;
  wire \B_mantissa_ext_reg_n_0_[6] ;
  wire \B_mantissa_ext_reg_n_0_[7] ;
  wire \B_mantissa_ext_reg_n_0_[8] ;
  wire \B_mantissa_ext_reg_n_0_[9] ;
  wire B_sgn;
  wire B_sgn_i_1_n_0;
  wire [31:0]B_sgn_reg_0;
  wire B_sgn_reg_1;
  wire \Control_Unit.shift_amount[0]_i_2_n_0 ;
  wire \Control_Unit.shift_amount[0]_i_3_n_0 ;
  wire \Control_Unit.shift_amount[0]_i_4_n_0 ;
  wire \Control_Unit.shift_amount[0]_i_5_n_0 ;
  wire \Control_Unit.shift_amount[0]_i_6_n_0 ;
  wire \Control_Unit.shift_amount[0]_i_7_n_0 ;
  wire \Control_Unit.shift_amount[0]_i_8_n_0 ;
  wire \Control_Unit.shift_amount[0]_i_9_n_0 ;
  wire \Control_Unit.shift_amount[1]_i_10_n_0 ;
  wire \Control_Unit.shift_amount[1]_i_2_n_0 ;
  wire \Control_Unit.shift_amount[1]_i_3_n_0 ;
  wire \Control_Unit.shift_amount[1]_i_4_n_0 ;
  wire \Control_Unit.shift_amount[1]_i_5_n_0 ;
  wire \Control_Unit.shift_amount[1]_i_6_n_0 ;
  wire \Control_Unit.shift_amount[1]_i_7_n_0 ;
  wire \Control_Unit.shift_amount[1]_i_8_n_0 ;
  wire \Control_Unit.shift_amount[1]_i_9_n_0 ;
  wire \Control_Unit.shift_amount[2]_i_2_n_0 ;
  wire \Control_Unit.shift_amount[2]_i_3_n_0 ;
  wire \Control_Unit.shift_amount[2]_i_4_n_0 ;
  wire \Control_Unit.shift_amount[2]_i_5_n_0 ;
  wire \Control_Unit.shift_amount[2]_i_6_n_0 ;
  wire \Control_Unit.shift_amount[2]_i_7_n_0 ;
  wire \Control_Unit.shift_amount[3]_i_2_n_0 ;
  wire \Control_Unit.shift_amount[3]_i_3_n_0 ;
  wire \Control_Unit.shift_amount[3]_i_4_n_0 ;
  wire \Control_Unit.shift_amount[3]_i_5_n_0 ;
  wire \Control_Unit.shift_amount[3]_i_6_n_0 ;
  wire \Control_Unit.shift_amount[3]_i_7_n_0 ;
  wire \Control_Unit.shift_amount[4]_i_10_n_0 ;
  wire \Control_Unit.shift_amount[4]_i_11_n_0 ;
  wire \Control_Unit.shift_amount[4]_i_12_n_0 ;
  wire \Control_Unit.shift_amount[4]_i_13_n_0 ;
  wire \Control_Unit.shift_amount[4]_i_14_n_0 ;
  wire \Control_Unit.shift_amount[4]_i_15_n_0 ;
  wire \Control_Unit.shift_amount[4]_i_3_n_0 ;
  wire \Control_Unit.shift_amount[4]_i_4_n_0 ;
  wire \Control_Unit.shift_amount[4]_i_5_n_0 ;
  wire \Control_Unit.shift_amount[4]_i_6_n_0 ;
  wire \Control_Unit.shift_amount[4]_i_7_n_0 ;
  wire \Control_Unit.shift_amount[4]_i_8_n_0 ;
  wire \Control_Unit.shift_amount[4]_i_9_n_0 ;
  wire [26:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire [0:0]\FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[0]_2 ;
  wire \FSM_sequential_state_reg[0]_3 ;
  wire \FSM_sequential_state_reg[0]_4 ;
  wire [0:0]\FSM_sequential_state_reg[1]_0 ;
  wire [31:0]\FSM_sequential_state_reg[1]_1 ;
  wire [0:0]\FSM_sequential_state_reg[2]_0 ;
  wire \FSM_sequential_state_reg[2]_1 ;
  wire \FSM_sequential_state_reg_n_0_[2] ;
  wire [31:0]Q;
  wire [4:0]UNCONN_OUT;
  wire add_done;
  wire clk;
  wire [8:0]data0;
  wire done_i_1__0_n_0;
  wire [0:0]done_reg_0;
  wire done_reg_1;
  wire [3:0]\error_n_reg[0] ;
  wire final_exp_s0_carry__0_i_1_n_0;
  wire final_exp_s0_carry__0_i_2_n_0;
  wire final_exp_s0_carry__0_i_3_n_0;
  wire final_exp_s0_carry__0_i_4_n_0;
  wire final_exp_s0_carry__0_i_5_n_0;
  wire final_exp_s0_carry__0_n_0;
  wire final_exp_s0_carry__0_n_1;
  wire final_exp_s0_carry__0_n_2;
  wire final_exp_s0_carry__0_n_3;
  wire final_exp_s0_carry__1_i_1_n_0;
  wire final_exp_s0_carry_i_2_n_0;
  wire final_exp_s0_carry_i_3_n_0;
  wire final_exp_s0_carry_i_4_n_0;
  wire final_exp_s0_carry_i_5_n_0;
  wire final_exp_s0_carry_n_0;
  wire final_exp_s0_carry_n_1;
  wire final_exp_s0_carry_n_2;
  wire final_exp_s0_carry_n_3;
  wire \final_exp_s[0]_i_1_n_0 ;
  wire \final_exp_s[1]_i_1_n_0 ;
  wire \final_exp_s[2]_i_1_n_0 ;
  wire \final_exp_s[3]_i_1_n_0 ;
  wire \final_exp_s[4]_i_1_n_0 ;
  wire \final_exp_s[5]_i_1_n_0 ;
  wire \final_exp_s[6]_i_1_n_0 ;
  wire \final_exp_s[7]_i_1_n_0 ;
  wire \final_exp_s[8]_i_1_n_0 ;
  wire \final_exp_s[8]_i_2_n_0 ;
  wire \final_exp_s[8]_i_3_n_0 ;
  wire \final_exp_s[8]_i_4_n_0 ;
  wire \final_exp_s[8]_i_5_n_0 ;
  wire \final_exp_s_reg_n_0_[0] ;
  wire \final_exp_s_reg_n_0_[1] ;
  wire \final_exp_s_reg_n_0_[2] ;
  wire \final_exp_s_reg_n_0_[3] ;
  wire \final_exp_s_reg_n_0_[4] ;
  wire \final_exp_s_reg_n_0_[5] ;
  wire \final_exp_s_reg_n_0_[6] ;
  wire \final_exp_s_reg_n_0_[7] ;
  wire \final_exp_s_reg_n_0_[8] ;
  wire [28:0]final_mantissa;
  wire \final_mantissa[0]_i_10_n_0 ;
  wire \final_mantissa[0]_i_11_n_0 ;
  wire \final_mantissa[0]_i_3_n_0 ;
  wire \final_mantissa[0]_i_8_n_0 ;
  wire \final_mantissa[0]_i_9_n_0 ;
  wire \final_mantissa[10]_i_2_n_0 ;
  wire \final_mantissa[10]_i_3_n_0 ;
  wire \final_mantissa[10]_i_4_n_0 ;
  wire \final_mantissa[11]_i_10_n_0 ;
  wire \final_mantissa[11]_i_11_n_0 ;
  wire \final_mantissa[11]_i_12_n_0 ;
  wire \final_mantissa[11]_i_13_n_0 ;
  wire \final_mantissa[11]_i_2_n_0 ;
  wire \final_mantissa[11]_i_3_n_0 ;
  wire \final_mantissa[11]_i_4_n_0 ;
  wire \final_mantissa[12]_i_2_n_0 ;
  wire \final_mantissa[12]_i_3_n_0 ;
  wire \final_mantissa[12]_i_4_n_0 ;
  wire \final_mantissa[13]_i_2_n_0 ;
  wire \final_mantissa[13]_i_3_n_0 ;
  wire \final_mantissa[13]_i_4_n_0 ;
  wire \final_mantissa[14]_i_2_n_0 ;
  wire \final_mantissa[14]_i_3_n_0 ;
  wire \final_mantissa[14]_i_4_n_0 ;
  wire \final_mantissa[15]_i_11_n_0 ;
  wire \final_mantissa[15]_i_12_n_0 ;
  wire \final_mantissa[15]_i_13_n_0 ;
  wire \final_mantissa[15]_i_14_n_0 ;
  wire \final_mantissa[15]_i_2_n_0 ;
  wire \final_mantissa[15]_i_3_n_0 ;
  wire \final_mantissa[15]_i_4_n_0 ;
  wire \final_mantissa[15]_i_6_n_0 ;
  wire \final_mantissa[16]_i_2_n_0 ;
  wire \final_mantissa[16]_i_3_n_0 ;
  wire \final_mantissa[16]_i_4_n_0 ;
  wire \final_mantissa[16]_i_5_n_0 ;
  wire \final_mantissa[17]_i_2_n_0 ;
  wire \final_mantissa[17]_i_3_n_0 ;
  wire \final_mantissa[17]_i_4_n_0 ;
  wire \final_mantissa[18]_i_2_n_0 ;
  wire \final_mantissa[18]_i_3_n_0 ;
  wire \final_mantissa[18]_i_4_n_0 ;
  wire \final_mantissa[19]_i_12_n_0 ;
  wire \final_mantissa[19]_i_13_n_0 ;
  wire \final_mantissa[19]_i_14_n_0 ;
  wire \final_mantissa[19]_i_15_n_0 ;
  wire \final_mantissa[19]_i_2_n_0 ;
  wire \final_mantissa[19]_i_3_n_0 ;
  wire \final_mantissa[19]_i_4_n_0 ;
  wire \final_mantissa[19]_i_5_n_0 ;
  wire \final_mantissa[19]_i_7_n_0 ;
  wire \final_mantissa[1]_i_2_n_0 ;
  wire \final_mantissa[1]_i_3_n_0 ;
  wire \final_mantissa[1]_i_4_n_0 ;
  wire \final_mantissa[20]_i_10_n_0 ;
  wire \final_mantissa[20]_i_2_n_0 ;
  wire \final_mantissa[20]_i_3_n_0 ;
  wire \final_mantissa[20]_i_4_n_0 ;
  wire \final_mantissa[20]_i_5_n_0 ;
  wire \final_mantissa[20]_i_6_n_0 ;
  wire \final_mantissa[20]_i_7_n_0 ;
  wire \final_mantissa[20]_i_8_n_0 ;
  wire \final_mantissa[20]_i_9_n_0 ;
  wire \final_mantissa[21]_i_2_n_0 ;
  wire \final_mantissa[21]_i_3_n_0 ;
  wire \final_mantissa[21]_i_4_n_0 ;
  wire \final_mantissa[21]_i_5_n_0 ;
  wire \final_mantissa[22]_i_2_n_0 ;
  wire \final_mantissa[22]_i_3_n_0 ;
  wire \final_mantissa[22]_i_4_n_0 ;
  wire \final_mantissa[22]_i_5_n_0 ;
  wire \final_mantissa[22]_i_6_n_0 ;
  wire \final_mantissa[22]_i_7_n_0 ;
  wire \final_mantissa[22]_i_8_n_0 ;
  wire \final_mantissa[23]_i_11_n_0 ;
  wire \final_mantissa[23]_i_12_n_0 ;
  wire \final_mantissa[23]_i_13_n_0 ;
  wire \final_mantissa[23]_i_14_n_0 ;
  wire \final_mantissa[23]_i_15_n_0 ;
  wire \final_mantissa[23]_i_16_n_0 ;
  wire \final_mantissa[23]_i_17_n_0 ;
  wire \final_mantissa[23]_i_18_n_0 ;
  wire \final_mantissa[23]_i_19_n_0 ;
  wire \final_mantissa[23]_i_20_n_0 ;
  wire \final_mantissa[23]_i_2_n_0 ;
  wire \final_mantissa[23]_i_3_n_0 ;
  wire \final_mantissa[23]_i_5_n_0 ;
  wire \final_mantissa[23]_i_6_n_0 ;
  wire \final_mantissa[24]_i_10_n_0 ;
  wire \final_mantissa[24]_i_11_n_0 ;
  wire \final_mantissa[24]_i_2_n_0 ;
  wire \final_mantissa[24]_i_3_n_0 ;
  wire \final_mantissa[24]_i_4_n_0 ;
  wire \final_mantissa[24]_i_5_n_0 ;
  wire \final_mantissa[24]_i_6_n_0 ;
  wire \final_mantissa[24]_i_7_n_0 ;
  wire \final_mantissa[24]_i_8_n_0 ;
  wire \final_mantissa[24]_i_9_n_0 ;
  wire \final_mantissa[25]_i_10_n_0 ;
  wire \final_mantissa[25]_i_2_n_0 ;
  wire \final_mantissa[25]_i_3_n_0 ;
  wire \final_mantissa[25]_i_4_n_0 ;
  wire \final_mantissa[25]_i_5_n_0 ;
  wire \final_mantissa[25]_i_6_n_0 ;
  wire \final_mantissa[25]_i_7_n_0 ;
  wire \final_mantissa[25]_i_8_n_0 ;
  wire \final_mantissa[25]_i_9_n_0 ;
  wire \final_mantissa[26]_i_10_n_0 ;
  wire \final_mantissa[26]_i_11_n_0 ;
  wire \final_mantissa[26]_i_12_n_0 ;
  wire \final_mantissa[26]_i_13_n_0 ;
  wire \final_mantissa[26]_i_2_n_0 ;
  wire \final_mantissa[26]_i_3_n_0 ;
  wire \final_mantissa[26]_i_4_n_0 ;
  wire \final_mantissa[26]_i_5_n_0 ;
  wire \final_mantissa[26]_i_6_n_0 ;
  wire \final_mantissa[26]_i_7_n_0 ;
  wire \final_mantissa[26]_i_8_n_0 ;
  wire \final_mantissa[26]_i_9_n_0 ;
  wire \final_mantissa[27]_i_2_n_0 ;
  wire \final_mantissa[27]_i_3_n_0 ;
  wire \final_mantissa[27]_i_4_n_0 ;
  wire \final_mantissa[27]_i_5_n_0 ;
  wire \final_mantissa[27]_i_6_n_0 ;
  wire \final_mantissa[27]_i_7_n_0 ;
  wire \final_mantissa[28]_i_10_n_0 ;
  wire \final_mantissa[28]_i_11_n_0 ;
  wire \final_mantissa[28]_i_12_n_0 ;
  wire \final_mantissa[28]_i_13_n_0 ;
  wire \final_mantissa[28]_i_17_n_0 ;
  wire \final_mantissa[28]_i_18_n_0 ;
  wire \final_mantissa[28]_i_19_n_0 ;
  wire \final_mantissa[28]_i_1_n_0 ;
  wire \final_mantissa[28]_i_20_n_0 ;
  wire \final_mantissa[28]_i_3_n_0 ;
  wire \final_mantissa[28]_i_4_n_0 ;
  wire \final_mantissa[28]_i_5_n_0 ;
  wire \final_mantissa[28]_i_7_n_0 ;
  wire \final_mantissa[28]_i_9_n_0 ;
  wire \final_mantissa[2]_i_2_n_0 ;
  wire \final_mantissa[2]_i_3_n_0 ;
  wire \final_mantissa[2]_i_4_n_0 ;
  wire \final_mantissa[3]_i_2_n_0 ;
  wire \final_mantissa[3]_i_3_n_0 ;
  wire \final_mantissa[4]_i_2_n_0 ;
  wire \final_mantissa[4]_i_3_n_0 ;
  wire \final_mantissa[4]_i_4_n_0 ;
  wire \final_mantissa[4]_i_5_n_0 ;
  wire \final_mantissa[4]_i_6_n_0 ;
  wire \final_mantissa[5]_i_2_n_0 ;
  wire \final_mantissa[5]_i_3_n_0 ;
  wire \final_mantissa[5]_i_4_n_0 ;
  wire \final_mantissa[6]_i_2_n_0 ;
  wire \final_mantissa[6]_i_3_n_0 ;
  wire \final_mantissa[6]_i_4_n_0 ;
  wire \final_mantissa[7]_i_10_n_0 ;
  wire \final_mantissa[7]_i_11_n_0 ;
  wire \final_mantissa[7]_i_12_n_0 ;
  wire \final_mantissa[7]_i_13_n_0 ;
  wire \final_mantissa[7]_i_2_n_0 ;
  wire \final_mantissa[7]_i_3_n_0 ;
  wire \final_mantissa[7]_i_4_n_0 ;
  wire \final_mantissa[8]_i_2_n_0 ;
  wire \final_mantissa[8]_i_3_n_0 ;
  wire \final_mantissa[8]_i_4_n_0 ;
  wire \final_mantissa[8]_i_5_n_0 ;
  wire \final_mantissa[9]_i_2_n_0 ;
  wire \final_mantissa[9]_i_3_n_0 ;
  wire \final_mantissa[9]_i_4_n_0 ;
  wire \final_mantissa_reg[0]_i_2_n_0 ;
  wire \final_mantissa_reg[0]_i_2_n_1 ;
  wire \final_mantissa_reg[0]_i_2_n_2 ;
  wire \final_mantissa_reg[0]_i_2_n_3 ;
  wire \final_mantissa_reg[11]_i_5_n_0 ;
  wire \final_mantissa_reg[11]_i_5_n_1 ;
  wire \final_mantissa_reg[11]_i_5_n_2 ;
  wire \final_mantissa_reg[11]_i_5_n_3 ;
  wire \final_mantissa_reg[15]_i_5_n_0 ;
  wire \final_mantissa_reg[15]_i_5_n_1 ;
  wire \final_mantissa_reg[15]_i_5_n_2 ;
  wire \final_mantissa_reg[15]_i_5_n_3 ;
  wire \final_mantissa_reg[19]_i_6_n_0 ;
  wire \final_mantissa_reg[19]_i_6_n_1 ;
  wire \final_mantissa_reg[19]_i_6_n_2 ;
  wire \final_mantissa_reg[19]_i_6_n_3 ;
  wire \final_mantissa_reg[23]_i_4_n_0 ;
  wire \final_mantissa_reg[23]_i_4_n_1 ;
  wire \final_mantissa_reg[23]_i_4_n_2 ;
  wire \final_mantissa_reg[23]_i_4_n_3 ;
  wire \final_mantissa_reg[28]_i_8_n_0 ;
  wire \final_mantissa_reg[28]_i_8_n_1 ;
  wire \final_mantissa_reg[28]_i_8_n_2 ;
  wire \final_mantissa_reg[28]_i_8_n_3 ;
  wire \final_mantissa_reg[7]_i_5_n_0 ;
  wire \final_mantissa_reg[7]_i_5_n_1 ;
  wire \final_mantissa_reg[7]_i_5_n_2 ;
  wire \final_mantissa_reg[7]_i_5_n_3 ;
  wire \final_mantissa_reg_n_0_[0] ;
  wire \final_mantissa_reg_n_0_[10] ;
  wire \final_mantissa_reg_n_0_[11] ;
  wire \final_mantissa_reg_n_0_[12] ;
  wire \final_mantissa_reg_n_0_[13] ;
  wire \final_mantissa_reg_n_0_[14] ;
  wire \final_mantissa_reg_n_0_[15] ;
  wire \final_mantissa_reg_n_0_[16] ;
  wire \final_mantissa_reg_n_0_[17] ;
  wire \final_mantissa_reg_n_0_[18] ;
  wire \final_mantissa_reg_n_0_[19] ;
  wire \final_mantissa_reg_n_0_[1] ;
  wire \final_mantissa_reg_n_0_[20] ;
  wire \final_mantissa_reg_n_0_[21] ;
  wire \final_mantissa_reg_n_0_[22] ;
  wire \final_mantissa_reg_n_0_[23] ;
  wire \final_mantissa_reg_n_0_[24] ;
  wire \final_mantissa_reg_n_0_[25] ;
  wire \final_mantissa_reg_n_0_[26] ;
  wire \final_mantissa_reg_n_0_[27] ;
  wire \final_mantissa_reg_n_0_[2] ;
  wire \final_mantissa_reg_n_0_[3] ;
  wire \final_mantissa_reg_n_0_[4] ;
  wire \final_mantissa_reg_n_0_[5] ;
  wire \final_mantissa_reg_n_0_[6] ;
  wire \final_mantissa_reg_n_0_[7] ;
  wire \final_mantissa_reg_n_0_[8] ;
  wire \final_mantissa_reg_n_0_[9] ;
  wire final_sgn__0;
  wire final_sgn_i_1_n_0;
  wire final_sgn_i_2_n_0;
  wire \fp_A[0]_i_2_n_0 ;
  wire \fp_A[10]_i_2_n_0 ;
  wire \fp_A[11]_i_2_n_0 ;
  wire \fp_A[12]_i_2_n_0 ;
  wire \fp_A[13]_i_2_n_0 ;
  wire \fp_A[14]_i_2_n_0 ;
  wire \fp_A[15]_i_2_n_0 ;
  wire \fp_A[16]_i_2_n_0 ;
  wire \fp_A[17]_i_2_n_0 ;
  wire \fp_A[18]_i_2_n_0 ;
  wire \fp_A[19]_i_2_n_0 ;
  wire \fp_A[1]_i_2_n_0 ;
  wire \fp_A[20]_i_2_n_0 ;
  wire \fp_A[21]_i_2_n_0 ;
  wire \fp_A[22]_i_2_n_0 ;
  wire \fp_A[25]_i_2_n_0 ;
  wire \fp_A[26]_i_2_n_0 ;
  wire \fp_A[2]_i_2_n_0 ;
  wire \fp_A[30]_i_2_n_0 ;
  wire \fp_A[31]_i_2_n_0 ;
  wire \fp_A[3]_i_2_n_0 ;
  wire \fp_A[4]_i_2_n_0 ;
  wire \fp_A[5]_i_2_n_0 ;
  wire \fp_A[6]_i_2_n_0 ;
  wire \fp_A[7]_i_2_n_0 ;
  wire \fp_A[8]_i_2_n_0 ;
  wire \fp_A[9]_i_2_n_0 ;
  wire \fp_A_reg[25] ;
  wire \fp_A_reg[26] ;
  wire [31:0]\fp_A_reg[31] ;
  wire [24:0]\fp_A_reg[31]_0 ;
  wire [24:0]\fp_A_reg[31]_1 ;
  wire \fp_B[0]_i_2_n_0 ;
  wire \fp_B[0]_i_3_n_0 ;
  wire \fp_B[10]_i_2_n_0 ;
  wire \fp_B[10]_i_3_n_0 ;
  wire \fp_B[11]_i_2_n_0 ;
  wire \fp_B[11]_i_3_n_0 ;
  wire \fp_B[12]_i_2_n_0 ;
  wire \fp_B[12]_i_3_n_0 ;
  wire \fp_B[13]_i_2_n_0 ;
  wire \fp_B[13]_i_3_n_0 ;
  wire \fp_B[14]_i_2_n_0 ;
  wire \fp_B[14]_i_3_n_0 ;
  wire \fp_B[15]_i_2_n_0 ;
  wire \fp_B[15]_i_3_n_0 ;
  wire \fp_B[16]_i_2_n_0 ;
  wire \fp_B[16]_i_3_n_0 ;
  wire \fp_B[17]_i_2_n_0 ;
  wire \fp_B[17]_i_3_n_0 ;
  wire \fp_B[18]_i_2_n_0 ;
  wire \fp_B[18]_i_3_n_0 ;
  wire \fp_B[19]_i_2_n_0 ;
  wire \fp_B[19]_i_3_n_0 ;
  wire \fp_B[1]_i_2_n_0 ;
  wire \fp_B[1]_i_3_n_0 ;
  wire \fp_B[20]_i_2_n_0 ;
  wire \fp_B[20]_i_3_n_0 ;
  wire \fp_B[21]_i_2_n_0 ;
  wire \fp_B[21]_i_3_n_0 ;
  wire \fp_B[22]_i_2_n_0 ;
  wire \fp_B[22]_i_3_n_0 ;
  wire \fp_B[23]_i_2_n_0 ;
  wire \fp_B[23]_i_3_n_0 ;
  wire \fp_B[24]_i_2_n_0 ;
  wire \fp_B[24]_i_3_n_0 ;
  wire \fp_B[25]_i_2_n_0 ;
  wire \fp_B[25]_i_3_n_0 ;
  wire \fp_B[26]_i_2_n_0 ;
  wire \fp_B[26]_i_3_n_0 ;
  wire \fp_B[27]_i_2_n_0 ;
  wire \fp_B[27]_i_3_n_0 ;
  wire \fp_B[28]_i_2_n_0 ;
  wire \fp_B[28]_i_3_n_0 ;
  wire \fp_B[29]_i_2_n_0 ;
  wire \fp_B[29]_i_3_n_0 ;
  wire \fp_B[2]_i_2_n_0 ;
  wire \fp_B[2]_i_3_n_0 ;
  wire \fp_B[30]_i_2_n_0 ;
  wire \fp_B[30]_i_3_n_0 ;
  wire \fp_B[31]_i_3_n_0 ;
  wire \fp_B[31]_i_4_n_0 ;
  wire \fp_B[3]_i_2_n_0 ;
  wire \fp_B[3]_i_3_n_0 ;
  wire \fp_B[4]_i_2_n_0 ;
  wire \fp_B[4]_i_3_n_0 ;
  wire \fp_B[5]_i_2_n_0 ;
  wire \fp_B[5]_i_3_n_0 ;
  wire \fp_B[6]_i_2_n_0 ;
  wire \fp_B[6]_i_3_n_0 ;
  wire \fp_B[7]_i_2_n_0 ;
  wire \fp_B[7]_i_3_n_0 ;
  wire \fp_B[8]_i_2_n_0 ;
  wire \fp_B[8]_i_3_n_0 ;
  wire \fp_B[9]_i_2_n_0 ;
  wire \fp_B[9]_i_3_n_0 ;
  wire \fp_B_reg[0] ;
  wire \fp_B_reg[10] ;
  wire \fp_B_reg[11] ;
  wire \fp_B_reg[12] ;
  wire \fp_B_reg[13] ;
  wire \fp_B_reg[14] ;
  wire \fp_B_reg[15] ;
  wire \fp_B_reg[16] ;
  wire \fp_B_reg[17] ;
  wire \fp_B_reg[18] ;
  wire \fp_B_reg[19] ;
  wire \fp_B_reg[1] ;
  wire \fp_B_reg[20] ;
  wire \fp_B_reg[21] ;
  wire \fp_B_reg[22] ;
  wire \fp_B_reg[23] ;
  wire \fp_B_reg[24] ;
  wire \fp_B_reg[25] ;
  wire \fp_B_reg[26] ;
  wire \fp_B_reg[27] ;
  wire \fp_B_reg[28] ;
  wire \fp_B_reg[29] ;
  wire \fp_B_reg[2] ;
  wire \fp_B_reg[30] ;
  wire [31:0]\fp_B_reg[31] ;
  wire [31:0]\fp_B_reg[31]_0 ;
  wire [29:0]\fp_B_reg[31]_1 ;
  wire [31:0]\fp_B_reg[31]_2 ;
  wire [31:0]\fp_B_reg[31]_3 ;
  wire \fp_B_reg[31]_4 ;
  wire \fp_B_reg[3] ;
  wire \fp_B_reg[4] ;
  wire \fp_B_reg[5] ;
  wire \fp_B_reg[6] ;
  wire \fp_B_reg[7] ;
  wire \fp_B_reg[8] ;
  wire \fp_B_reg[9] ;
  wire [26:0]fp_result;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8_n_0;
  wire [28:0]in22;
  wire mul_done;
  wire mul_start;
  wire [5:5]p_0_out;
  wire [26:0]p_1_out;
  wire p_2_in;
  wire result0;
  wire \result[23]_i_1_n_0 ;
  wire \result[25]_i_1_n_0 ;
  wire \result[29]_i_1_n_0 ;
  wire \result[29]_i_2_n_0 ;
  wire \result[29]_i_3_n_0 ;
  wire \result[30]_i_1_n_0 ;
  wire rst_fp;
  wire [4:0]shift_amount;
  wire shift_amount0;
  wire [4:0]shift_amount__0;
  wire [0:0]start_pid_reg;
  wire [1:0]state;
  wire \state1_inferred__0/i__carry_n_0 ;
  wire \state1_inferred__0/i__carry_n_1 ;
  wire \state1_inferred__0/i__carry_n_2 ;
  wire \state1_inferred__0/i__carry_n_3 ;
  wire \state1_inferred__1/i__carry_n_0 ;
  wire \state1_inferred__1/i__carry_n_1 ;
  wire \state1_inferred__1/i__carry_n_2 ;
  wire \state1_inferred__1/i__carry_n_3 ;
  wire \temp_mantissa_result1_inferred__0/i__carry__0_n_0 ;
  wire \temp_mantissa_result1_inferred__0/i__carry__0_n_1 ;
  wire \temp_mantissa_result1_inferred__0/i__carry__0_n_2 ;
  wire \temp_mantissa_result1_inferred__0/i__carry__0_n_3 ;
  wire \temp_mantissa_result1_inferred__0/i__carry__1_n_0 ;
  wire \temp_mantissa_result1_inferred__0/i__carry__1_n_1 ;
  wire \temp_mantissa_result1_inferred__0/i__carry__1_n_2 ;
  wire \temp_mantissa_result1_inferred__0/i__carry__1_n_3 ;
  wire \temp_mantissa_result1_inferred__0/i__carry__2_n_2 ;
  wire \temp_mantissa_result1_inferred__0/i__carry__2_n_3 ;
  wire \temp_mantissa_result1_inferred__0/i__carry_n_0 ;
  wire \temp_mantissa_result1_inferred__0/i__carry_n_1 ;
  wire \temp_mantissa_result1_inferred__0/i__carry_n_2 ;
  wire \temp_mantissa_result1_inferred__0/i__carry_n_3 ;
  wire [3:0]NLW_final_exp_s0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_final_exp_s0_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_final_mantissa_reg[28]_i_6_CO_UNCONNECTED ;
  wire [3:1]\NLW_final_mantissa_reg[28]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_temp_mantissa_result1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_temp_mantissa_result1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_temp_mantissa_result1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:2]\NLW_temp_mantissa_result1_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_temp_mantissa_result1_inferred__0/i__carry__2_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0010)) 
    \A_exp_s[7]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[2] ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(rst_fp),
        .O(A_exp_s0));
  FDRE \A_exp_s_reg[0] 
       (.C(clk),
        .CE(A_exp_s0),
        .D(Q[23]),
        .Q(A_exp_s[0]),
        .R(1'b0));
  FDRE \A_exp_s_reg[1] 
       (.C(clk),
        .CE(A_exp_s0),
        .D(Q[24]),
        .Q(A_exp_s[1]),
        .R(1'b0));
  FDRE \A_exp_s_reg[2] 
       (.C(clk),
        .CE(A_exp_s0),
        .D(Q[25]),
        .Q(A_exp_s[2]),
        .R(1'b0));
  FDRE \A_exp_s_reg[3] 
       (.C(clk),
        .CE(A_exp_s0),
        .D(Q[26]),
        .Q(A_exp_s[3]),
        .R(1'b0));
  FDRE \A_exp_s_reg[4] 
       (.C(clk),
        .CE(A_exp_s0),
        .D(Q[27]),
        .Q(A_exp_s[4]),
        .R(1'b0));
  FDRE \A_exp_s_reg[5] 
       (.C(clk),
        .CE(A_exp_s0),
        .D(Q[28]),
        .Q(A_exp_s[5]),
        .R(1'b0));
  FDRE \A_exp_s_reg[6] 
       (.C(clk),
        .CE(A_exp_s0),
        .D(Q[29]),
        .Q(A_exp_s[6]),
        .R(1'b0));
  FDRE \A_exp_s_reg[7] 
       (.C(clk),
        .CE(A_exp_s0),
        .D(Q[30]),
        .Q(A_exp_s[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h30505030)) 
    \A_mantissa_ext[0]_i_1 
       (.I0(\A_mantissa_ext[1]_i_2_n_0 ),
        .I1(\A_mantissa_ext[0]_i_2_n_0 ),
        .I2(state[1]),
        .I3(B_exp_s[0]),
        .I4(A_exp_s[0]),
        .O(A_mantissa_ext[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \A_mantissa_ext[0]_i_2 
       (.I0(\A_mantissa_ext[2]_i_3_n_0 ),
        .I1(\Control_Unit.shift_amount[1]_i_4_n_0 ),
        .I2(\A_mantissa_ext[0]_i_3_n_0 ),
        .I3(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I4(\A_mantissa_ext[0]_i_4_n_0 ),
        .O(\A_mantissa_ext[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_mantissa_ext[0]_i_3 
       (.I0(\A_mantissa_ext_reg_n_0_[0] ),
        .I1(\A_mantissa_ext_reg_n_0_[16] ),
        .I2(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[8] ),
        .I4(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I5(\A_mantissa_ext_reg_n_0_[24] ),
        .O(\A_mantissa_ext[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h503F5F3F)) 
    \A_mantissa_ext[0]_i_4 
       (.I0(\A_mantissa_ext_reg_n_0_[4] ),
        .I1(\A_mantissa_ext_reg_n_0_[20] ),
        .I2(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I4(\A_mantissa_ext_reg_n_0_[12] ),
        .O(\A_mantissa_ext[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[10]_i_1 
       (.I0(Q[7]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[11]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[10]_i_2_n_0 ),
        .O(A_mantissa_ext[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A_mantissa_ext[10]_i_2 
       (.I0(\A_mantissa_ext[12]_i_3_n_0 ),
        .I1(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I2(\A_mantissa_ext[12]_i_4_n_0 ),
        .I3(\Control_Unit.shift_amount[1]_i_4_n_0 ),
        .I4(\A_mantissa_ext[10]_i_3_n_0 ),
        .O(\A_mantissa_ext[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCACAC0C0CAC0CAC0)) 
    \A_mantissa_ext[10]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext[10]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[22] ),
        .I4(\A_mantissa_ext_reg_n_0_[14] ),
        .I5(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hCFC0A0A0)) 
    \A_mantissa_ext[10]_i_4 
       (.I0(\A_mantissa_ext_reg_n_0_[18] ),
        .I1(\A_mantissa_ext_reg_n_0_[10] ),
        .I2(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[26] ),
        .I4(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[11]_i_1 
       (.I0(Q[8]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[12]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[11]_i_2_n_0 ),
        .O(A_mantissa_ext[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A_mantissa_ext[11]_i_2 
       (.I0(\A_mantissa_ext[13]_i_3_n_0 ),
        .I1(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I2(\A_mantissa_ext[13]_i_4_n_0 ),
        .I3(\Control_Unit.shift_amount[1]_i_4_n_0 ),
        .I4(\A_mantissa_ext[11]_i_3_n_0 ),
        .O(\A_mantissa_ext[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCACAC0C0CAC0CAC0)) 
    \A_mantissa_ext[11]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext[11]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[23] ),
        .I4(\A_mantissa_ext_reg_n_0_[15] ),
        .I5(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \A_mantissa_ext[11]_i_4 
       (.I0(\A_mantissa_ext_reg_n_0_[19] ),
        .I1(\A_mantissa_ext_reg_n_0_[11] ),
        .I2(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I3(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[12]_i_1 
       (.I0(Q[9]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[13]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[12]_i_2_n_0 ),
        .O(A_mantissa_ext[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A_mantissa_ext[12]_i_2 
       (.I0(\A_mantissa_ext[14]_i_3_n_0 ),
        .I1(\A_mantissa_ext[14]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[1]_i_4_n_0 ),
        .I3(\A_mantissa_ext[12]_i_3_n_0 ),
        .I4(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I5(\A_mantissa_ext[12]_i_4_n_0 ),
        .O(\A_mantissa_ext[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hA088)) 
    \A_mantissa_ext[12]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext_reg_n_0_[20] ),
        .I2(\A_mantissa_ext_reg_n_0_[12] ),
        .I3(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hA088)) 
    \A_mantissa_ext[12]_i_4 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext_reg_n_0_[24] ),
        .I2(\A_mantissa_ext_reg_n_0_[16] ),
        .I3(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[13]_i_1 
       (.I0(Q[10]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[14]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[13]_i_2_n_0 ),
        .O(A_mantissa_ext[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \A_mantissa_ext[13]_i_2 
       (.I0(\A_mantissa_ext[15]_i_3_n_0 ),
        .I1(\Control_Unit.shift_amount[1]_i_4_n_0 ),
        .I2(\A_mantissa_ext[13]_i_3_n_0 ),
        .I3(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I4(\A_mantissa_ext[13]_i_4_n_0 ),
        .O(\A_mantissa_ext[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hA088)) 
    \A_mantissa_ext[13]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext_reg_n_0_[21] ),
        .I2(\A_mantissa_ext_reg_n_0_[13] ),
        .I3(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hA088)) 
    \A_mantissa_ext[13]_i_4 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext_reg_n_0_[25] ),
        .I2(\A_mantissa_ext_reg_n_0_[17] ),
        .I3(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[14]_i_1 
       (.I0(Q[11]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[15]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[14]_i_2_n_0 ),
        .O(A_mantissa_ext[14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \A_mantissa_ext[14]_i_2 
       (.I0(\A_mantissa_ext[16]_i_3_n_0 ),
        .I1(\Control_Unit.shift_amount[1]_i_4_n_0 ),
        .I2(\A_mantissa_ext[14]_i_3_n_0 ),
        .I3(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I4(\A_mantissa_ext[14]_i_4_n_0 ),
        .O(\A_mantissa_ext[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hA088)) 
    \A_mantissa_ext[14]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext_reg_n_0_[22] ),
        .I2(\A_mantissa_ext_reg_n_0_[14] ),
        .I3(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8A80)) 
    \A_mantissa_ext[14]_i_4 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext_reg_n_0_[18] ),
        .I2(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[26] ),
        .O(\A_mantissa_ext[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[15]_i_1 
       (.I0(Q[12]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[16]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[15]_i_2_n_0 ),
        .O(A_mantissa_ext[15]));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \A_mantissa_ext[15]_i_2 
       (.I0(\A_mantissa_ext[17]_i_3_n_0 ),
        .I1(B_exp_s[0]),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[1]),
        .I4(A_exp_s[1]),
        .I5(\A_mantissa_ext[15]_i_3_n_0 ),
        .O(\A_mantissa_ext[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0AA8800A0008800)) 
    \A_mantissa_ext[15]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext_reg_n_0_[23] ),
        .I2(\A_mantissa_ext_reg_n_0_[15] ),
        .I3(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I4(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I5(\A_mantissa_ext_reg_n_0_[19] ),
        .O(\A_mantissa_ext[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[16]_i_1 
       (.I0(Q[13]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[17]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[16]_i_2_n_0 ),
        .O(A_mantissa_ext[16]));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \A_mantissa_ext[16]_i_2 
       (.I0(\A_mantissa_ext[18]_i_3_n_0 ),
        .I1(B_exp_s[0]),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[1]),
        .I4(A_exp_s[1]),
        .I5(\A_mantissa_ext[16]_i_3_n_0 ),
        .O(\A_mantissa_ext[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0AAA00088008800)) 
    \A_mantissa_ext[16]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext_reg_n_0_[24] ),
        .I2(\A_mantissa_ext_reg_n_0_[16] ),
        .I3(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I4(\A_mantissa_ext_reg_n_0_[20] ),
        .I5(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[17]_i_1 
       (.I0(Q[14]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[18]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[17]_i_2_n_0 ),
        .O(A_mantissa_ext[17]));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \A_mantissa_ext[17]_i_2 
       (.I0(\A_mantissa_ext[19]_i_3_n_0 ),
        .I1(B_exp_s[0]),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[1]),
        .I4(A_exp_s[1]),
        .I5(\A_mantissa_ext[17]_i_3_n_0 ),
        .O(\A_mantissa_ext[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0AAA00088008800)) 
    \A_mantissa_ext[17]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext_reg_n_0_[25] ),
        .I2(\A_mantissa_ext_reg_n_0_[17] ),
        .I3(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I4(\A_mantissa_ext_reg_n_0_[21] ),
        .I5(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[18]_i_1 
       (.I0(Q[15]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[19]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[18]_i_2_n_0 ),
        .O(A_mantissa_ext[18]));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \A_mantissa_ext[18]_i_2 
       (.I0(\A_mantissa_ext[20]_i_3_n_0 ),
        .I1(B_exp_s[0]),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[1]),
        .I4(A_exp_s[1]),
        .I5(\A_mantissa_ext[18]_i_3_n_0 ),
        .O(\A_mantissa_ext[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88AA8800A000A000)) 
    \A_mantissa_ext[18]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext_reg_n_0_[18] ),
        .I2(\A_mantissa_ext_reg_n_0_[26] ),
        .I3(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I4(\A_mantissa_ext_reg_n_0_[22] ),
        .I5(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[19]_i_1 
       (.I0(Q[16]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[20]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[19]_i_2_n_0 ),
        .O(A_mantissa_ext[19]));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \A_mantissa_ext[19]_i_2 
       (.I0(\A_mantissa_ext[21]_i_3_n_0 ),
        .I1(B_exp_s[0]),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[1]),
        .I4(A_exp_s[1]),
        .I5(\A_mantissa_ext[19]_i_3_n_0 ),
        .O(\A_mantissa_ext[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \A_mantissa_ext[19]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext_reg_n_0_[19] ),
        .I2(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[23] ),
        .I4(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30505030)) 
    \A_mantissa_ext[1]_i_1 
       (.I0(\A_mantissa_ext[2]_i_2_n_0 ),
        .I1(\A_mantissa_ext[1]_i_2_n_0 ),
        .I2(state[1]),
        .I3(B_exp_s[0]),
        .I4(A_exp_s[0]),
        .O(A_mantissa_ext[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \A_mantissa_ext[1]_i_2 
       (.I0(\A_mantissa_ext_reg[3]_i_3_n_0 ),
        .I1(\Control_Unit.shift_amount[1]_i_4_n_0 ),
        .I2(\A_mantissa_ext[1]_i_3_n_0 ),
        .I3(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I4(\A_mantissa_ext[1]_i_4_n_0 ),
        .O(\A_mantissa_ext[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_mantissa_ext[1]_i_3 
       (.I0(\A_mantissa_ext_reg_n_0_[1] ),
        .I1(\A_mantissa_ext_reg_n_0_[17] ),
        .I2(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[9] ),
        .I4(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I5(\A_mantissa_ext_reg_n_0_[25] ),
        .O(\A_mantissa_ext[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h503F5F3F)) 
    \A_mantissa_ext[1]_i_4 
       (.I0(\A_mantissa_ext_reg_n_0_[5] ),
        .I1(\A_mantissa_ext_reg_n_0_[21] ),
        .I2(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I4(\A_mantissa_ext_reg_n_0_[13] ),
        .O(\A_mantissa_ext[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[20]_i_1 
       (.I0(Q[17]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[21]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[20]_i_2_n_0 ),
        .O(A_mantissa_ext[20]));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \A_mantissa_ext[20]_i_2 
       (.I0(\A_mantissa_ext[22]_i_3_n_0 ),
        .I1(B_exp_s[0]),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[1]),
        .I4(A_exp_s[1]),
        .I5(\A_mantissa_ext[20]_i_3_n_0 ),
        .O(\A_mantissa_ext[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \A_mantissa_ext[20]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext_reg_n_0_[20] ),
        .I2(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[24] ),
        .I4(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[21]_i_1 
       (.I0(Q[18]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[22]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[21]_i_2_n_0 ),
        .O(A_mantissa_ext[21]));
  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    \A_mantissa_ext[21]_i_2 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[23] ),
        .I4(\Control_Unit.shift_amount[1]_i_4_n_0 ),
        .I5(\A_mantissa_ext[21]_i_3_n_0 ),
        .O(\A_mantissa_ext[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h8A800000)) 
    \A_mantissa_ext[21]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext_reg_n_0_[21] ),
        .I2(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[25] ),
        .I4(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[22]_i_1 
       (.I0(Q[19]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[23]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[22]_i_2_n_0 ),
        .O(A_mantissa_ext[22]));
  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    \A_mantissa_ext[22]_i_2 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[24] ),
        .I3(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I4(\Control_Unit.shift_amount[1]_i_4_n_0 ),
        .I5(\A_mantissa_ext[22]_i_3_n_0 ),
        .O(\A_mantissa_ext[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h8A800000)) 
    \A_mantissa_ext[22]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext_reg_n_0_[22] ),
        .I2(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[26] ),
        .I4(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[23]_i_1 
       (.I0(Q[20]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[24]_i_3_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[23]_i_2_n_0 ),
        .O(A_mantissa_ext[23]));
  LUT6 #(
    .INIT(64'h8A00000080000000)) 
    \A_mantissa_ext[23]_i_2 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext_reg_n_0_[25] ),
        .I2(\Control_Unit.shift_amount[1]_i_4_n_0 ),
        .I3(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I4(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I5(\A_mantissa_ext_reg_n_0_[23] ),
        .O(\A_mantissa_ext[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[24]_i_1 
       (.I0(Q[21]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[24]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[24]_i_3_n_0 ),
        .O(A_mantissa_ext[24]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \A_mantissa_ext[24]_i_2 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[25] ),
        .I3(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I4(\Control_Unit.shift_amount[1]_i_4_n_0 ),
        .O(\A_mantissa_ext[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A00800000000000)) 
    \A_mantissa_ext[24]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext_reg_n_0_[26] ),
        .I2(\Control_Unit.shift_amount[1]_i_4_n_0 ),
        .I3(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I4(\A_mantissa_ext_reg_n_0_[24] ),
        .I5(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .O(\A_mantissa_ext[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \A_mantissa_ext[25]_i_1 
       (.I0(Q[22]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[26]_i_4_n_0 ),
        .I3(\B_mantissa_ext[25]_i_3_n_0 ),
        .I4(\A_mantissa_ext[25]_i_2_n_0 ),
        .I5(\Control_Unit.shift_amount[1]_i_4_n_0 ),
        .O(A_mantissa_ext[25]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \A_mantissa_ext[25]_i_2 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[25] ),
        .I3(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .O(\A_mantissa_ext[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABABABABAAA)) 
    \A_mantissa_ext[26]_i_1 
       (.I0(A_exp_s0),
        .I1(\A_mantissa_ext[26]_i_3_n_0 ),
        .I2(\B_mantissa_ext[26]_i_3_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I4(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I5(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .O(A_mantissa_ext0));
  LUT6 #(
    .INIT(64'hEAAEAAAAAAAAEAAE)) 
    \A_mantissa_ext[26]_i_2 
       (.I0(state[0]),
        .I1(\A_mantissa_ext[26]_i_4_n_0 ),
        .I2(B_exp_s[1]),
        .I3(A_exp_s[1]),
        .I4(B_exp_s[0]),
        .I5(A_exp_s[0]),
        .O(A_mantissa_ext[26]));
  LUT2 #(
    .INIT(4'hB)) 
    \A_mantissa_ext[26]_i_3 
       (.I0(\state1_inferred__0/i__carry_n_0 ),
        .I1(\state1_inferred__1/i__carry_n_0 ),
        .O(\A_mantissa_ext[26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \A_mantissa_ext[26]_i_4 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[26] ),
        .I3(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .O(\A_mantissa_ext[26]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30505030)) 
    \A_mantissa_ext[2]_i_1 
       (.I0(\A_mantissa_ext[3]_i_2_n_0 ),
        .I1(\A_mantissa_ext[2]_i_2_n_0 ),
        .I2(state[1]),
        .I3(B_exp_s[0]),
        .I4(A_exp_s[0]),
        .O(A_mantissa_ext[2]));
  LUT6 #(
    .INIT(64'hC5CC5C555C55C5CC)) 
    \A_mantissa_ext[2]_i_2 
       (.I0(\A_mantissa_ext[4]_i_3_n_0 ),
        .I1(\A_mantissa_ext[2]_i_3_n_0 ),
        .I2(B_exp_s[0]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[1]),
        .I5(A_exp_s[1]),
        .O(\A_mantissa_ext[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \A_mantissa_ext[2]_i_3 
       (.I0(\A_mantissa_ext[2]_i_4_n_0 ),
        .I1(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I2(\A_mantissa_ext[6]_i_4_n_0 ),
        .O(\A_mantissa_ext[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_mantissa_ext[2]_i_4 
       (.I0(\A_mantissa_ext_reg_n_0_[2] ),
        .I1(\A_mantissa_ext_reg_n_0_[18] ),
        .I2(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[10] ),
        .I4(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I5(\A_mantissa_ext_reg_n_0_[26] ),
        .O(\A_mantissa_ext[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8B8BBB88BB888B8B)) 
    \A_mantissa_ext[3]_i_1 
       (.I0(Q[0]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[3]_i_2_n_0 ),
        .I3(\A_mantissa_ext[4]_i_2_n_0 ),
        .I4(A_exp_s[0]),
        .I5(B_exp_s[0]),
        .O(A_mantissa_ext[3]));
  LUT6 #(
    .INIT(64'hDF7575DF10454510)) 
    \A_mantissa_ext[3]_i_2 
       (.I0(\A_mantissa_ext[5]_i_3_n_0 ),
        .I1(B_exp_s[0]),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[1]),
        .I4(A_exp_s[1]),
        .I5(\A_mantissa_ext_reg[3]_i_3_n_0 ),
        .O(\A_mantissa_ext[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h151FB5BF)) 
    \A_mantissa_ext[3]_i_4 
       (.I0(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I1(\A_mantissa_ext_reg_n_0_[15] ),
        .I2(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[23] ),
        .I4(\A_mantissa_ext_reg_n_0_[7] ),
        .O(\A_mantissa_ext[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55330FFF)) 
    \A_mantissa_ext[3]_i_5 
       (.I0(\A_mantissa_ext_reg_n_0_[3] ),
        .I1(\A_mantissa_ext_reg_n_0_[19] ),
        .I2(\A_mantissa_ext_reg_n_0_[11] ),
        .I3(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I4(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[4]_i_1 
       (.I0(Q[1]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[5]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[4]_i_2_n_0 ),
        .O(A_mantissa_ext[4]));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \A_mantissa_ext[4]_i_2 
       (.I0(\A_mantissa_ext[6]_i_3_n_0 ),
        .I1(B_exp_s[0]),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[1]),
        .I4(A_exp_s[1]),
        .I5(\A_mantissa_ext[4]_i_3_n_0 ),
        .O(\A_mantissa_ext[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \A_mantissa_ext[4]_i_3 
       (.I0(\A_mantissa_ext[8]_i_4_n_0 ),
        .I1(\A_mantissa_ext[0]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .O(\A_mantissa_ext[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[5]_i_1 
       (.I0(Q[2]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[6]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[5]_i_2_n_0 ),
        .O(A_mantissa_ext[5]));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \A_mantissa_ext[5]_i_2 
       (.I0(\A_mantissa_ext[7]_i_3_n_0 ),
        .I1(B_exp_s[0]),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[1]),
        .I4(A_exp_s[1]),
        .I5(\A_mantissa_ext[5]_i_3_n_0 ),
        .O(\A_mantissa_ext[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \A_mantissa_ext[5]_i_3 
       (.I0(\A_mantissa_ext[9]_i_4_n_0 ),
        .I1(\A_mantissa_ext[1]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .O(\A_mantissa_ext[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[6]_i_1 
       (.I0(Q[3]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[7]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[6]_i_2_n_0 ),
        .O(A_mantissa_ext[6]));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \A_mantissa_ext[6]_i_2 
       (.I0(\A_mantissa_ext[8]_i_3_n_0 ),
        .I1(B_exp_s[0]),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[1]),
        .I4(A_exp_s[1]),
        .I5(\A_mantissa_ext[6]_i_3_n_0 ),
        .O(\A_mantissa_ext[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_mantissa_ext[6]_i_3 
       (.I0(\A_mantissa_ext[6]_i_4_n_0 ),
        .I1(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I2(\A_mantissa_ext[10]_i_4_n_0 ),
        .O(\A_mantissa_ext[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hACACF000)) 
    \A_mantissa_ext[6]_i_4 
       (.I0(\A_mantissa_ext_reg_n_0_[6] ),
        .I1(\A_mantissa_ext_reg_n_0_[22] ),
        .I2(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[14] ),
        .I4(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[7]_i_1 
       (.I0(Q[4]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[8]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[7]_i_2_n_0 ),
        .O(A_mantissa_ext[7]));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \A_mantissa_ext[7]_i_2 
       (.I0(\A_mantissa_ext[9]_i_3_n_0 ),
        .I1(B_exp_s[0]),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[1]),
        .I4(A_exp_s[1]),
        .I5(\A_mantissa_ext[7]_i_3_n_0 ),
        .O(\A_mantissa_ext[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB888888B8B88888)) 
    \A_mantissa_ext[7]_i_3 
       (.I0(\A_mantissa_ext[7]_i_4_n_0 ),
        .I1(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[19] ),
        .I3(\A_mantissa_ext_reg_n_0_[11] ),
        .I4(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I5(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hACACF000)) 
    \A_mantissa_ext[7]_i_4 
       (.I0(\A_mantissa_ext_reg_n_0_[7] ),
        .I1(\A_mantissa_ext_reg_n_0_[23] ),
        .I2(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[15] ),
        .I4(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[8]_i_1 
       (.I0(Q[5]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[9]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[8]_i_2_n_0 ),
        .O(A_mantissa_ext[8]));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \A_mantissa_ext[8]_i_2 
       (.I0(\A_mantissa_ext[10]_i_3_n_0 ),
        .I1(B_exp_s[0]),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[1]),
        .I4(A_exp_s[1]),
        .I5(\A_mantissa_ext[8]_i_3_n_0 ),
        .O(\A_mantissa_ext[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCACAC0C0CAC0CAC0)) 
    \A_mantissa_ext[8]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext[8]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[20] ),
        .I4(\A_mantissa_ext_reg_n_0_[12] ),
        .I5(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hCFC0A0A0)) 
    \A_mantissa_ext[8]_i_4 
       (.I0(\A_mantissa_ext_reg_n_0_[16] ),
        .I1(\A_mantissa_ext_reg_n_0_[8] ),
        .I2(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[24] ),
        .I4(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \A_mantissa_ext[9]_i_1 
       (.I0(Q[6]),
        .I1(state[0]),
        .I2(\A_mantissa_ext[10]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\A_mantissa_ext[9]_i_2_n_0 ),
        .O(A_mantissa_ext[9]));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \A_mantissa_ext[9]_i_2 
       (.I0(\A_mantissa_ext[11]_i_3_n_0 ),
        .I1(B_exp_s[0]),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[1]),
        .I4(A_exp_s[1]),
        .I5(\A_mantissa_ext[9]_i_3_n_0 ),
        .O(\A_mantissa_ext[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCACAC0C0CAC0CAC0)) 
    \A_mantissa_ext[9]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\A_mantissa_ext[9]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[21] ),
        .I4(\A_mantissa_ext_reg_n_0_[13] ),
        .I5(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hCFC0A0A0)) 
    \A_mantissa_ext[9]_i_4 
       (.I0(\A_mantissa_ext_reg_n_0_[17] ),
        .I1(\A_mantissa_ext_reg_n_0_[9] ),
        .I2(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I3(\A_mantissa_ext_reg_n_0_[25] ),
        .I4(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .O(\A_mantissa_ext[9]_i_4_n_0 ));
  FDRE \A_mantissa_ext_reg[0] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[0]),
        .Q(\A_mantissa_ext_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[10] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[10]),
        .Q(\A_mantissa_ext_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[11] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[11]),
        .Q(\A_mantissa_ext_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[12] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[12]),
        .Q(\A_mantissa_ext_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[13] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[13]),
        .Q(\A_mantissa_ext_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[14] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[14]),
        .Q(\A_mantissa_ext_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[15] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[15]),
        .Q(\A_mantissa_ext_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[16] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[16]),
        .Q(\A_mantissa_ext_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[17] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[17]),
        .Q(\A_mantissa_ext_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[18] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[18]),
        .Q(\A_mantissa_ext_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[19] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[19]),
        .Q(\A_mantissa_ext_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[1] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[1]),
        .Q(\A_mantissa_ext_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[20] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[20]),
        .Q(\A_mantissa_ext_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[21] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[21]),
        .Q(\A_mantissa_ext_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[22] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[22]),
        .Q(\A_mantissa_ext_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[23] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[23]),
        .Q(\A_mantissa_ext_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[24] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[24]),
        .Q(\A_mantissa_ext_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[25] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[25]),
        .Q(\A_mantissa_ext_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[26] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[26]),
        .Q(\A_mantissa_ext_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[2] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[2]),
        .Q(\A_mantissa_ext_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[3] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[3]),
        .Q(\A_mantissa_ext_reg_n_0_[3] ),
        .R(1'b0));
  MUXF7 \A_mantissa_ext_reg[3]_i_3 
       (.I0(\A_mantissa_ext[3]_i_4_n_0 ),
        .I1(\A_mantissa_ext[3]_i_5_n_0 ),
        .O(\A_mantissa_ext_reg[3]_i_3_n_0 ),
        .S(\Control_Unit.shift_amount[2]_i_4_n_0 ));
  FDRE \A_mantissa_ext_reg[4] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[4]),
        .Q(\A_mantissa_ext_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[5] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[5]),
        .Q(\A_mantissa_ext_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[6] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[6]),
        .Q(\A_mantissa_ext_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[7] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[7]),
        .Q(\A_mantissa_ext_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[8] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[8]),
        .Q(\A_mantissa_ext_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \A_mantissa_ext_reg[9] 
       (.C(clk),
        .CE(A_mantissa_ext0),
        .D(A_mantissa_ext[9]),
        .Q(\A_mantissa_ext_reg_n_0_[9] ),
        .R(1'b0));
  FDRE A_sgn_reg
       (.C(clk),
        .CE(A_exp_s0),
        .D(Q[31]),
        .Q(A_sgn__0),
        .R(1'b0));
  FDRE \B_exp_s_reg[0] 
       (.C(clk),
        .CE(A_exp_s0),
        .D(B_sgn_reg_0[23]),
        .Q(B_exp_s[0]),
        .R(1'b0));
  FDRE \B_exp_s_reg[1] 
       (.C(clk),
        .CE(A_exp_s0),
        .D(B_sgn_reg_0[24]),
        .Q(B_exp_s[1]),
        .R(1'b0));
  FDRE \B_exp_s_reg[2] 
       (.C(clk),
        .CE(A_exp_s0),
        .D(B_sgn_reg_0[25]),
        .Q(B_exp_s[2]),
        .R(1'b0));
  FDRE \B_exp_s_reg[3] 
       (.C(clk),
        .CE(A_exp_s0),
        .D(B_sgn_reg_0[26]),
        .Q(B_exp_s[3]),
        .R(1'b0));
  FDRE \B_exp_s_reg[4] 
       (.C(clk),
        .CE(A_exp_s0),
        .D(B_sgn_reg_0[27]),
        .Q(B_exp_s[4]),
        .R(1'b0));
  FDRE \B_exp_s_reg[5] 
       (.C(clk),
        .CE(A_exp_s0),
        .D(B_sgn_reg_0[28]),
        .Q(B_exp_s[5]),
        .R(1'b0));
  FDRE \B_exp_s_reg[6] 
       (.C(clk),
        .CE(A_exp_s0),
        .D(B_sgn_reg_0[29]),
        .Q(B_exp_s[6]),
        .R(1'b0));
  FDRE \B_exp_s_reg[7] 
       (.C(clk),
        .CE(A_exp_s0),
        .D(B_sgn_reg_0[30]),
        .Q(B_exp_s[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h30505030)) 
    \B_mantissa_ext[0]_i_1 
       (.I0(\B_mantissa_ext[1]_i_2_n_0 ),
        .I1(\B_mantissa_ext[0]_i_2_n_0 ),
        .I2(state[1]),
        .I3(B_exp_s[0]),
        .I4(A_exp_s[0]),
        .O(B_mantissa_ext[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \B_mantissa_ext[0]_i_2 
       (.I0(\B_mantissa_ext[2]_i_3_n_0 ),
        .I1(\Control_Unit.shift_amount[1]_i_3_n_0 ),
        .I2(\B_mantissa_ext[0]_i_3_n_0 ),
        .I3(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I4(\B_mantissa_ext[0]_i_4_n_0 ),
        .O(\B_mantissa_ext[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_mantissa_ext[0]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[24] ),
        .I1(\B_mantissa_ext_reg_n_0_[8] ),
        .I2(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I3(\B_mantissa_ext_reg_n_0_[16] ),
        .I4(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I5(\B_mantissa_ext_reg_n_0_[0] ),
        .O(\B_mantissa_ext[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF5F5303F)) 
    \B_mantissa_ext[0]_i_4 
       (.I0(\B_mantissa_ext_reg_n_0_[12] ),
        .I1(\B_mantissa_ext_reg_n_0_[20] ),
        .I2(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I3(\B_mantissa_ext_reg_n_0_[4] ),
        .I4(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .O(\B_mantissa_ext[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[10]_i_1 
       (.I0(B_sgn_reg_0[7]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[11]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[10]_i_2_n_0 ),
        .O(B_mantissa_ext[10]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[10]_i_2 
       (.I0(\B_mantissa_ext[12]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[10]_i_3_n_0 ),
        .O(\B_mantissa_ext[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \B_mantissa_ext[10]_i_3 
       (.I0(\B_mantissa_ext[10]_i_4_n_0 ),
        .I1(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I2(\B_mantissa_ext_reg_n_0_[22] ),
        .I3(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[14] ),
        .I5(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .O(\B_mantissa_ext[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0A0ACFC0)) 
    \B_mantissa_ext[10]_i_4 
       (.I0(\B_mantissa_ext_reg_n_0_[18] ),
        .I1(\B_mantissa_ext_reg_n_0_[26] ),
        .I2(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I3(\B_mantissa_ext_reg_n_0_[10] ),
        .I4(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .O(\B_mantissa_ext[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[11]_i_1 
       (.I0(B_sgn_reg_0[8]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[12]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[11]_i_2_n_0 ),
        .O(B_mantissa_ext[11]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[11]_i_2 
       (.I0(\B_mantissa_ext[13]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[11]_i_3_n_0 ),
        .O(\B_mantissa_ext[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2230FFFF22300000)) 
    \B_mantissa_ext[11]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[19] ),
        .I1(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I2(\B_mantissa_ext_reg_n_0_[11] ),
        .I3(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I4(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I5(\B_mantissa_ext[11]_i_4_n_0 ),
        .O(\B_mantissa_ext[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \B_mantissa_ext[11]_i_4 
       (.I0(\B_mantissa_ext_reg_n_0_[23] ),
        .I1(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I2(\B_mantissa_ext_reg_n_0_[15] ),
        .I3(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .O(\B_mantissa_ext[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[12]_i_1 
       (.I0(B_sgn_reg_0[9]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[13]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[12]_i_2_n_0 ),
        .O(B_mantissa_ext[12]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[12]_i_2 
       (.I0(\B_mantissa_ext[14]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[12]_i_3_n_0 ),
        .O(\B_mantissa_ext[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \B_mantissa_ext[12]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[20] ),
        .I1(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I2(\B_mantissa_ext_reg_n_0_[12] ),
        .I3(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I4(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I5(\B_mantissa_ext[12]_i_4_n_0 ),
        .O(\B_mantissa_ext[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \B_mantissa_ext[12]_i_4 
       (.I0(\B_mantissa_ext_reg_n_0_[24] ),
        .I1(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I2(\B_mantissa_ext_reg_n_0_[16] ),
        .I3(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .O(\B_mantissa_ext[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[13]_i_1 
       (.I0(B_sgn_reg_0[10]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[14]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[13]_i_2_n_0 ),
        .O(B_mantissa_ext[13]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[13]_i_2 
       (.I0(\B_mantissa_ext[15]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[13]_i_3_n_0 ),
        .O(\B_mantissa_ext[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \B_mantissa_ext[13]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[21] ),
        .I1(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I2(\B_mantissa_ext_reg_n_0_[13] ),
        .I3(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I4(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I5(\B_mantissa_ext[13]_i_4_n_0 ),
        .O(\B_mantissa_ext[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \B_mantissa_ext[13]_i_4 
       (.I0(\B_mantissa_ext_reg_n_0_[25] ),
        .I1(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I2(\B_mantissa_ext_reg_n_0_[17] ),
        .I3(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .O(\B_mantissa_ext[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[14]_i_1 
       (.I0(B_sgn_reg_0[11]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[15]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[14]_i_2_n_0 ),
        .O(B_mantissa_ext[14]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[14]_i_2 
       (.I0(\B_mantissa_ext[16]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[14]_i_3_n_0 ),
        .O(\B_mantissa_ext[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \B_mantissa_ext[14]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[22] ),
        .I1(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I2(\B_mantissa_ext_reg_n_0_[14] ),
        .I3(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I4(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I5(\B_mantissa_ext[14]_i_4_n_0 ),
        .O(\B_mantissa_ext[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \B_mantissa_ext[14]_i_4 
       (.I0(\B_mantissa_ext_reg_n_0_[26] ),
        .I1(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I2(\B_mantissa_ext_reg_n_0_[18] ),
        .I3(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .O(\B_mantissa_ext[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[15]_i_1 
       (.I0(B_sgn_reg_0[12]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[16]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[15]_i_2_n_0 ),
        .O(B_mantissa_ext[15]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[15]_i_2 
       (.I0(\B_mantissa_ext[17]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[15]_i_3_n_0 ),
        .O(\B_mantissa_ext[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00A000A000CF00C0)) 
    \B_mantissa_ext[15]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[23] ),
        .I1(\B_mantissa_ext_reg_n_0_[15] ),
        .I2(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[19] ),
        .I5(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .O(\B_mantissa_ext[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[16]_i_1 
       (.I0(B_sgn_reg_0[13]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[17]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[16]_i_2_n_0 ),
        .O(B_mantissa_ext[16]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[16]_i_2 
       (.I0(\B_mantissa_ext[18]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[16]_i_3_n_0 ),
        .O(\B_mantissa_ext[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00A000A000CF00C0)) 
    \B_mantissa_ext[16]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[24] ),
        .I1(\B_mantissa_ext_reg_n_0_[16] ),
        .I2(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[20] ),
        .I5(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .O(\B_mantissa_ext[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[17]_i_1 
       (.I0(B_sgn_reg_0[14]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[18]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[17]_i_2_n_0 ),
        .O(B_mantissa_ext[17]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[17]_i_2 
       (.I0(\B_mantissa_ext[19]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[17]_i_3_n_0 ),
        .O(\B_mantissa_ext[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00A000A000CF00C0)) 
    \B_mantissa_ext[17]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[25] ),
        .I1(\B_mantissa_ext_reg_n_0_[17] ),
        .I2(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[21] ),
        .I5(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .O(\B_mantissa_ext[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[18]_i_1 
       (.I0(B_sgn_reg_0[15]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[19]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[18]_i_2_n_0 ),
        .O(B_mantissa_ext[18]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[18]_i_2 
       (.I0(\B_mantissa_ext[20]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[18]_i_3_n_0 ),
        .O(\B_mantissa_ext[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00A000A000CF00C0)) 
    \B_mantissa_ext[18]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[26] ),
        .I1(\B_mantissa_ext_reg_n_0_[18] ),
        .I2(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[22] ),
        .I5(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .O(\B_mantissa_ext[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[19]_i_1 
       (.I0(B_sgn_reg_0[16]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[20]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[19]_i_2_n_0 ),
        .O(B_mantissa_ext[19]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[19]_i_2 
       (.I0(\B_mantissa_ext[21]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[19]_i_3_n_0 ),
        .O(\B_mantissa_ext[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \B_mantissa_ext[19]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[19] ),
        .I1(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I3(\B_mantissa_ext_reg_n_0_[23] ),
        .I4(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .O(\B_mantissa_ext[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30505030)) 
    \B_mantissa_ext[1]_i_1 
       (.I0(\B_mantissa_ext[2]_i_2_n_0 ),
        .I1(\B_mantissa_ext[1]_i_2_n_0 ),
        .I2(state[1]),
        .I3(B_exp_s[0]),
        .I4(A_exp_s[0]),
        .O(B_mantissa_ext[1]));
  LUT5 #(
    .INIT(32'h74447477)) 
    \B_mantissa_ext[1]_i_2 
       (.I0(\B_mantissa_ext[3]_i_3_n_0 ),
        .I1(\Control_Unit.shift_amount[1]_i_3_n_0 ),
        .I2(\B_mantissa_ext[1]_i_3_n_0 ),
        .I3(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I4(\B_mantissa_ext[1]_i_4_n_0 ),
        .O(\B_mantissa_ext[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_mantissa_ext[1]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[25] ),
        .I1(\B_mantissa_ext_reg_n_0_[9] ),
        .I2(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I3(\B_mantissa_ext_reg_n_0_[17] ),
        .I4(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I5(\B_mantissa_ext_reg_n_0_[1] ),
        .O(\B_mantissa_ext[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \B_mantissa_ext[1]_i_4 
       (.I0(\B_mantissa_ext_reg_n_0_[13] ),
        .I1(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I2(\B_mantissa_ext_reg_n_0_[21] ),
        .I3(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[5] ),
        .O(\B_mantissa_ext[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[20]_i_1 
       (.I0(B_sgn_reg_0[17]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[21]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[20]_i_2_n_0 ),
        .O(B_mantissa_ext[20]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[20]_i_2 
       (.I0(\B_mantissa_ext[22]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[20]_i_3_n_0 ),
        .O(\B_mantissa_ext[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \B_mantissa_ext[20]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[20] ),
        .I1(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I3(\B_mantissa_ext_reg_n_0_[24] ),
        .I4(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .O(\B_mantissa_ext[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[21]_i_1 
       (.I0(B_sgn_reg_0[18]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[22]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[21]_i_2_n_0 ),
        .O(B_mantissa_ext[21]));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \B_mantissa_ext[21]_i_2 
       (.I0(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I1(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I2(\B_mantissa_ext_reg_n_0_[23] ),
        .I3(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I4(\Control_Unit.shift_amount[1]_i_3_n_0 ),
        .I5(\B_mantissa_ext[21]_i_3_n_0 ),
        .O(\B_mantissa_ext[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \B_mantissa_ext[21]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[21] ),
        .I1(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I3(\B_mantissa_ext_reg_n_0_[25] ),
        .I4(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .O(\B_mantissa_ext[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[22]_i_1 
       (.I0(B_sgn_reg_0[19]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[23]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[22]_i_2_n_0 ),
        .O(B_mantissa_ext[22]));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    \B_mantissa_ext[22]_i_2 
       (.I0(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I1(\B_mantissa_ext_reg_n_0_[24] ),
        .I2(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I3(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I4(\Control_Unit.shift_amount[1]_i_3_n_0 ),
        .I5(\B_mantissa_ext[22]_i_3_n_0 ),
        .O(\B_mantissa_ext[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \B_mantissa_ext[22]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[22] ),
        .I1(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I3(\B_mantissa_ext_reg_n_0_[26] ),
        .I4(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .O(\B_mantissa_ext[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[23]_i_1 
       (.I0(B_sgn_reg_0[20]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[24]_i_3_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[23]_i_2_n_0 ),
        .O(B_mantissa_ext[23]));
  LUT6 #(
    .INIT(64'h0000000000B00080)) 
    \B_mantissa_ext[23]_i_2 
       (.I0(\B_mantissa_ext_reg_n_0_[25] ),
        .I1(\Control_Unit.shift_amount[1]_i_3_n_0 ),
        .I2(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I3(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[23] ),
        .I5(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .O(\B_mantissa_ext[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[24]_i_1 
       (.I0(B_sgn_reg_0[21]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[24]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[24]_i_3_n_0 ),
        .O(B_mantissa_ext[24]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \B_mantissa_ext[24]_i_2 
       (.I0(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I1(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I2(\B_mantissa_ext_reg_n_0_[25] ),
        .I3(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I4(\Control_Unit.shift_amount[1]_i_3_n_0 ),
        .O(\B_mantissa_ext[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000B0800000000)) 
    \B_mantissa_ext[24]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[26] ),
        .I1(\Control_Unit.shift_amount[1]_i_3_n_0 ),
        .I2(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I3(\B_mantissa_ext_reg_n_0_[24] ),
        .I4(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I5(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .O(\B_mantissa_ext[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \B_mantissa_ext[25]_i_1 
       (.I0(B_sgn_reg_0[22]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[25]_i_2_n_0 ),
        .I3(\B_mantissa_ext[25]_i_3_n_0 ),
        .I4(\B_mantissa_ext[25]_i_4_n_0 ),
        .I5(\Control_Unit.shift_amount[1]_i_3_n_0 ),
        .O(B_mantissa_ext[25]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \B_mantissa_ext[25]_i_2 
       (.I0(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I1(\B_mantissa_ext_reg_n_0_[26] ),
        .I2(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I3(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .O(\B_mantissa_ext[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \B_mantissa_ext[25]_i_3 
       (.I0(A_exp_s[0]),
        .I1(B_exp_s[0]),
        .O(\B_mantissa_ext[25]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \B_mantissa_ext[25]_i_4 
       (.I0(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I1(\B_mantissa_ext_reg_n_0_[25] ),
        .I2(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I3(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .O(\B_mantissa_ext[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFAAAAAAAAAAAA)) 
    \B_mantissa_ext[26]_i_1 
       (.I0(A_exp_s0),
        .I1(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I3(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I4(\B_mantissa_ext[26]_i_3_n_0 ),
        .I5(\state1_inferred__0/i__carry_n_0 ),
        .O(B_mantissa_ext0));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \B_mantissa_ext[26]_i_2 
       (.I0(state[0]),
        .I1(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I2(\B_mantissa_ext_reg_n_0_[26] ),
        .I3(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I4(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I5(\B_mantissa_ext[26]_i_4_n_0 ),
        .O(B_mantissa_ext[26]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \B_mantissa_ext[26]_i_3 
       (.I0(rst_fp),
        .I1(state[1]),
        .I2(state[0]),
        .O(\B_mantissa_ext[26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \B_mantissa_ext[26]_i_4 
       (.I0(B_exp_s[1]),
        .I1(A_exp_s[1]),
        .I2(B_exp_s[0]),
        .I3(A_exp_s[0]),
        .O(\B_mantissa_ext[26]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30A0A030)) 
    \B_mantissa_ext[2]_i_1 
       (.I0(\B_mantissa_ext[3]_i_2_n_0 ),
        .I1(\B_mantissa_ext[2]_i_2_n_0 ),
        .I2(state[1]),
        .I3(B_exp_s[0]),
        .I4(A_exp_s[0]),
        .O(B_mantissa_ext[2]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[2]_i_2 
       (.I0(\B_mantissa_ext[4]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[2]_i_3_n_0 ),
        .O(\B_mantissa_ext[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \B_mantissa_ext[2]_i_3 
       (.I0(\B_mantissa_ext[2]_i_4_n_0 ),
        .I1(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I2(\B_mantissa_ext[6]_i_4_n_0 ),
        .O(\B_mantissa_ext[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_mantissa_ext[2]_i_4 
       (.I0(\B_mantissa_ext_reg_n_0_[26] ),
        .I1(\B_mantissa_ext_reg_n_0_[10] ),
        .I2(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I3(\B_mantissa_ext_reg_n_0_[18] ),
        .I4(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I5(\B_mantissa_ext_reg_n_0_[2] ),
        .O(\B_mantissa_ext[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[3]_i_1 
       (.I0(B_sgn_reg_0[0]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[4]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[3]_i_2_n_0 ),
        .O(B_mantissa_ext[3]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[3]_i_2 
       (.I0(\B_mantissa_ext[5]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[3]_i_3_n_0 ),
        .O(\B_mantissa_ext[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_mantissa_ext[3]_i_3 
       (.I0(\B_mantissa_ext[3]_i_4_n_0 ),
        .I1(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I2(\B_mantissa_ext[7]_i_4_n_0 ),
        .O(\B_mantissa_ext[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0F00ACAC)) 
    \B_mantissa_ext[3]_i_4 
       (.I0(\B_mantissa_ext_reg_n_0_[19] ),
        .I1(\B_mantissa_ext_reg_n_0_[3] ),
        .I2(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I3(\B_mantissa_ext_reg_n_0_[11] ),
        .I4(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .O(\B_mantissa_ext[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[4]_i_1 
       (.I0(B_sgn_reg_0[1]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[5]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[4]_i_2_n_0 ),
        .O(B_mantissa_ext[4]));
  LUT6 #(
    .INIT(64'h3AA3A33A3AA33AA3)) 
    \B_mantissa_ext[4]_i_2 
       (.I0(\B_mantissa_ext[6]_i_3_n_0 ),
        .I1(\B_mantissa_ext[4]_i_3_n_0 ),
        .I2(B_exp_s[1]),
        .I3(A_exp_s[1]),
        .I4(A_exp_s[0]),
        .I5(B_exp_s[0]),
        .O(\B_mantissa_ext[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \B_mantissa_ext[4]_i_3 
       (.I0(\B_mantissa_ext[8]_i_4_n_0 ),
        .I1(\B_mantissa_ext[0]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .O(\B_mantissa_ext[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[5]_i_1 
       (.I0(B_sgn_reg_0[2]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[6]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[5]_i_2_n_0 ),
        .O(B_mantissa_ext[5]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[5]_i_2 
       (.I0(\B_mantissa_ext[7]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[5]_i_3_n_0 ),
        .O(\B_mantissa_ext[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_mantissa_ext[5]_i_3 
       (.I0(\B_mantissa_ext[1]_i_4_n_0 ),
        .I1(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I2(\B_mantissa_ext[9]_i_4_n_0 ),
        .O(\B_mantissa_ext[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[6]_i_1 
       (.I0(B_sgn_reg_0[3]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[7]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[6]_i_2_n_0 ),
        .O(B_mantissa_ext[6]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[6]_i_2 
       (.I0(\B_mantissa_ext[8]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[6]_i_3_n_0 ),
        .O(\B_mantissa_ext[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \B_mantissa_ext[6]_i_3 
       (.I0(\B_mantissa_ext[10]_i_4_n_0 ),
        .I1(\B_mantissa_ext[6]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .O(\B_mantissa_ext[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF5F503F3)) 
    \B_mantissa_ext[6]_i_4 
       (.I0(\B_mantissa_ext_reg_n_0_[22] ),
        .I1(\B_mantissa_ext_reg_n_0_[6] ),
        .I2(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I3(\B_mantissa_ext_reg_n_0_[14] ),
        .I4(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .O(\B_mantissa_ext[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[7]_i_1 
       (.I0(B_sgn_reg_0[4]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[8]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[7]_i_2_n_0 ),
        .O(B_mantissa_ext[7]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[7]_i_2 
       (.I0(\B_mantissa_ext[9]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[7]_i_3_n_0 ),
        .O(\B_mantissa_ext[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88B888B888BB8888)) 
    \B_mantissa_ext[7]_i_3 
       (.I0(\B_mantissa_ext[7]_i_4_n_0 ),
        .I1(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I2(\B_mantissa_ext_reg_n_0_[19] ),
        .I3(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[11] ),
        .I5(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .O(\B_mantissa_ext[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \B_mantissa_ext[7]_i_4 
       (.I0(\B_mantissa_ext_reg_n_0_[15] ),
        .I1(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I2(\B_mantissa_ext_reg_n_0_[23] ),
        .I3(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[7] ),
        .O(\B_mantissa_ext[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[8]_i_1 
       (.I0(B_sgn_reg_0[5]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[9]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[8]_i_2_n_0 ),
        .O(B_mantissa_ext[8]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[8]_i_2 
       (.I0(\B_mantissa_ext[10]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[8]_i_3_n_0 ),
        .O(\B_mantissa_ext[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00B800B8)) 
    \B_mantissa_ext[8]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[20] ),
        .I1(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I2(\B_mantissa_ext_reg_n_0_[12] ),
        .I3(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I4(\B_mantissa_ext[8]_i_4_n_0 ),
        .I5(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .O(\B_mantissa_ext[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hF5F5303F)) 
    \B_mantissa_ext[8]_i_4 
       (.I0(\B_mantissa_ext_reg_n_0_[16] ),
        .I1(\B_mantissa_ext_reg_n_0_[24] ),
        .I2(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I3(\B_mantissa_ext_reg_n_0_[8] ),
        .I4(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .O(\B_mantissa_ext[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \B_mantissa_ext[9]_i_1 
       (.I0(B_sgn_reg_0[6]),
        .I1(state[0]),
        .I2(\B_mantissa_ext[10]_i_2_n_0 ),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[9]_i_2_n_0 ),
        .O(B_mantissa_ext[9]));
  LUT6 #(
    .INIT(64'hEBBEEBEB28822828)) 
    \B_mantissa_ext[9]_i_2 
       (.I0(\B_mantissa_ext[11]_i_3_n_0 ),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[1]),
        .I3(A_exp_s[0]),
        .I4(B_exp_s[0]),
        .I5(\B_mantissa_ext[9]_i_3_n_0 ),
        .O(\B_mantissa_ext[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \B_mantissa_ext[9]_i_3 
       (.I0(\B_mantissa_ext[9]_i_4_n_0 ),
        .I1(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I2(\B_mantissa_ext_reg_n_0_[21] ),
        .I3(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[13] ),
        .I5(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .O(\B_mantissa_ext[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h0A0ACFC0)) 
    \B_mantissa_ext[9]_i_4 
       (.I0(\B_mantissa_ext_reg_n_0_[17] ),
        .I1(\B_mantissa_ext_reg_n_0_[25] ),
        .I2(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I3(\B_mantissa_ext_reg_n_0_[9] ),
        .I4(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .O(\B_mantissa_ext[9]_i_4_n_0 ));
  FDRE \B_mantissa_ext_reg[0] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[0]),
        .Q(\B_mantissa_ext_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[10] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[10]),
        .Q(\B_mantissa_ext_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[11] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[11]),
        .Q(\B_mantissa_ext_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[12] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[12]),
        .Q(\B_mantissa_ext_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[13] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[13]),
        .Q(\B_mantissa_ext_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[14] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[14]),
        .Q(\B_mantissa_ext_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[15] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[15]),
        .Q(\B_mantissa_ext_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[16] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[16]),
        .Q(\B_mantissa_ext_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[17] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[17]),
        .Q(\B_mantissa_ext_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[18] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[18]),
        .Q(\B_mantissa_ext_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[19] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[19]),
        .Q(\B_mantissa_ext_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[1] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[1]),
        .Q(\B_mantissa_ext_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[20] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[20]),
        .Q(\B_mantissa_ext_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[21] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[21]),
        .Q(\B_mantissa_ext_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[22] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[22]),
        .Q(\B_mantissa_ext_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[23] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[23]),
        .Q(\B_mantissa_ext_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[24] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[24]),
        .Q(\B_mantissa_ext_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[25] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[25]),
        .Q(\B_mantissa_ext_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[26] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[26]),
        .Q(\B_mantissa_ext_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[2] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[2]),
        .Q(\B_mantissa_ext_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[3] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[3]),
        .Q(\B_mantissa_ext_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[4] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[4]),
        .Q(\B_mantissa_ext_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[5] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[5]),
        .Q(\B_mantissa_ext_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[6] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[6]),
        .Q(\B_mantissa_ext_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[7] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[7]),
        .Q(\B_mantissa_ext_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[8] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[8]),
        .Q(\B_mantissa_ext_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_mantissa_ext_reg[9] 
       (.C(clk),
        .CE(B_mantissa_ext0),
        .D(B_mantissa_ext[9]),
        .Q(\B_mantissa_ext_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    B_sgn_i_1
       (.I0(B_sgn_reg_1),
        .I1(B_sgn_reg_0[31]),
        .O(B_sgn_i_1_n_0));
  FDRE B_sgn_reg
       (.C(clk),
        .CE(A_exp_s0),
        .D(B_sgn_i_1_n_0),
        .Q(B_sgn),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4774)) 
    \Control_Unit.shift_amount[0]_i_1 
       (.I0(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[0]),
        .O(shift_amount[0]));
  LUT6 #(
    .INIT(64'h000B0000000B000B)) 
    \Control_Unit.shift_amount[0]_i_2 
       (.I0(\final_mantissa_reg_n_0_[25] ),
        .I1(\final_mantissa_reg_n_0_[24] ),
        .I2(\Control_Unit.shift_amount[0]_i_3_n_0 ),
        .I3(\final_mantissa_reg_n_0_[26] ),
        .I4(\Control_Unit.shift_amount[0]_i_4_n_0 ),
        .I5(\Control_Unit.shift_amount[0]_i_5_n_0 ),
        .O(\Control_Unit.shift_amount[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555500005510)) 
    \Control_Unit.shift_amount[0]_i_3 
       (.I0(\final_mantissa[26]_i_10_n_0 ),
        .I1(\final_mantissa_reg_n_0_[19] ),
        .I2(\final_mantissa_reg_n_0_[18] ),
        .I3(\final_mantissa_reg_n_0_[20] ),
        .I4(\final_mantissa_reg_n_0_[21] ),
        .I5(\final_mantissa_reg_n_0_[22] ),
        .O(\Control_Unit.shift_amount[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBABBBABBBABA)) 
    \Control_Unit.shift_amount[0]_i_4 
       (.I0(\Control_Unit.shift_amount[0]_i_6_n_0 ),
        .I1(\final_exp_s[8]_i_5_n_0 ),
        .I2(\final_mantissa_reg_n_0_[7] ),
        .I3(\final_mantissa_reg_n_0_[6] ),
        .I4(\final_mantissa_reg_n_0_[5] ),
        .I5(\Control_Unit.shift_amount[0]_i_7_n_0 ),
        .O(\Control_Unit.shift_amount[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FFAB)) 
    \Control_Unit.shift_amount[0]_i_5 
       (.I0(\Control_Unit.shift_amount[0]_i_8_n_0 ),
        .I1(\Control_Unit.shift_amount[4]_i_11_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_9_n_0 ),
        .I3(\final_mantissa_reg_n_0_[14] ),
        .I4(\final_mantissa_reg_n_0_[15] ),
        .I5(\final_mantissa_reg_n_0_[16] ),
        .O(\Control_Unit.shift_amount[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Control_Unit.shift_amount[0]_i_6 
       (.I0(\final_mantissa_reg_n_0_[24] ),
        .I1(\final_mantissa_reg_n_0_[25] ),
        .I2(\final_mantissa_reg_n_0_[23] ),
        .I3(\final_mantissa[26]_i_11_n_0 ),
        .O(\Control_Unit.shift_amount[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555555511110001)) 
    \Control_Unit.shift_amount[0]_i_7 
       (.I0(\final_mantissa_reg_n_0_[4] ),
        .I1(\final_mantissa_reg_n_0_[2] ),
        .I2(\final_mantissa_reg_n_0_[0] ),
        .I3(shift_amount__0[0]),
        .I4(\final_mantissa_reg_n_0_[1] ),
        .I5(\final_mantissa_reg_n_0_[3] ),
        .O(\Control_Unit.shift_amount[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF5504)) 
    \Control_Unit.shift_amount[0]_i_8 
       (.I0(\final_mantissa_reg_n_0_[11] ),
        .I1(\final_mantissa_reg_n_0_[8] ),
        .I2(\final_mantissa_reg_n_0_[9] ),
        .I3(\final_mantissa_reg_n_0_[10] ),
        .I4(\final_mantissa_reg_n_0_[12] ),
        .I5(\final_mantissa_reg_n_0_[13] ),
        .O(\Control_Unit.shift_amount[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Control_Unit.shift_amount[0]_i_9 
       (.I0(\final_mantissa_reg_n_0_[12] ),
        .I1(\final_mantissa_reg_n_0_[13] ),
        .O(\Control_Unit.shift_amount[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Control_Unit.shift_amount[1]_i_1 
       (.I0(\Control_Unit.shift_amount[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(\Control_Unit.shift_amount[1]_i_3_n_0 ),
        .I3(\state1_inferred__0/i__carry_n_0 ),
        .I4(\Control_Unit.shift_amount[1]_i_4_n_0 ),
        .O(shift_amount[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Control_Unit.shift_amount[1]_i_10 
       (.I0(\final_mantissa_reg_n_0_[6] ),
        .I1(\final_mantissa_reg_n_0_[7] ),
        .O(\Control_Unit.shift_amount[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5455545454555455)) 
    \Control_Unit.shift_amount[1]_i_2 
       (.I0(\final_mantissa_reg_n_0_[26] ),
        .I1(\final_mantissa_reg_n_0_[24] ),
        .I2(\final_mantissa_reg_n_0_[25] ),
        .I3(\final_mantissa_reg_n_0_[23] ),
        .I4(\Control_Unit.shift_amount[1]_i_5_n_0 ),
        .I5(\Control_Unit.shift_amount[1]_i_6_n_0 ),
        .O(\Control_Unit.shift_amount[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h6966)) 
    \Control_Unit.shift_amount[1]_i_3 
       (.I0(B_exp_s[1]),
        .I1(A_exp_s[1]),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[0]),
        .O(\Control_Unit.shift_amount[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \Control_Unit.shift_amount[1]_i_4 
       (.I0(B_exp_s[0]),
        .I1(A_exp_s[0]),
        .I2(B_exp_s[1]),
        .I3(A_exp_s[1]),
        .O(\Control_Unit.shift_amount[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDDDDDDF)) 
    \Control_Unit.shift_amount[1]_i_5 
       (.I0(\Control_Unit.shift_amount[1]_i_7_n_0 ),
        .I1(\final_mantissa_reg_n_0_[16] ),
        .I2(\Control_Unit.shift_amount[1]_i_8_n_0 ),
        .I3(\final_mantissa_reg_n_0_[14] ),
        .I4(\final_mantissa_reg_n_0_[15] ),
        .I5(\final_mantissa[26]_i_11_n_0 ),
        .O(\Control_Unit.shift_amount[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAFFEF)) 
    \Control_Unit.shift_amount[1]_i_6 
       (.I0(\final_mantissa_reg_n_0_[22] ),
        .I1(\final_mantissa_reg_n_0_[18] ),
        .I2(\final_mantissa_reg_n_0_[17] ),
        .I3(\final_mantissa_reg_n_0_[19] ),
        .I4(\final_mantissa_reg_n_0_[20] ),
        .I5(\final_mantissa_reg_n_0_[21] ),
        .O(\Control_Unit.shift_amount[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF01)) 
    \Control_Unit.shift_amount[1]_i_7 
       (.I0(\Control_Unit.shift_amount[1]_i_9_n_0 ),
        .I1(\final_mantissa_reg_n_0_[4] ),
        .I2(\final_mantissa_reg_n_0_[5] ),
        .I3(\Control_Unit.shift_amount[1]_i_10_n_0 ),
        .I4(\Control_Unit.shift_amount[4]_i_11_n_0 ),
        .I5(\Control_Unit.shift_amount[2]_i_7_n_0 ),
        .O(\Control_Unit.shift_amount[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1110111011101111)) 
    \Control_Unit.shift_amount[1]_i_8 
       (.I0(\final_mantissa_reg_n_0_[13] ),
        .I1(\final_mantissa_reg_n_0_[12] ),
        .I2(\final_mantissa_reg_n_0_[10] ),
        .I3(\final_mantissa_reg_n_0_[11] ),
        .I4(\final_mantissa_reg_n_0_[8] ),
        .I5(\final_mantissa_reg_n_0_[9] ),
        .O(\Control_Unit.shift_amount[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h11111110)) 
    \Control_Unit.shift_amount[1]_i_9 
       (.I0(\final_mantissa_reg_n_0_[3] ),
        .I1(\final_mantissa_reg_n_0_[2] ),
        .I2(\final_mantissa_reg_n_0_[0] ),
        .I3(\final_mantissa_reg_n_0_[1] ),
        .I4(shift_amount__0[1]),
        .O(\Control_Unit.shift_amount[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h47444777)) 
    \Control_Unit.shift_amount[2]_i_1 
       (.I0(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .I3(\state1_inferred__0/i__carry_n_0 ),
        .I4(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .O(shift_amount[2]));
  LUT6 #(
    .INIT(64'hFFFFEFAAAAAAAAAA)) 
    \Control_Unit.shift_amount[2]_i_2 
       (.I0(\final_mantissa_reg_n_0_[26] ),
        .I1(\Control_Unit.shift_amount[3]_i_7_n_0 ),
        .I2(shift_amount__0[2]),
        .I3(\Control_Unit.shift_amount[3]_i_6_n_0 ),
        .I4(\Control_Unit.shift_amount[2]_i_5_n_0 ),
        .I5(\Control_Unit.shift_amount[2]_i_6_n_0 ),
        .O(\Control_Unit.shift_amount[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9699999966669699)) 
    \Control_Unit.shift_amount[2]_i_3 
       (.I0(B_exp_s[2]),
        .I1(A_exp_s[2]),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[0]),
        .I4(B_exp_s[1]),
        .I5(A_exp_s[1]),
        .O(\Control_Unit.shift_amount[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB0FB4F044F04B0FB)) 
    \Control_Unit.shift_amount[2]_i_4 
       (.I0(B_exp_s[0]),
        .I1(A_exp_s[0]),
        .I2(B_exp_s[1]),
        .I3(A_exp_s[1]),
        .I4(B_exp_s[2]),
        .I5(A_exp_s[2]),
        .O(\Control_Unit.shift_amount[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEEFE)) 
    \Control_Unit.shift_amount[2]_i_5 
       (.I0(\final_mantissa[26]_i_11_n_0 ),
        .I1(\final_mantissa[26]_i_10_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_11_n_0 ),
        .I3(\Control_Unit.shift_amount[2]_i_7_n_0 ),
        .I4(\final_mantissa_reg_n_0_[16] ),
        .O(\Control_Unit.shift_amount[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEF)) 
    \Control_Unit.shift_amount[2]_i_6 
       (.I0(\final_mantissa_reg_n_0_[25] ),
        .I1(\final_mantissa_reg_n_0_[24] ),
        .I2(\final_mantissa_reg_n_0_[22] ),
        .I3(\final_mantissa_reg_n_0_[21] ),
        .I4(\final_mantissa_reg_n_0_[20] ),
        .I5(\final_mantissa_reg_n_0_[23] ),
        .O(\Control_Unit.shift_amount[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Control_Unit.shift_amount[2]_i_7 
       (.I0(\final_mantissa_reg_n_0_[15] ),
        .I1(\final_mantissa_reg_n_0_[14] ),
        .I2(\final_mantissa_reg_n_0_[13] ),
        .I3(\final_mantissa_reg_n_0_[12] ),
        .O(\Control_Unit.shift_amount[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00D1FFD1)) 
    \Control_Unit.shift_amount[3]_i_1 
       (.I0(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I1(\state1_inferred__0/i__carry_n_0 ),
        .I2(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(shift_amount[3]));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    \Control_Unit.shift_amount[3]_i_2 
       (.I0(B_exp_s[2]),
        .I1(A_exp_s[2]),
        .I2(\Control_Unit.shift_amount[3]_i_5_n_0 ),
        .I3(B_exp_s[3]),
        .I4(A_exp_s[3]),
        .O(\Control_Unit.shift_amount[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96669996)) 
    \Control_Unit.shift_amount[3]_i_3 
       (.I0(B_exp_s[3]),
        .I1(A_exp_s[3]),
        .I2(\Control_Unit.shift_amount[4]_i_8_n_0 ),
        .I3(B_exp_s[2]),
        .I4(A_exp_s[2]),
        .O(\Control_Unit.shift_amount[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBBFAAAA)) 
    \Control_Unit.shift_amount[3]_i_4 
       (.I0(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I1(\Control_Unit.shift_amount[3]_i_6_n_0 ),
        .I2(\Control_Unit.shift_amount[3]_i_7_n_0 ),
        .I3(shift_amount__0[3]),
        .I4(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .O(\Control_Unit.shift_amount[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \Control_Unit.shift_amount[3]_i_5 
       (.I0(A_exp_s[1]),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[0]),
        .O(\Control_Unit.shift_amount[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Control_Unit.shift_amount[3]_i_6 
       (.I0(\Control_Unit.shift_amount[4]_i_15_n_0 ),
        .I1(\Control_Unit.shift_amount[4]_i_11_n_0 ),
        .I2(\final_mantissa_reg_n_0_[4] ),
        .I3(\final_mantissa_reg_n_0_[5] ),
        .I4(\final_mantissa_reg_n_0_[6] ),
        .I5(\final_mantissa_reg_n_0_[7] ),
        .O(\Control_Unit.shift_amount[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Control_Unit.shift_amount[3]_i_7 
       (.I0(\final_mantissa_reg_n_0_[3] ),
        .I1(\final_mantissa_reg_n_0_[2] ),
        .I2(\final_mantissa_reg_n_0_[1] ),
        .I3(\final_mantissa_reg_n_0_[0] ),
        .O(\Control_Unit.shift_amount[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAFEAAAA)) 
    \Control_Unit.shift_amount[4]_i_1 
       (.I0(\Control_Unit.shift_amount[4]_i_3_n_0 ),
        .I1(\state1_inferred__0/i__carry_n_0 ),
        .I2(\state1_inferred__1/i__carry_n_0 ),
        .I3(rst_fp),
        .I4(state[1]),
        .I5(state[0]),
        .O(shift_amount0));
  LUT4 #(
    .INIT(16'h4F44)) 
    \Control_Unit.shift_amount[4]_i_10 
       (.I0(A_exp_s[2]),
        .I1(B_exp_s[2]),
        .I2(A_exp_s[3]),
        .I3(B_exp_s[3]),
        .O(\Control_Unit.shift_amount[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Control_Unit.shift_amount[4]_i_11 
       (.I0(\final_mantissa_reg_n_0_[9] ),
        .I1(\final_mantissa_reg_n_0_[8] ),
        .I2(\final_mantissa_reg_n_0_[11] ),
        .I3(\final_mantissa_reg_n_0_[10] ),
        .O(\Control_Unit.shift_amount[4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Control_Unit.shift_amount[4]_i_12 
       (.I0(\final_mantissa_reg_n_0_[4] ),
        .I1(\final_mantissa_reg_n_0_[5] ),
        .I2(\final_mantissa_reg_n_0_[6] ),
        .I3(\final_mantissa_reg_n_0_[7] ),
        .I4(\Control_Unit.shift_amount[3]_i_7_n_0 ),
        .O(\Control_Unit.shift_amount[4]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \Control_Unit.shift_amount[4]_i_13 
       (.I0(\final_mantissa_reg_n_0_[17] ),
        .I1(\final_mantissa_reg_n_0_[18] ),
        .I2(\final_mantissa_reg_n_0_[19] ),
        .I3(\Control_Unit.shift_amount[4]_i_15_n_0 ),
        .O(\Control_Unit.shift_amount[4]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Control_Unit.shift_amount[4]_i_14 
       (.I0(\final_mantissa_reg_n_0_[20] ),
        .I1(\final_mantissa_reg_n_0_[21] ),
        .I2(\final_mantissa_reg_n_0_[22] ),
        .I3(\final_mantissa[26]_i_10_n_0 ),
        .I4(\final_mantissa_reg_n_0_[26] ),
        .O(\Control_Unit.shift_amount[4]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Control_Unit.shift_amount[4]_i_15 
       (.I0(\final_mantissa_reg_n_0_[13] ),
        .I1(\final_mantissa_reg_n_0_[12] ),
        .I2(\final_mantissa_reg_n_0_[14] ),
        .I3(\final_mantissa_reg_n_0_[15] ),
        .I4(\final_mantissa_reg_n_0_[16] ),
        .O(\Control_Unit.shift_amount[4]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFF008D8D)) 
    \Control_Unit.shift_amount[4]_i_2 
       (.I0(\state1_inferred__0/i__carry_n_0 ),
        .I1(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I4(\FSM_sequential_state_reg_n_0_[2] ),
        .O(shift_amount[4]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \Control_Unit.shift_amount[4]_i_3 
       (.I0(\final_exp_s[8]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state[0]),
        .I3(p_2_in),
        .I4(\final_mantissa_reg_n_0_[27] ),
        .I5(rst_fp),
        .O(\Control_Unit.shift_amount[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA6AA55A665AA5565)) 
    \Control_Unit.shift_amount[4]_i_4 
       (.I0(\Control_Unit.shift_amount[4]_i_7_n_0 ),
        .I1(A_exp_s[2]),
        .I2(B_exp_s[2]),
        .I3(A_exp_s[3]),
        .I4(B_exp_s[3]),
        .I5(\Control_Unit.shift_amount[4]_i_8_n_0 ),
        .O(\Control_Unit.shift_amount[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9969666699699969)) 
    \Control_Unit.shift_amount[4]_i_5 
       (.I0(A_exp_s[4]),
        .I1(B_exp_s[4]),
        .I2(\Control_Unit.shift_amount[4]_i_9_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_10_n_0 ),
        .I4(B_exp_s[3]),
        .I5(A_exp_s[3]),
        .O(\Control_Unit.shift_amount[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \Control_Unit.shift_amount[4]_i_6 
       (.I0(shift_amount__0[4]),
        .I1(\Control_Unit.shift_amount[4]_i_11_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_12_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I4(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .O(\Control_Unit.shift_amount[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Control_Unit.shift_amount[4]_i_7 
       (.I0(B_exp_s[4]),
        .I1(A_exp_s[4]),
        .O(\Control_Unit.shift_amount[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h44D4)) 
    \Control_Unit.shift_amount[4]_i_8 
       (.I0(A_exp_s[1]),
        .I1(B_exp_s[1]),
        .I2(B_exp_s[0]),
        .I3(A_exp_s[0]),
        .O(\Control_Unit.shift_amount[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4F04FFFF4F044F04)) 
    \Control_Unit.shift_amount[4]_i_9 
       (.I0(B_exp_s[0]),
        .I1(A_exp_s[0]),
        .I2(B_exp_s[1]),
        .I3(A_exp_s[1]),
        .I4(B_exp_s[2]),
        .I5(A_exp_s[2]),
        .O(\Control_Unit.shift_amount[4]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Control_Unit.shift_amount_reg[0] 
       (.C(clk),
        .CE(shift_amount0),
        .D(shift_amount[0]),
        .Q(shift_amount__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Control_Unit.shift_amount_reg[1] 
       (.C(clk),
        .CE(shift_amount0),
        .D(shift_amount[1]),
        .Q(shift_amount__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Control_Unit.shift_amount_reg[2] 
       (.C(clk),
        .CE(shift_amount0),
        .D(shift_amount[2]),
        .Q(shift_amount__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Control_Unit.shift_amount_reg[3] 
       (.C(clk),
        .CE(shift_amount0),
        .D(shift_amount[3]),
        .Q(shift_amount__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Control_Unit.shift_amount_reg[4] 
       (.C(clk),
        .CE(shift_amount0),
        .D(shift_amount[4]),
        .Q(shift_amount__0[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h3154)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\FSM_sequential_state_reg[2]_1 ),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h001C)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h0F03E0E0)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\FSM_sequential_state_reg[2]_1 ),
        .I4(\FSM_sequential_state_reg_n_0_[2] ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02020202F2020202)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\state1_inferred__1/i__carry_n_0 ),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(\state1_inferred__0/i__carry_n_0 ),
        .I3(\Control_Unit.shift_amount[3]_i_3_n_0 ),
        .I4(\Control_Unit.shift_amount[4]_i_4_n_0 ),
        .I5(\Control_Unit.shift_amount[2]_i_3_n_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_5_n_0 ),
        .I1(\Control_Unit.shift_amount[3]_i_2_n_0 ),
        .I2(\Control_Unit.shift_amount[2]_i_4_n_0 ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FB08)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_2 ),
        .I1(\FSM_sequential_state_reg[0]_3 ),
        .I2(\error_n_reg[0] [0]),
        .I3(add_done),
        .I4(\error_n_reg[0] [1]),
        .I5(\FSM_sequential_state_reg[0]_4 ),
        .O(start_pid_reg));
  LUT6 #(
    .INIT(64'hAAAFAAAA80808080)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(\error_n_reg[0] [0]),
        .I1(add_done),
        .I2(\error_n_reg[0] [2]),
        .I3(\FSM_sequential_state_reg[0]_2 ),
        .I4(\error_n_reg[0] [1]),
        .I5(\error_n_reg[0] [3]),
        .O(\FSM_sequential_state_reg[0]_1 ));
  (* FSM_ENCODED_STATES = "unpack_state:001,align_state:010,normalize_state:100,addition_state:011,pack_state:101,wait_state:000,iSTATE:110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_fp),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "unpack_state:001,align_state:010,normalize_state:100,addition_state:011,pack_state:101,wait_state:000,iSTATE:110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_fp),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "unpack_state:001,align_state:010,normalize_state:100,addition_state:011,pack_state:101,wait_state:000,iSTATE:110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_fp),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \control_output_u[31]_i_1 
       (.I0(\error_n_reg[0] [0]),
        .I1(\error_n_reg[0] [1]),
        .I2(\error_n_reg[0] [3]),
        .I3(rst_fp),
        .I4(add_done),
        .O(\FSM_sequential_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFE40)) 
    done_i_1__0
       (.I0(state[1]),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state[0]),
        .I3(add_done),
        .O(done_i_1__0_n_0));
  FDCE done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_fp),
        .D(done_i_1__0_n_0),
        .Q(add_done));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \error_n[31]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(\error_n_reg[0] [3]),
        .I2(\error_n_reg[0] [1]),
        .I3(\error_n_reg[0] [0]),
        .I4(rst_fp),
        .I5(add_done),
        .O(\FSM_sequential_state_reg[2]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 final_exp_s0_carry
       (.CI(1'b0),
        .CO({final_exp_s0_carry_n_0,final_exp_s0_carry_n_1,final_exp_s0_carry_n_2,final_exp_s0_carry_n_3}),
        .CYINIT(p_0_out),
        .DI({\final_exp_s_reg_n_0_[3] ,\final_exp_s_reg_n_0_[2] ,\final_exp_s_reg_n_0_[1] ,\final_exp_s_reg_n_0_[0] }),
        .O(data0[3:0]),
        .S({final_exp_s0_carry_i_2_n_0,final_exp_s0_carry_i_3_n_0,final_exp_s0_carry_i_4_n_0,final_exp_s0_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 final_exp_s0_carry__0
       (.CI(final_exp_s0_carry_n_0),
        .CO({final_exp_s0_carry__0_n_0,final_exp_s0_carry__0_n_1,final_exp_s0_carry__0_n_2,final_exp_s0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\final_exp_s_reg_n_0_[6] ,p_2_in,final_exp_s0_carry__0_i_1_n_0,\final_exp_s_reg_n_0_[4] }),
        .O(data0[7:4]),
        .S({final_exp_s0_carry__0_i_2_n_0,final_exp_s0_carry__0_i_3_n_0,final_exp_s0_carry__0_i_4_n_0,final_exp_s0_carry__0_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    final_exp_s0_carry__0_i_1
       (.I0(p_2_in),
        .O(final_exp_s0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    final_exp_s0_carry__0_i_2
       (.I0(\final_exp_s_reg_n_0_[6] ),
        .I1(\final_exp_s_reg_n_0_[7] ),
        .O(final_exp_s0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    final_exp_s0_carry__0_i_3
       (.I0(p_2_in),
        .I1(\final_exp_s_reg_n_0_[6] ),
        .O(final_exp_s0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    final_exp_s0_carry__0_i_4
       (.I0(p_2_in),
        .I1(\final_exp_s_reg_n_0_[5] ),
        .O(final_exp_s0_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hA9)) 
    final_exp_s0_carry__0_i_5
       (.I0(\final_exp_s_reg_n_0_[4] ),
        .I1(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I2(p_2_in),
        .O(final_exp_s0_carry__0_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 final_exp_s0_carry__1
       (.CI(final_exp_s0_carry__0_n_0),
        .CO(NLW_final_exp_s0_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_final_exp_s0_carry__1_O_UNCONNECTED[3:1],data0[8]}),
        .S({1'b0,1'b0,1'b0,final_exp_s0_carry__1_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    final_exp_s0_carry__1_i_1
       (.I0(\final_exp_s_reg_n_0_[7] ),
        .I1(\final_exp_s_reg_n_0_[8] ),
        .O(final_exp_s0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    final_exp_s0_carry_i_1
       (.I0(p_2_in),
        .O(p_0_out));
  LUT3 #(
    .INIT(8'h9A)) 
    final_exp_s0_carry_i_2
       (.I0(\final_exp_s_reg_n_0_[3] ),
        .I1(p_2_in),
        .I2(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(final_exp_s0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    final_exp_s0_carry_i_3
       (.I0(\final_exp_s_reg_n_0_[2] ),
        .I1(p_2_in),
        .I2(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .O(final_exp_s0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    final_exp_s0_carry_i_4
       (.I0(\final_exp_s_reg_n_0_[1] ),
        .I1(p_2_in),
        .I2(\final_mantissa[1]_i_3_n_0 ),
        .O(final_exp_s0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    final_exp_s0_carry_i_5
       (.I0(\final_exp_s_reg_n_0_[0] ),
        .I1(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I2(p_2_in),
        .O(final_exp_s0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \final_exp_s[0]_i_1 
       (.I0(data0[0]),
        .I1(\final_exp_s[8]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(A_exp_s[0]),
        .I4(\A_mantissa_ext[26]_i_3_n_0 ),
        .I5(B_exp_s[0]),
        .O(\final_exp_s[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \final_exp_s[1]_i_1 
       (.I0(data0[1]),
        .I1(\final_exp_s[8]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(A_exp_s[1]),
        .I4(\A_mantissa_ext[26]_i_3_n_0 ),
        .I5(B_exp_s[1]),
        .O(\final_exp_s[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \final_exp_s[2]_i_1 
       (.I0(data0[2]),
        .I1(\final_exp_s[8]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(A_exp_s[2]),
        .I4(\A_mantissa_ext[26]_i_3_n_0 ),
        .I5(B_exp_s[2]),
        .O(\final_exp_s[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \final_exp_s[3]_i_1 
       (.I0(data0[3]),
        .I1(\final_exp_s[8]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(A_exp_s[3]),
        .I4(\A_mantissa_ext[26]_i_3_n_0 ),
        .I5(B_exp_s[3]),
        .O(\final_exp_s[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \final_exp_s[4]_i_1 
       (.I0(data0[4]),
        .I1(\final_exp_s[8]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(A_exp_s[4]),
        .I4(\A_mantissa_ext[26]_i_3_n_0 ),
        .I5(B_exp_s[4]),
        .O(\final_exp_s[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \final_exp_s[5]_i_1 
       (.I0(data0[5]),
        .I1(\final_exp_s[8]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(A_exp_s[5]),
        .I4(\A_mantissa_ext[26]_i_3_n_0 ),
        .I5(B_exp_s[5]),
        .O(\final_exp_s[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \final_exp_s[6]_i_1 
       (.I0(data0[6]),
        .I1(\final_exp_s[8]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(A_exp_s[6]),
        .I4(\A_mantissa_ext[26]_i_3_n_0 ),
        .I5(B_exp_s[6]),
        .O(\final_exp_s[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \final_exp_s[7]_i_1 
       (.I0(data0[7]),
        .I1(\final_exp_s[8]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(A_exp_s[7]),
        .I4(\A_mantissa_ext[26]_i_3_n_0 ),
        .I5(B_exp_s[7]),
        .O(\final_exp_s[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1111111110001010)) 
    \final_exp_s[8]_i_1 
       (.I0(rst_fp),
        .I1(state[0]),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(p_2_in),
        .I4(\final_mantissa_reg_n_0_[27] ),
        .I5(state[1]),
        .O(\final_exp_s[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \final_exp_s[8]_i_2 
       (.I0(data0[8]),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(\final_exp_s[8]_i_3_n_0 ),
        .O(\final_exp_s[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \final_exp_s[8]_i_3 
       (.I0(\Control_Unit.shift_amount[4]_i_12_n_0 ),
        .I1(\final_exp_s[8]_i_4_n_0 ),
        .I2(\final_mantissa[26]_i_11_n_0 ),
        .I3(\final_mantissa_reg_n_0_[27] ),
        .I4(p_2_in),
        .I5(\final_exp_s[8]_i_5_n_0 ),
        .O(\final_exp_s[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \final_exp_s[8]_i_4 
       (.I0(\final_mantissa_reg_n_0_[26] ),
        .I1(\final_mantissa_reg_n_0_[24] ),
        .I2(\final_mantissa_reg_n_0_[25] ),
        .I3(\final_mantissa_reg_n_0_[23] ),
        .O(\final_exp_s[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \final_exp_s[8]_i_5 
       (.I0(\Control_Unit.shift_amount[4]_i_11_n_0 ),
        .I1(\final_mantissa_reg_n_0_[16] ),
        .I2(\final_mantissa_reg_n_0_[15] ),
        .I3(\final_mantissa_reg_n_0_[14] ),
        .I4(\final_mantissa_reg_n_0_[12] ),
        .I5(\final_mantissa_reg_n_0_[13] ),
        .O(\final_exp_s[8]_i_5_n_0 ));
  FDRE \final_exp_s_reg[0] 
       (.C(clk),
        .CE(\final_exp_s[8]_i_1_n_0 ),
        .D(\final_exp_s[0]_i_1_n_0 ),
        .Q(\final_exp_s_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \final_exp_s_reg[1] 
       (.C(clk),
        .CE(\final_exp_s[8]_i_1_n_0 ),
        .D(\final_exp_s[1]_i_1_n_0 ),
        .Q(\final_exp_s_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \final_exp_s_reg[2] 
       (.C(clk),
        .CE(\final_exp_s[8]_i_1_n_0 ),
        .D(\final_exp_s[2]_i_1_n_0 ),
        .Q(\final_exp_s_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \final_exp_s_reg[3] 
       (.C(clk),
        .CE(\final_exp_s[8]_i_1_n_0 ),
        .D(\final_exp_s[3]_i_1_n_0 ),
        .Q(\final_exp_s_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \final_exp_s_reg[4] 
       (.C(clk),
        .CE(\final_exp_s[8]_i_1_n_0 ),
        .D(\final_exp_s[4]_i_1_n_0 ),
        .Q(\final_exp_s_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \final_exp_s_reg[5] 
       (.C(clk),
        .CE(\final_exp_s[8]_i_1_n_0 ),
        .D(\final_exp_s[5]_i_1_n_0 ),
        .Q(\final_exp_s_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \final_exp_s_reg[6] 
       (.C(clk),
        .CE(\final_exp_s[8]_i_1_n_0 ),
        .D(\final_exp_s[6]_i_1_n_0 ),
        .Q(\final_exp_s_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \final_exp_s_reg[7] 
       (.C(clk),
        .CE(\final_exp_s[8]_i_1_n_0 ),
        .D(\final_exp_s[7]_i_1_n_0 ),
        .Q(\final_exp_s_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \final_exp_s_reg[8] 
       (.C(clk),
        .CE(\final_exp_s[8]_i_1_n_0 ),
        .D(\final_exp_s[8]_i_2_n_0 ),
        .Q(\final_exp_s_reg_n_0_[8] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF080808)) 
    \final_mantissa[0]_i_1 
       (.I0(p_2_in),
        .I1(\final_mantissa_reg_n_0_[1] ),
        .I2(state[1]),
        .I3(in22[0]),
        .I4(state[0]),
        .O(final_mantissa[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[0]_i_10 
       (.I0(\A_mantissa_ext_reg_n_0_[1] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[1] ),
        .O(\final_mantissa[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[0]_i_11 
       (.I0(\A_mantissa_ext_reg_n_0_[0] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[0] ),
        .O(\final_mantissa[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_mantissa[0]_i_3 
       (.I0(A_sgn__0),
        .I1(B_sgn),
        .O(\final_mantissa[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[0]_i_4 
       (.I0(\A_mantissa_ext_reg_n_0_[3] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[3] ),
        .O(p_1_out[3]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[0]_i_5 
       (.I0(\A_mantissa_ext_reg_n_0_[2] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[2] ),
        .O(p_1_out[2]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[0]_i_6 
       (.I0(\A_mantissa_ext_reg_n_0_[1] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[1] ),
        .O(p_1_out[1]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[0]_i_7 
       (.I0(\A_mantissa_ext_reg_n_0_[0] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[0] ),
        .O(p_1_out[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[0]_i_8 
       (.I0(\A_mantissa_ext_reg_n_0_[3] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[3] ),
        .O(\final_mantissa[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[0]_i_9 
       (.I0(\A_mantissa_ext_reg_n_0_[2] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[2] ),
        .O(\final_mantissa[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF008B)) 
    \final_mantissa[10]_i_1 
       (.I0(\final_mantissa_reg_n_0_[11] ),
        .I1(p_2_in),
        .I2(\final_mantissa[10]_i_2_n_0 ),
        .I3(state[1]),
        .I4(\final_mantissa[10]_i_3_n_0 ),
        .O(final_mantissa[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[10]_i_2 
       (.I0(\final_mantissa[13]_i_4_n_0 ),
        .I1(\final_mantissa[11]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[12]_i_4_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[10]_i_4_n_0 ),
        .O(\final_mantissa[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \final_mantissa[10]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[9] ),
        .I1(\state1_inferred__0/i__carry_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[9] ),
        .I3(state[0]),
        .I4(in22[10]),
        .I5(state[1]),
        .O(\final_mantissa[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFF47FFFF)) 
    \final_mantissa[10]_i_4 
       (.I0(\final_mantissa_reg_n_0_[7] ),
        .I1(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I2(\final_mantissa_reg_n_0_[3] ),
        .I3(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I4(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF008B)) 
    \final_mantissa[11]_i_1 
       (.I0(\final_mantissa_reg_n_0_[12] ),
        .I1(p_2_in),
        .I2(\final_mantissa[11]_i_2_n_0 ),
        .I3(state[1]),
        .I4(\final_mantissa[11]_i_3_n_0 ),
        .O(final_mantissa[11]));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[11]_i_10 
       (.I0(\A_mantissa_ext_reg_n_0_[11] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[11] ),
        .O(\final_mantissa[11]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[11]_i_11 
       (.I0(\A_mantissa_ext_reg_n_0_[10] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[10] ),
        .O(\final_mantissa[11]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[11]_i_12 
       (.I0(\A_mantissa_ext_reg_n_0_[9] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[9] ),
        .O(\final_mantissa[11]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[11]_i_13 
       (.I0(\A_mantissa_ext_reg_n_0_[8] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[8] ),
        .O(\final_mantissa[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[11]_i_2 
       (.I0(\final_mantissa[14]_i_4_n_0 ),
        .I1(\final_mantissa[12]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[13]_i_4_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[11]_i_4_n_0 ),
        .O(\final_mantissa[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \final_mantissa[11]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[10] ),
        .I1(\state1_inferred__0/i__carry_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[10] ),
        .I3(state[0]),
        .I4(in22[11]),
        .I5(state[1]),
        .O(\final_mantissa[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF505FFFFF3F3F)) 
    \final_mantissa[11]_i_4 
       (.I0(\final_mantissa_reg_n_0_[8] ),
        .I1(\final_mantissa_reg_n_0_[0] ),
        .I2(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I3(\final_mantissa_reg_n_0_[4] ),
        .I4(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I5(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[11]_i_6 
       (.I0(\A_mantissa_ext_reg_n_0_[11] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[11] ),
        .O(p_1_out[11]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[11]_i_7 
       (.I0(\A_mantissa_ext_reg_n_0_[10] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[10] ),
        .O(p_1_out[10]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[11]_i_8 
       (.I0(\A_mantissa_ext_reg_n_0_[9] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[9] ),
        .O(p_1_out[9]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[11]_i_9 
       (.I0(\A_mantissa_ext_reg_n_0_[8] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[8] ),
        .O(p_1_out[8]));
  LUT5 #(
    .INIT(32'hFFFF008B)) 
    \final_mantissa[12]_i_1 
       (.I0(\final_mantissa_reg_n_0_[13] ),
        .I1(p_2_in),
        .I2(\final_mantissa[12]_i_2_n_0 ),
        .I3(state[1]),
        .I4(\final_mantissa[12]_i_3_n_0 ),
        .O(final_mantissa[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[12]_i_2 
       (.I0(\final_mantissa[15]_i_4_n_0 ),
        .I1(\final_mantissa[13]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[14]_i_4_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[12]_i_4_n_0 ),
        .O(\final_mantissa[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \final_mantissa[12]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[11] ),
        .I1(\state1_inferred__0/i__carry_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[11] ),
        .I3(state[0]),
        .I4(in22[12]),
        .I5(state[1]),
        .O(\final_mantissa[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF505FFFFF3F3F)) 
    \final_mantissa[12]_i_4 
       (.I0(\final_mantissa_reg_n_0_[9] ),
        .I1(\final_mantissa_reg_n_0_[1] ),
        .I2(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I3(\final_mantissa_reg_n_0_[5] ),
        .I4(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I5(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF008B)) 
    \final_mantissa[13]_i_1 
       (.I0(\final_mantissa_reg_n_0_[14] ),
        .I1(p_2_in),
        .I2(\final_mantissa[13]_i_2_n_0 ),
        .I3(state[1]),
        .I4(\final_mantissa[13]_i_3_n_0 ),
        .O(final_mantissa[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[13]_i_2 
       (.I0(\final_mantissa[16]_i_4_n_0 ),
        .I1(\final_mantissa[14]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[15]_i_4_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[13]_i_4_n_0 ),
        .O(\final_mantissa[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \final_mantissa[13]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[12] ),
        .I1(\state1_inferred__0/i__carry_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[12] ),
        .I3(state[0]),
        .I4(in22[13]),
        .I5(state[1]),
        .O(\final_mantissa[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF505FFFFF3F3F)) 
    \final_mantissa[13]_i_4 
       (.I0(\final_mantissa_reg_n_0_[10] ),
        .I1(\final_mantissa_reg_n_0_[2] ),
        .I2(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I3(\final_mantissa_reg_n_0_[6] ),
        .I4(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I5(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF008B)) 
    \final_mantissa[14]_i_1 
       (.I0(\final_mantissa_reg_n_0_[15] ),
        .I1(p_2_in),
        .I2(\final_mantissa[14]_i_2_n_0 ),
        .I3(state[1]),
        .I4(\final_mantissa[14]_i_3_n_0 ),
        .O(final_mantissa[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[14]_i_2 
       (.I0(\final_mantissa[17]_i_4_n_0 ),
        .I1(\final_mantissa[15]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[16]_i_4_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[14]_i_4_n_0 ),
        .O(\final_mantissa[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \final_mantissa[14]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[13] ),
        .I1(\state1_inferred__0/i__carry_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[13] ),
        .I3(state[0]),
        .I4(in22[14]),
        .I5(state[1]),
        .O(\final_mantissa[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF505FFFFF3F3F)) 
    \final_mantissa[14]_i_4 
       (.I0(\final_mantissa_reg_n_0_[11] ),
        .I1(\final_mantissa_reg_n_0_[3] ),
        .I2(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I3(\final_mantissa_reg_n_0_[7] ),
        .I4(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I5(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF008B)) 
    \final_mantissa[15]_i_1 
       (.I0(\final_mantissa_reg_n_0_[16] ),
        .I1(p_2_in),
        .I2(\final_mantissa[15]_i_2_n_0 ),
        .I3(state[1]),
        .I4(\final_mantissa[15]_i_3_n_0 ),
        .O(final_mantissa[15]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[15]_i_10 
       (.I0(\A_mantissa_ext_reg_n_0_[12] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[12] ),
        .O(p_1_out[12]));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[15]_i_11 
       (.I0(\A_mantissa_ext_reg_n_0_[15] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[15] ),
        .O(\final_mantissa[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[15]_i_12 
       (.I0(\A_mantissa_ext_reg_n_0_[14] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[14] ),
        .O(\final_mantissa[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[15]_i_13 
       (.I0(\A_mantissa_ext_reg_n_0_[13] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[13] ),
        .O(\final_mantissa[15]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[15]_i_14 
       (.I0(\A_mantissa_ext_reg_n_0_[12] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[12] ),
        .O(\final_mantissa[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[15]_i_2 
       (.I0(\final_mantissa[18]_i_4_n_0 ),
        .I1(\final_mantissa[16]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[17]_i_4_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[15]_i_4_n_0 ),
        .O(\final_mantissa[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \final_mantissa[15]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[14] ),
        .I1(\state1_inferred__0/i__carry_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[14] ),
        .I3(state[0]),
        .I4(in22[15]),
        .I5(state[1]),
        .O(\final_mantissa[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7477FFFF74770000)) 
    \final_mantissa[15]_i_4 
       (.I0(\final_mantissa_reg_n_0_[12] ),
        .I1(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I3(\final_mantissa_reg_n_0_[4] ),
        .I4(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I5(\final_mantissa[15]_i_6_n_0 ),
        .O(\final_mantissa[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7744454477777577)) 
    \final_mantissa[15]_i_6 
       (.I0(\final_mantissa_reg_n_0_[8] ),
        .I1(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I2(\final_mantissa[22]_i_6_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I4(\final_mantissa[22]_i_7_n_0 ),
        .I5(\final_mantissa_reg_n_0_[0] ),
        .O(\final_mantissa[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[15]_i_7 
       (.I0(\A_mantissa_ext_reg_n_0_[15] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[15] ),
        .O(p_1_out[15]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[15]_i_8 
       (.I0(\A_mantissa_ext_reg_n_0_[14] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[14] ),
        .O(p_1_out[14]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[15]_i_9 
       (.I0(\A_mantissa_ext_reg_n_0_[13] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[13] ),
        .O(p_1_out[13]));
  LUT5 #(
    .INIT(32'hFFFF008B)) 
    \final_mantissa[16]_i_1 
       (.I0(\final_mantissa_reg_n_0_[17] ),
        .I1(p_2_in),
        .I2(\final_mantissa[16]_i_2_n_0 ),
        .I3(state[1]),
        .I4(\final_mantissa[16]_i_3_n_0 ),
        .O(final_mantissa[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[16]_i_2 
       (.I0(\final_mantissa[19]_i_5_n_0 ),
        .I1(\final_mantissa[17]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[18]_i_4_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[16]_i_4_n_0 ),
        .O(\final_mantissa[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \final_mantissa[16]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[15] ),
        .I1(\state1_inferred__0/i__carry_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[15] ),
        .I3(state[0]),
        .I4(in22[16]),
        .I5(state[1]),
        .O(\final_mantissa[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7477FFFF74770000)) 
    \final_mantissa[16]_i_4 
       (.I0(\final_mantissa_reg_n_0_[13] ),
        .I1(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I3(\final_mantissa_reg_n_0_[5] ),
        .I4(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I5(\final_mantissa[16]_i_5_n_0 ),
        .O(\final_mantissa[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7744454477777577)) 
    \final_mantissa[16]_i_5 
       (.I0(\final_mantissa_reg_n_0_[9] ),
        .I1(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I2(\final_mantissa[22]_i_6_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I4(\final_mantissa[22]_i_7_n_0 ),
        .I5(\final_mantissa_reg_n_0_[1] ),
        .O(\final_mantissa[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF008B)) 
    \final_mantissa[17]_i_1 
       (.I0(\final_mantissa_reg_n_0_[18] ),
        .I1(p_2_in),
        .I2(\final_mantissa[17]_i_2_n_0 ),
        .I3(state[1]),
        .I4(\final_mantissa[17]_i_3_n_0 ),
        .O(final_mantissa[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[17]_i_2 
       (.I0(\final_mantissa[20]_i_6_n_0 ),
        .I1(\final_mantissa[18]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[19]_i_5_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[17]_i_4_n_0 ),
        .O(\final_mantissa[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \final_mantissa[17]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[16] ),
        .I1(\state1_inferred__0/i__carry_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[16] ),
        .I3(state[0]),
        .I4(in22[17]),
        .I5(state[1]),
        .O(\final_mantissa[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B88BBBB8BBB)) 
    \final_mantissa[17]_i_4 
       (.I0(\final_mantissa[21]_i_5_n_0 ),
        .I1(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I2(\final_mantissa_reg_n_0_[10] ),
        .I3(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I4(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I5(\final_mantissa_reg_n_0_[2] ),
        .O(\final_mantissa[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF008B)) 
    \final_mantissa[18]_i_1 
       (.I0(\final_mantissa_reg_n_0_[19] ),
        .I1(p_2_in),
        .I2(\final_mantissa[18]_i_2_n_0 ),
        .I3(state[1]),
        .I4(\final_mantissa[18]_i_3_n_0 ),
        .O(final_mantissa[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[18]_i_2 
       (.I0(\final_mantissa[19]_i_4_n_0 ),
        .I1(\final_mantissa[19]_i_5_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[20]_i_6_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[18]_i_4_n_0 ),
        .O(\final_mantissa[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \final_mantissa[18]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[17] ),
        .I1(\state1_inferred__0/i__carry_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[17] ),
        .I3(state[0]),
        .I4(in22[18]),
        .I5(state[1]),
        .O(\final_mantissa[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B88BBBB8BBB)) 
    \final_mantissa[18]_i_4 
       (.I0(\final_mantissa[22]_i_5_n_0 ),
        .I1(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I2(\final_mantissa_reg_n_0_[11] ),
        .I3(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I4(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I5(\final_mantissa_reg_n_0_[3] ),
        .O(\final_mantissa[18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF008B)) 
    \final_mantissa[19]_i_1 
       (.I0(\final_mantissa_reg_n_0_[20] ),
        .I1(p_2_in),
        .I2(\final_mantissa[19]_i_2_n_0 ),
        .I3(state[1]),
        .I4(\final_mantissa[19]_i_3_n_0 ),
        .O(final_mantissa[19]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[19]_i_10 
       (.I0(\A_mantissa_ext_reg_n_0_[17] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[17] ),
        .O(p_1_out[17]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[19]_i_11 
       (.I0(\A_mantissa_ext_reg_n_0_[16] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[16] ),
        .O(p_1_out[16]));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[19]_i_12 
       (.I0(\A_mantissa_ext_reg_n_0_[19] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[19] ),
        .O(\final_mantissa[19]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[19]_i_13 
       (.I0(\A_mantissa_ext_reg_n_0_[18] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[18] ),
        .O(\final_mantissa[19]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[19]_i_14 
       (.I0(\A_mantissa_ext_reg_n_0_[17] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[17] ),
        .O(\final_mantissa[19]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[19]_i_15 
       (.I0(\A_mantissa_ext_reg_n_0_[16] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[16] ),
        .O(\final_mantissa[19]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[19]_i_2 
       (.I0(\final_mantissa[20]_i_5_n_0 ),
        .I1(\final_mantissa[20]_i_6_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[19]_i_4_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[19]_i_5_n_0 ),
        .O(\final_mantissa[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \final_mantissa[19]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[18] ),
        .I1(\state1_inferred__0/i__carry_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[18] ),
        .I3(state[0]),
        .I4(in22[19]),
        .I5(state[1]),
        .O(\final_mantissa[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \final_mantissa[19]_i_4 
       (.I0(\final_mantissa[25]_i_8_n_0 ),
        .I1(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I3(\final_mantissa_reg_n_0_[10] ),
        .I4(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I5(\final_mantissa[21]_i_5_n_0 ),
        .O(\final_mantissa[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFCFCFA0AFC0C0)) 
    \final_mantissa[19]_i_5 
       (.I0(\final_mantissa[23]_i_19_n_0 ),
        .I1(\final_mantissa[23]_i_20_n_0 ),
        .I2(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I3(\final_mantissa_reg_n_0_[12] ),
        .I4(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I5(\final_mantissa[19]_i_7_n_0 ),
        .O(\final_mantissa[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44444440FFFFFFFF)) 
    \final_mantissa[19]_i_7 
       (.I0(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I1(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_12_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_11_n_0 ),
        .I4(shift_amount__0[4]),
        .I5(\final_mantissa_reg_n_0_[4] ),
        .O(\final_mantissa[19]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[19]_i_8 
       (.I0(\A_mantissa_ext_reg_n_0_[19] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[19] ),
        .O(p_1_out[19]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[19]_i_9 
       (.I0(\A_mantissa_ext_reg_n_0_[18] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[18] ),
        .O(p_1_out[18]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \final_mantissa[1]_i_1 
       (.I0(\final_mantissa[1]_i_2_n_0 ),
        .I1(state[1]),
        .I2(\final_mantissa_reg_n_0_[2] ),
        .I3(p_2_in),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[1]_i_4_n_0 ),
        .O(final_mantissa[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \final_mantissa[1]_i_2 
       (.I0(in22[1]),
        .I1(state[0]),
        .I2(\A_mantissa_ext_reg_n_0_[0] ),
        .I3(\state1_inferred__0/i__carry_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[0] ),
        .O(\final_mantissa[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000F2)) 
    \final_mantissa[1]_i_3 
       (.I0(\Control_Unit.shift_amount[1]_i_6_n_0 ),
        .I1(\Control_Unit.shift_amount[1]_i_5_n_0 ),
        .I2(\final_mantissa_reg_n_0_[23] ),
        .I3(\final_mantissa_reg_n_0_[25] ),
        .I4(\final_mantissa_reg_n_0_[24] ),
        .I5(\final_mantissa_reg_n_0_[26] ),
        .O(\final_mantissa[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \final_mantissa[1]_i_4 
       (.I0(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I1(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I2(\final_mantissa_reg_n_0_[0] ),
        .I3(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .O(\final_mantissa[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    \final_mantissa[20]_i_1 
       (.I0(\final_mantissa[20]_i_2_n_0 ),
        .I1(state[1]),
        .I2(\final_mantissa[20]_i_3_n_0 ),
        .I3(\final_mantissa[20]_i_4_n_0 ),
        .I4(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I5(p_2_in),
        .O(final_mantissa[20]));
  LUT6 #(
    .INIT(64'h44444440FFFFFFFF)) 
    \final_mantissa[20]_i_10 
       (.I0(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I1(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_12_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_11_n_0 ),
        .I4(shift_amount__0[4]),
        .I5(\final_mantissa_reg_n_0_[5] ),
        .O(\final_mantissa[20]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \final_mantissa[20]_i_2 
       (.I0(in22[20]),
        .I1(state[0]),
        .I2(\A_mantissa_ext_reg_n_0_[19] ),
        .I3(\state1_inferred__0/i__carry_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[19] ),
        .O(\final_mantissa[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000000470047)) 
    \final_mantissa[20]_i_3 
       (.I0(\final_mantissa[20]_i_5_n_0 ),
        .I1(\final_mantissa[1]_i_3_n_0 ),
        .I2(\final_mantissa[20]_i_6_n_0 ),
        .I3(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I4(\final_mantissa_reg_n_0_[21] ),
        .I5(p_2_in),
        .O(\final_mantissa[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0AFAFCFC0CFC0)) 
    \final_mantissa[20]_i_4 
       (.I0(\final_mantissa[27]_i_7_n_0 ),
        .I1(\final_mantissa[20]_i_7_n_0 ),
        .I2(\final_mantissa[1]_i_3_n_0 ),
        .I3(\final_mantissa[20]_i_8_n_0 ),
        .I4(\final_mantissa[20]_i_9_n_0 ),
        .I5(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .O(\final_mantissa[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \final_mantissa[20]_i_5 
       (.I0(\final_mantissa[23]_i_16_n_0 ),
        .I1(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I3(\final_mantissa_reg_n_0_[11] ),
        .I4(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I5(\final_mantissa[22]_i_5_n_0 ),
        .O(\final_mantissa[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFCFCFA0AFC0C0)) 
    \final_mantissa[20]_i_6 
       (.I0(\final_mantissa[24]_i_10_n_0 ),
        .I1(\final_mantissa[24]_i_11_n_0 ),
        .I2(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I3(\final_mantissa_reg_n_0_[13] ),
        .I4(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I5(\final_mantissa[20]_i_10_n_0 ),
        .O(\final_mantissa[20]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hEAEA0F00)) 
    \final_mantissa[20]_i_7 
       (.I0(\final_mantissa_reg_n_0_[16] ),
        .I1(\final_mantissa_reg_n_0_[0] ),
        .I2(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I3(\final_mantissa_reg_n_0_[8] ),
        .I4(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h55040004)) 
    \final_mantissa[20]_i_8 
       (.I0(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I1(\final_mantissa_reg_n_0_[6] ),
        .I2(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I3(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I4(\final_mantissa_reg_n_0_[14] ),
        .O(\final_mantissa[20]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h1F501F5F)) 
    \final_mantissa[20]_i_9 
       (.I0(\final_mantissa_reg_n_0_[18] ),
        .I1(\final_mantissa_reg_n_0_[2] ),
        .I2(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I4(\final_mantissa_reg_n_0_[10] ),
        .O(\final_mantissa[20]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \final_mantissa[21]_i_1 
       (.I0(\final_mantissa[21]_i_2_n_0 ),
        .I1(state[1]),
        .I2(\final_mantissa_reg_n_0_[22] ),
        .I3(p_2_in),
        .I4(\final_mantissa[21]_i_3_n_0 ),
        .O(final_mantissa[21]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \final_mantissa[21]_i_2 
       (.I0(in22[21]),
        .I1(state[0]),
        .I2(\A_mantissa_ext_reg_n_0_[20] ),
        .I3(\state1_inferred__0/i__carry_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[20] ),
        .O(\final_mantissa[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[21]_i_3 
       (.I0(\final_mantissa[24]_i_7_n_0 ),
        .I1(\final_mantissa[22]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[23]_i_6_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[21]_i_4_n_0 ),
        .O(\final_mantissa[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h303F303055555555)) 
    \final_mantissa[21]_i_4 
       (.I0(\final_mantissa[21]_i_5_n_0 ),
        .I1(\final_mantissa[25]_i_8_n_0 ),
        .I2(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I4(\final_mantissa_reg_n_0_[10] ),
        .I5(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .O(\final_mantissa[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7544454475777577)) 
    \final_mantissa[21]_i_5 
       (.I0(\final_mantissa_reg_n_0_[14] ),
        .I1(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I2(\final_mantissa[22]_i_6_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I4(\final_mantissa[22]_i_7_n_0 ),
        .I5(\final_mantissa_reg_n_0_[6] ),
        .O(\final_mantissa[21]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \final_mantissa[22]_i_1 
       (.I0(\final_mantissa[22]_i_2_n_0 ),
        .I1(state[1]),
        .I2(\final_mantissa_reg_n_0_[23] ),
        .I3(p_2_in),
        .I4(\final_mantissa[22]_i_3_n_0 ),
        .O(final_mantissa[22]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \final_mantissa[22]_i_2 
       (.I0(in22[22]),
        .I1(state[0]),
        .I2(\A_mantissa_ext_reg_n_0_[21] ),
        .I3(\state1_inferred__0/i__carry_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[21] ),
        .O(\final_mantissa[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[22]_i_3 
       (.I0(\final_mantissa[25]_i_6_n_0 ),
        .I1(\final_mantissa[23]_i_6_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[24]_i_7_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[22]_i_4_n_0 ),
        .O(\final_mantissa[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h303F303055555555)) 
    \final_mantissa[22]_i_4 
       (.I0(\final_mantissa[22]_i_5_n_0 ),
        .I1(\final_mantissa[23]_i_16_n_0 ),
        .I2(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I4(\final_mantissa_reg_n_0_[11] ),
        .I5(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .O(\final_mantissa[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7544454475777577)) 
    \final_mantissa[22]_i_5 
       (.I0(\final_mantissa_reg_n_0_[15] ),
        .I1(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I2(\final_mantissa[22]_i_6_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I4(\final_mantissa[22]_i_7_n_0 ),
        .I5(\final_mantissa_reg_n_0_[7] ),
        .O(\final_mantissa[22]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h01010100)) 
    \final_mantissa[22]_i_6 
       (.I0(\final_mantissa[22]_i_8_n_0 ),
        .I1(\Control_Unit.shift_amount[4]_i_11_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_15_n_0 ),
        .I3(\Control_Unit.shift_amount[3]_i_7_n_0 ),
        .I4(shift_amount__0[3]),
        .O(\final_mantissa[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \final_mantissa[22]_i_7 
       (.I0(\Control_Unit.shift_amount[3]_i_7_n_0 ),
        .I1(\Control_Unit.shift_amount[1]_i_10_n_0 ),
        .I2(\final_mantissa_reg_n_0_[5] ),
        .I3(\final_mantissa_reg_n_0_[4] ),
        .I4(\Control_Unit.shift_amount[4]_i_11_n_0 ),
        .I5(shift_amount__0[4]),
        .O(\final_mantissa[22]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \final_mantissa[22]_i_8 
       (.I0(\final_mantissa_reg_n_0_[7] ),
        .I1(\final_mantissa_reg_n_0_[6] ),
        .I2(\final_mantissa_reg_n_0_[5] ),
        .I3(\final_mantissa_reg_n_0_[4] ),
        .O(\final_mantissa[22]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \final_mantissa[23]_i_1 
       (.I0(\final_mantissa[23]_i_2_n_0 ),
        .I1(state[1]),
        .I2(\final_mantissa_reg_n_0_[24] ),
        .I3(p_2_in),
        .I4(\final_mantissa[23]_i_3_n_0 ),
        .O(final_mantissa[23]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[23]_i_10 
       (.I0(\A_mantissa_ext_reg_n_0_[20] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[20] ),
        .O(p_1_out[20]));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[23]_i_11 
       (.I0(\A_mantissa_ext_reg_n_0_[23] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[23] ),
        .O(\final_mantissa[23]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[23]_i_12 
       (.I0(\A_mantissa_ext_reg_n_0_[22] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[22] ),
        .O(\final_mantissa[23]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[23]_i_13 
       (.I0(\A_mantissa_ext_reg_n_0_[21] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[21] ),
        .O(\final_mantissa[23]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[23]_i_14 
       (.I0(\A_mantissa_ext_reg_n_0_[20] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[20] ),
        .O(\final_mantissa[23]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00005400FFFF57FF)) 
    \final_mantissa[23]_i_15 
       (.I0(\final_mantissa_reg_n_0_[7] ),
        .I1(\final_mantissa[25]_i_10_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_12_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I4(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I5(\final_mantissa_reg_n_0_[23] ),
        .O(\final_mantissa[23]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h5555015555555555)) 
    \final_mantissa[23]_i_16 
       (.I0(\final_mantissa_reg_n_0_[19] ),
        .I1(\final_mantissa[25]_i_10_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_12_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I4(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I5(\final_mantissa_reg_n_0_[3] ),
        .O(\final_mantissa[23]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h44444440FFFFFFFF)) 
    \final_mantissa[23]_i_17 
       (.I0(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I1(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_12_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_11_n_0 ),
        .I4(shift_amount__0[4]),
        .I5(\final_mantissa_reg_n_0_[11] ),
        .O(\final_mantissa[23]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h5555555511155555)) 
    \final_mantissa[23]_i_18 
       (.I0(\final_mantissa_reg_n_0_[20] ),
        .I1(\final_mantissa_reg_n_0_[4] ),
        .I2(\final_mantissa[25]_i_10_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_12_n_0 ),
        .I4(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I5(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .O(\final_mantissa[23]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h5555015555555555)) 
    \final_mantissa[23]_i_19 
       (.I0(\final_mantissa_reg_n_0_[16] ),
        .I1(\final_mantissa[25]_i_10_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_12_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I4(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I5(\final_mantissa_reg_n_0_[0] ),
        .O(\final_mantissa[23]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \final_mantissa[23]_i_2 
       (.I0(in22[23]),
        .I1(state[0]),
        .I2(\A_mantissa_ext_reg_n_0_[22] ),
        .I3(\state1_inferred__0/i__carry_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[22] ),
        .O(\final_mantissa[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44444440FFFFFFFF)) 
    \final_mantissa[23]_i_20 
       (.I0(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I1(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_12_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_11_n_0 ),
        .I4(shift_amount__0[4]),
        .I5(\final_mantissa_reg_n_0_[8] ),
        .O(\final_mantissa[23]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[23]_i_3 
       (.I0(\final_mantissa[23]_i_5_n_0 ),
        .I1(\final_mantissa[24]_i_7_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[25]_i_6_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[23]_i_6_n_0 ),
        .O(\final_mantissa[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h303F303FB0B0BFBF)) 
    \final_mantissa[23]_i_5 
       (.I0(\final_mantissa_reg_n_0_[15] ),
        .I1(\final_mantissa[23]_i_15_n_0 ),
        .I2(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I3(\final_mantissa[23]_i_16_n_0 ),
        .I4(\final_mantissa[23]_i_17_n_0 ),
        .I5(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h303F303FB0B0BFBF)) 
    \final_mantissa[23]_i_6 
       (.I0(\final_mantissa_reg_n_0_[12] ),
        .I1(\final_mantissa[23]_i_18_n_0 ),
        .I2(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I3(\final_mantissa[23]_i_19_n_0 ),
        .I4(\final_mantissa[23]_i_20_n_0 ),
        .I5(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[23]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[23]_i_7 
       (.I0(\A_mantissa_ext_reg_n_0_[23] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[23] ),
        .O(p_1_out[23]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[23]_i_8 
       (.I0(\A_mantissa_ext_reg_n_0_[22] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[22] ),
        .O(p_1_out[22]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[23]_i_9 
       (.I0(\A_mantissa_ext_reg_n_0_[21] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[21] ),
        .O(p_1_out[21]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB8B88)) 
    \final_mantissa[24]_i_1 
       (.I0(\final_mantissa[24]_i_2_n_0 ),
        .I1(state[1]),
        .I2(\final_mantissa[24]_i_3_n_0 ),
        .I3(\final_mantissa[25]_i_4_n_0 ),
        .I4(\final_mantissa[24]_i_4_n_0 ),
        .I5(\final_mantissa[24]_i_5_n_0 ),
        .O(final_mantissa[24]));
  LUT6 #(
    .INIT(64'h5555015555555555)) 
    \final_mantissa[24]_i_10 
       (.I0(\final_mantissa_reg_n_0_[17] ),
        .I1(\final_mantissa[25]_i_10_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_12_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I4(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I5(\final_mantissa_reg_n_0_[1] ),
        .O(\final_mantissa[24]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h44444440FFFFFFFF)) 
    \final_mantissa[24]_i_11 
       (.I0(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I1(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_12_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_11_n_0 ),
        .I4(shift_amount__0[4]),
        .I5(\final_mantissa_reg_n_0_[9] ),
        .O(\final_mantissa[24]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \final_mantissa[24]_i_2 
       (.I0(in22[24]),
        .I1(state[0]),
        .I2(\A_mantissa_ext_reg_n_0_[23] ),
        .I3(\state1_inferred__0/i__carry_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[23] ),
        .O(\final_mantissa[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFFAA22AA22)) 
    \final_mantissa[24]_i_3 
       (.I0(\final_mantissa[27]_i_6_n_0 ),
        .I1(\final_mantissa[27]_i_7_n_0 ),
        .I2(\final_mantissa[27]_i_4_n_0 ),
        .I3(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I4(\final_mantissa[24]_i_6_n_0 ),
        .I5(\Control_Unit.shift_amount[1]_i_2_n_0 ),
        .O(\final_mantissa[24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \final_mantissa[24]_i_4 
       (.I0(p_2_in),
        .I1(\final_mantissa_reg_n_0_[25] ),
        .O(\final_mantissa[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h22E2EEE200000000)) 
    \final_mantissa[24]_i_5 
       (.I0(\final_mantissa[24]_i_7_n_0 ),
        .I1(\final_mantissa[1]_i_3_n_0 ),
        .I2(\final_mantissa[24]_i_8_n_0 ),
        .I3(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I4(\final_mantissa[28]_i_10_n_0 ),
        .I5(\final_mantissa[26]_i_5_n_0 ),
        .O(\final_mantissa[24]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hEAEA0F00)) 
    \final_mantissa[24]_i_6 
       (.I0(\final_mantissa_reg_n_0_[18] ),
        .I1(\final_mantissa_reg_n_0_[2] ),
        .I2(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I3(\final_mantissa_reg_n_0_[10] ),
        .I4(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h303F303FB0B0BFBF)) 
    \final_mantissa[24]_i_7 
       (.I0(\final_mantissa_reg_n_0_[13] ),
        .I1(\final_mantissa[24]_i_9_n_0 ),
        .I2(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I3(\final_mantissa[24]_i_10_n_0 ),
        .I4(\final_mantissa[24]_i_11_n_0 ),
        .I5(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[24]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hEAEA0F00)) 
    \final_mantissa[24]_i_8 
       (.I0(\final_mantissa_reg_n_0_[19] ),
        .I1(\final_mantissa_reg_n_0_[3] ),
        .I2(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I3(\final_mantissa_reg_n_0_[11] ),
        .I4(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h555501555555FD55)) 
    \final_mantissa[24]_i_9 
       (.I0(\final_mantissa_reg_n_0_[21] ),
        .I1(\final_mantissa[25]_i_10_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_12_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I4(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I5(\final_mantissa_reg_n_0_[5] ),
        .O(\final_mantissa[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8BBB8)) 
    \final_mantissa[25]_i_1 
       (.I0(\final_mantissa[25]_i_2_n_0 ),
        .I1(state[1]),
        .I2(\final_mantissa[25]_i_3_n_0 ),
        .I3(\final_mantissa[25]_i_4_n_0 ),
        .I4(\final_mantissa[26]_i_6_n_0 ),
        .I5(\final_mantissa[25]_i_5_n_0 ),
        .O(final_mantissa[25]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \final_mantissa[25]_i_10 
       (.I0(shift_amount__0[4]),
        .I1(\final_mantissa_reg_n_0_[10] ),
        .I2(\final_mantissa_reg_n_0_[11] ),
        .I3(\final_mantissa_reg_n_0_[8] ),
        .I4(\final_mantissa_reg_n_0_[9] ),
        .O(\final_mantissa[25]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \final_mantissa[25]_i_2 
       (.I0(in22[25]),
        .I1(state[0]),
        .I2(\A_mantissa_ext_reg_n_0_[24] ),
        .I3(\state1_inferred__0/i__carry_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[24] ),
        .O(\final_mantissa[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1101100011011101)) 
    \final_mantissa[25]_i_3 
       (.I0(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I1(p_2_in),
        .I2(\Control_Unit.shift_amount[1]_i_2_n_0 ),
        .I3(\final_mantissa[25]_i_6_n_0 ),
        .I4(\final_mantissa[26]_i_7_n_0 ),
        .I5(\final_mantissa[27]_i_6_n_0 ),
        .O(\final_mantissa[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFD0000)) 
    \final_mantissa[25]_i_4 
       (.I0(\Control_Unit.shift_amount[0]_i_5_n_0 ),
        .I1(\final_mantissa[26]_i_9_n_0 ),
        .I2(\final_mantissa[26]_i_10_n_0 ),
        .I3(\final_mantissa[26]_i_11_n_0 ),
        .I4(\final_mantissa[26]_i_12_n_0 ),
        .I5(p_2_in),
        .O(\final_mantissa[25]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \final_mantissa[25]_i_5 
       (.I0(p_2_in),
        .I1(\final_mantissa_reg_n_0_[26] ),
        .O(\final_mantissa[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h303F303FB0B0BFBF)) 
    \final_mantissa[25]_i_6 
       (.I0(\final_mantissa_reg_n_0_[14] ),
        .I1(\final_mantissa[25]_i_7_n_0 ),
        .I2(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I3(\final_mantissa[25]_i_8_n_0 ),
        .I4(\final_mantissa[25]_i_9_n_0 ),
        .I5(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00005400FFFF57FF)) 
    \final_mantissa[25]_i_7 
       (.I0(\final_mantissa_reg_n_0_[6] ),
        .I1(\final_mantissa[25]_i_10_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_12_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I4(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I5(\final_mantissa_reg_n_0_[22] ),
        .O(\final_mantissa[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555015555555555)) 
    \final_mantissa[25]_i_8 
       (.I0(\final_mantissa_reg_n_0_[18] ),
        .I1(\final_mantissa[25]_i_10_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_12_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I4(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I5(\final_mantissa_reg_n_0_[2] ),
        .O(\final_mantissa[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h44444440FFFFFFFF)) 
    \final_mantissa[25]_i_9 
       (.I0(\Control_Unit.shift_amount[4]_i_14_n_0 ),
        .I1(\Control_Unit.shift_amount[4]_i_13_n_0 ),
        .I2(\Control_Unit.shift_amount[4]_i_12_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_11_n_0 ),
        .I4(shift_amount__0[4]),
        .I5(\final_mantissa_reg_n_0_[10] ),
        .O(\final_mantissa[25]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBBBBBB8)) 
    \final_mantissa[26]_i_1 
       (.I0(\final_mantissa[26]_i_2_n_0 ),
        .I1(state[1]),
        .I2(\final_mantissa[26]_i_3_n_0 ),
        .I3(\final_mantissa[26]_i_4_n_0 ),
        .I4(\final_mantissa[26]_i_5_n_0 ),
        .I5(\final_mantissa[26]_i_6_n_0 ),
        .O(final_mantissa[26]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \final_mantissa[26]_i_10 
       (.I0(\final_mantissa_reg_n_0_[23] ),
        .I1(\final_mantissa_reg_n_0_[25] ),
        .I2(\final_mantissa_reg_n_0_[24] ),
        .O(\final_mantissa[26]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \final_mantissa[26]_i_11 
       (.I0(\final_mantissa_reg_n_0_[20] ),
        .I1(\final_mantissa_reg_n_0_[21] ),
        .I2(\final_mantissa_reg_n_0_[22] ),
        .I3(\final_mantissa_reg_n_0_[17] ),
        .I4(\final_mantissa_reg_n_0_[18] ),
        .I5(\final_mantissa_reg_n_0_[19] ),
        .O(\final_mantissa[26]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h1101)) 
    \final_mantissa[26]_i_12 
       (.I0(\final_mantissa_reg_n_0_[26] ),
        .I1(\Control_Unit.shift_amount[0]_i_3_n_0 ),
        .I2(\final_mantissa_reg_n_0_[24] ),
        .I3(\final_mantissa_reg_n_0_[25] ),
        .O(\final_mantissa[26]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h1F501F5F)) 
    \final_mantissa[26]_i_13 
       (.I0(\final_mantissa_reg_n_0_[19] ),
        .I1(\final_mantissa_reg_n_0_[3] ),
        .I2(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I4(\final_mantissa_reg_n_0_[11] ),
        .O(\final_mantissa[26]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \final_mantissa[26]_i_2 
       (.I0(in22[26]),
        .I1(state[0]),
        .I2(\A_mantissa_ext_reg_n_0_[25] ),
        .I3(\state1_inferred__0/i__carry_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[25] ),
        .O(\final_mantissa[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA8088AAAA)) 
    \final_mantissa[26]_i_3 
       (.I0(\final_mantissa[25]_i_4_n_0 ),
        .I1(\Control_Unit.shift_amount[1]_i_2_n_0 ),
        .I2(\final_mantissa[26]_i_7_n_0 ),
        .I3(\final_mantissa[27]_i_6_n_0 ),
        .I4(\final_mantissa[27]_i_5_n_0 ),
        .I5(\final_mantissa[26]_i_8_n_0 ),
        .O(\final_mantissa[26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \final_mantissa[26]_i_4 
       (.I0(p_2_in),
        .I1(\final_mantissa_reg_n_0_[27] ),
        .O(\final_mantissa[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000455555555)) 
    \final_mantissa[26]_i_5 
       (.I0(p_2_in),
        .I1(\Control_Unit.shift_amount[0]_i_5_n_0 ),
        .I2(\final_mantissa[26]_i_9_n_0 ),
        .I3(\final_mantissa[26]_i_10_n_0 ),
        .I4(\final_mantissa[26]_i_11_n_0 ),
        .I5(\final_mantissa[26]_i_12_n_0 ),
        .O(\final_mantissa[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA03F3FAFA03030)) 
    \final_mantissa[26]_i_6 
       (.I0(\final_mantissa[28]_i_12_n_0 ),
        .I1(\final_mantissa[28]_i_13_n_0 ),
        .I2(\final_mantissa[1]_i_3_n_0 ),
        .I3(\final_mantissa[28]_i_10_n_0 ),
        .I4(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I5(\final_mantissa[26]_i_13_n_0 ),
        .O(\final_mantissa[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAEAFFEA)) 
    \final_mantissa[26]_i_7 
       (.I0(\final_mantissa_reg_n_0_[20] ),
        .I1(\final_mantissa_reg_n_0_[4] ),
        .I2(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I3(\final_mantissa_reg_n_0_[12] ),
        .I4(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I5(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .O(\final_mantissa[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8FFB8)) 
    \final_mantissa[26]_i_8 
       (.I0(\final_mantissa_reg_n_0_[6] ),
        .I1(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I2(\final_mantissa_reg_n_0_[22] ),
        .I3(\final_mantissa_reg_n_0_[14] ),
        .I4(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I5(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .O(\final_mantissa[26]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h0000FF0E)) 
    \final_mantissa[26]_i_9 
       (.I0(\Control_Unit.shift_amount[0]_i_7_n_0 ),
        .I1(\final_mantissa_reg_n_0_[5] ),
        .I2(\final_mantissa_reg_n_0_[6] ),
        .I3(\final_mantissa_reg_n_0_[7] ),
        .I4(\final_exp_s[8]_i_5_n_0 ),
        .O(\final_mantissa[26]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBB888B8B)) 
    \final_mantissa[27]_i_1 
       (.I0(\final_mantissa[27]_i_2_n_0 ),
        .I1(state[1]),
        .I2(\final_mantissa[27]_i_3_n_0 ),
        .I3(\final_mantissa[28]_i_7_n_0 ),
        .I4(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I5(p_2_in),
        .O(final_mantissa[27]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \final_mantissa[27]_i_2 
       (.I0(in22[27]),
        .I1(state[0]),
        .I2(\A_mantissa_ext_reg_n_0_[26] ),
        .I3(\state1_inferred__0/i__carry_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[26] ),
        .O(\final_mantissa[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC000C040CC44CC44)) 
    \final_mantissa[27]_i_3 
       (.I0(\final_mantissa[27]_i_4_n_0 ),
        .I1(\final_mantissa[27]_i_5_n_0 ),
        .I2(\final_mantissa[27]_i_6_n_0 ),
        .I3(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I4(\final_mantissa[27]_i_7_n_0 ),
        .I5(\Control_Unit.shift_amount[1]_i_2_n_0 ),
        .O(\final_mantissa[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFF444F4)) 
    \final_mantissa[27]_i_4 
       (.I0(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I1(\final_mantissa_reg_n_0_[14] ),
        .I2(\final_mantissa_reg_n_0_[22] ),
        .I3(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I4(\final_mantissa_reg_n_0_[6] ),
        .O(\final_mantissa[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1133113300030103)) 
    \final_mantissa[27]_i_5 
       (.I0(\final_mantissa_reg_n_0_[10] ),
        .I1(\final_mantissa_reg_n_0_[26] ),
        .I2(\final_mantissa_reg_n_0_[18] ),
        .I3(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I4(\final_mantissa_reg_n_0_[2] ),
        .I5(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5533553300030503)) 
    \final_mantissa[27]_i_6 
       (.I0(\final_mantissa_reg_n_0_[8] ),
        .I1(\final_mantissa_reg_n_0_[24] ),
        .I2(\final_mantissa_reg_n_0_[16] ),
        .I3(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I4(\final_mantissa_reg_n_0_[0] ),
        .I5(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[27]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF444)) 
    \final_mantissa[27]_i_7 
       (.I0(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I1(\final_mantissa_reg_n_0_[12] ),
        .I2(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I3(\final_mantissa_reg_n_0_[4] ),
        .I4(\final_mantissa_reg_n_0_[20] ),
        .O(\final_mantissa[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5545444444444444)) 
    \final_mantissa[28]_i_1 
       (.I0(rst_fp),
        .I1(\final_mantissa[28]_i_3_n_0 ),
        .I2(\final_mantissa_reg_n_0_[27] ),
        .I3(p_2_in),
        .I4(\final_mantissa[28]_i_4_n_0 ),
        .I5(\final_mantissa[28]_i_5_n_0 ),
        .O(\final_mantissa[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1D001D1D)) 
    \final_mantissa[28]_i_10 
       (.I0(\final_mantissa_reg_n_0_[23] ),
        .I1(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I2(\final_mantissa_reg_n_0_[7] ),
        .I3(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I4(\final_mantissa_reg_n_0_[15] ),
        .O(\final_mantissa[28]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFCFAFA0C0C0)) 
    \final_mantissa[28]_i_11 
       (.I0(\final_mantissa_reg_n_0_[11] ),
        .I1(\final_mantissa_reg_n_0_[27] ),
        .I2(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I3(\final_mantissa_reg_n_0_[3] ),
        .I4(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I5(\final_mantissa_reg_n_0_[19] ),
        .O(\final_mantissa[28]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h1010505F101F505F)) 
    \final_mantissa[28]_i_12 
       (.I0(\final_mantissa_reg_n_0_[25] ),
        .I1(\final_mantissa_reg_n_0_[9] ),
        .I2(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I3(\final_mantissa_reg_n_0_[17] ),
        .I4(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I5(\final_mantissa_reg_n_0_[1] ),
        .O(\final_mantissa[28]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF4FFF444)) 
    \final_mantissa[28]_i_13 
       (.I0(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I1(\final_mantissa_reg_n_0_[13] ),
        .I2(\final_mantissa_reg_n_0_[5] ),
        .I3(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I4(\final_mantissa_reg_n_0_[21] ),
        .O(\final_mantissa[28]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[28]_i_14 
       (.I0(\A_mantissa_ext_reg_n_0_[26] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[26] ),
        .O(p_1_out[26]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[28]_i_15 
       (.I0(\A_mantissa_ext_reg_n_0_[25] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[25] ),
        .O(p_1_out[25]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[28]_i_16 
       (.I0(\A_mantissa_ext_reg_n_0_[24] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[24] ),
        .O(p_1_out[24]));
  LUT2 #(
    .INIT(4'h6)) 
    \final_mantissa[28]_i_17 
       (.I0(A_sgn__0),
        .I1(B_sgn),
        .O(\final_mantissa[28]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[28]_i_18 
       (.I0(\A_mantissa_ext_reg_n_0_[26] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[26] ),
        .O(\final_mantissa[28]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[28]_i_19 
       (.I0(\A_mantissa_ext_reg_n_0_[25] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[25] ),
        .O(\final_mantissa[28]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F80808F8F8F80)) 
    \final_mantissa[28]_i_2 
       (.I0(state[0]),
        .I1(in22[28]),
        .I2(state[1]),
        .I3(\final_mantissa[28]_i_7_n_0 ),
        .I4(p_2_in),
        .I5(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .O(final_mantissa[28]));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[28]_i_20 
       (.I0(\A_mantissa_ext_reg_n_0_[24] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[24] ),
        .O(\final_mantissa[28]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \final_mantissa[28]_i_3 
       (.I0(state[1]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state[0]),
        .O(\final_mantissa[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBFFFFFFFFF)) 
    \final_mantissa[28]_i_4 
       (.I0(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I1(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I3(\Control_Unit.shift_amount[1]_i_2_n_0 ),
        .I4(p_2_in),
        .I5(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .O(\final_mantissa[28]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \final_mantissa[28]_i_5 
       (.I0(state[0]),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(\final_exp_s[8]_i_3_n_0 ),
        .O(\final_mantissa[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0FFF0F00CC55CC55)) 
    \final_mantissa[28]_i_7 
       (.I0(\final_mantissa[28]_i_10_n_0 ),
        .I1(\final_mantissa[28]_i_11_n_0 ),
        .I2(\final_mantissa[28]_i_12_n_0 ),
        .I3(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I4(\final_mantissa[28]_i_13_n_0 ),
        .I5(\Control_Unit.shift_amount[1]_i_2_n_0 ),
        .O(\final_mantissa[28]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_mantissa[28]_i_9 
       (.I0(A_sgn__0),
        .I1(B_sgn),
        .O(\final_mantissa[28]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB8BB)) 
    \final_mantissa[2]_i_1 
       (.I0(\final_mantissa[2]_i_2_n_0 ),
        .I1(state[1]),
        .I2(\final_mantissa_reg_n_0_[3] ),
        .I3(p_2_in),
        .I4(\final_mantissa[2]_i_3_n_0 ),
        .I5(\final_mantissa[2]_i_4_n_0 ),
        .O(final_mantissa[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \final_mantissa[2]_i_2 
       (.I0(in22[2]),
        .I1(state[0]),
        .I2(\A_mantissa_ext_reg_n_0_[1] ),
        .I3(\state1_inferred__0/i__carry_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[1] ),
        .O(\final_mantissa[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \final_mantissa[2]_i_3 
       (.I0(\Control_Unit.shift_amount[1]_i_2_n_0 ),
        .I1(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I2(\final_mantissa_reg_n_0_[1] ),
        .I3(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I4(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \final_mantissa[2]_i_4 
       (.I0(\final_mantissa[1]_i_4_n_0 ),
        .I1(\final_mantissa[1]_i_3_n_0 ),
        .I2(\final_mantissa[5]_i_4_n_0 ),
        .I3(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .O(\final_mantissa[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF008B)) 
    \final_mantissa[3]_i_1 
       (.I0(\final_mantissa_reg_n_0_[4] ),
        .I1(p_2_in),
        .I2(\final_mantissa[3]_i_2_n_0 ),
        .I3(state[1]),
        .I4(\final_mantissa[3]_i_3_n_0 ),
        .O(final_mantissa[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[3]_i_2 
       (.I0(\final_mantissa[6]_i_4_n_0 ),
        .I1(\final_mantissa[4]_i_6_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[5]_i_4_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[1]_i_4_n_0 ),
        .O(\final_mantissa[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \final_mantissa[3]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[2] ),
        .I1(\state1_inferred__0/i__carry_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[2] ),
        .I3(state[0]),
        .I4(in22[3]),
        .I5(state[1]),
        .O(\final_mantissa[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBBBBBB8)) 
    \final_mantissa[4]_i_1 
       (.I0(\final_mantissa[4]_i_2_n_0 ),
        .I1(state[1]),
        .I2(\final_mantissa[4]_i_3_n_0 ),
        .I3(\final_mantissa[4]_i_4_n_0 ),
        .I4(\final_mantissa[25]_i_4_n_0 ),
        .I5(\final_mantissa[4]_i_5_n_0 ),
        .O(final_mantissa[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \final_mantissa[4]_i_2 
       (.I0(in22[4]),
        .I1(state[0]),
        .I2(\A_mantissa_ext_reg_n_0_[3] ),
        .I3(\state1_inferred__0/i__carry_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[3] ),
        .O(\final_mantissa[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \final_mantissa[4]_i_3 
       (.I0(p_2_in),
        .I1(\final_mantissa_reg_n_0_[5] ),
        .O(\final_mantissa[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00011101)) 
    \final_mantissa[4]_i_4 
       (.I0(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I1(p_2_in),
        .I2(\final_mantissa[4]_i_6_n_0 ),
        .I3(\final_mantissa[1]_i_3_n_0 ),
        .I4(\final_mantissa[6]_i_4_n_0 ),
        .O(\final_mantissa[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBB8BBBBBBBBBBBBB)) 
    \final_mantissa[4]_i_5 
       (.I0(\final_mantissa[7]_i_4_n_0 ),
        .I1(\final_mantissa[1]_i_3_n_0 ),
        .I2(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I3(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I4(\final_mantissa_reg_n_0_[2] ),
        .I5(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .O(\final_mantissa[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \final_mantissa[4]_i_6 
       (.I0(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I1(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I2(\final_mantissa_reg_n_0_[1] ),
        .I3(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .O(\final_mantissa[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF008B)) 
    \final_mantissa[5]_i_1 
       (.I0(\final_mantissa_reg_n_0_[6] ),
        .I1(p_2_in),
        .I2(\final_mantissa[5]_i_2_n_0 ),
        .I3(state[1]),
        .I4(\final_mantissa[5]_i_3_n_0 ),
        .O(final_mantissa[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[5]_i_2 
       (.I0(\final_mantissa[8]_i_5_n_0 ),
        .I1(\final_mantissa[6]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[7]_i_4_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[5]_i_4_n_0 ),
        .O(\final_mantissa[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \final_mantissa[5]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[4] ),
        .I1(\state1_inferred__0/i__carry_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[4] ),
        .I3(state[0]),
        .I4(in22[5]),
        .I5(state[1]),
        .O(\final_mantissa[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \final_mantissa[5]_i_4 
       (.I0(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I1(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I2(\final_mantissa_reg_n_0_[2] ),
        .I3(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .O(\final_mantissa[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF008B)) 
    \final_mantissa[6]_i_1 
       (.I0(\final_mantissa_reg_n_0_[7] ),
        .I1(p_2_in),
        .I2(\final_mantissa[6]_i_2_n_0 ),
        .I3(state[1]),
        .I4(\final_mantissa[6]_i_3_n_0 ),
        .O(final_mantissa[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[6]_i_2 
       (.I0(\final_mantissa[9]_i_4_n_0 ),
        .I1(\final_mantissa[7]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[8]_i_5_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[6]_i_4_n_0 ),
        .O(\final_mantissa[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \final_mantissa[6]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[5] ),
        .I1(\state1_inferred__0/i__carry_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[5] ),
        .I3(state[0]),
        .I4(in22[6]),
        .I5(state[1]),
        .O(\final_mantissa[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \final_mantissa[6]_i_4 
       (.I0(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .I1(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I2(\final_mantissa_reg_n_0_[3] ),
        .I3(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .O(\final_mantissa[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF008B)) 
    \final_mantissa[7]_i_1 
       (.I0(\final_mantissa_reg_n_0_[8] ),
        .I1(p_2_in),
        .I2(\final_mantissa[7]_i_2_n_0 ),
        .I3(state[1]),
        .I4(\final_mantissa[7]_i_3_n_0 ),
        .O(final_mantissa[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[7]_i_10 
       (.I0(\A_mantissa_ext_reg_n_0_[7] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[7] ),
        .O(\final_mantissa[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[7]_i_11 
       (.I0(\A_mantissa_ext_reg_n_0_[6] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[6] ),
        .O(\final_mantissa[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[7]_i_12 
       (.I0(\A_mantissa_ext_reg_n_0_[5] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[5] ),
        .O(\final_mantissa[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \final_mantissa[7]_i_13 
       (.I0(\A_mantissa_ext_reg_n_0_[4] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\B_mantissa_ext_reg_n_0_[4] ),
        .O(\final_mantissa[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[7]_i_2 
       (.I0(\final_mantissa[10]_i_4_n_0 ),
        .I1(\final_mantissa[8]_i_5_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[9]_i_4_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[7]_i_4_n_0 ),
        .O(\final_mantissa[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \final_mantissa[7]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[6] ),
        .I1(\state1_inferred__0/i__carry_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[6] ),
        .I3(state[0]),
        .I4(in22[7]),
        .I5(state[1]),
        .O(\final_mantissa[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFF47FFFF)) 
    \final_mantissa[7]_i_4 
       (.I0(\final_mantissa_reg_n_0_[4] ),
        .I1(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I2(\final_mantissa_reg_n_0_[0] ),
        .I3(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I4(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[7]_i_6 
       (.I0(\A_mantissa_ext_reg_n_0_[7] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[7] ),
        .O(p_1_out[7]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[7]_i_7 
       (.I0(\A_mantissa_ext_reg_n_0_[6] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[6] ),
        .O(p_1_out[6]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[7]_i_8 
       (.I0(\A_mantissa_ext_reg_n_0_[5] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[5] ),
        .O(p_1_out[5]));
  LUT5 #(
    .INIT(32'hEBFF2800)) 
    \final_mantissa[7]_i_9 
       (.I0(\A_mantissa_ext_reg_n_0_[4] ),
        .I1(B_sgn),
        .I2(A_sgn__0),
        .I3(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I4(\B_mantissa_ext_reg_n_0_[4] ),
        .O(p_1_out[4]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8BBB8)) 
    \final_mantissa[8]_i_1 
       (.I0(\final_mantissa[8]_i_2_n_0 ),
        .I1(state[1]),
        .I2(\final_mantissa[8]_i_3_n_0 ),
        .I3(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I4(p_2_in),
        .I5(\final_mantissa[8]_i_4_n_0 ),
        .O(final_mantissa[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \final_mantissa[8]_i_2 
       (.I0(in22[8]),
        .I1(state[0]),
        .I2(\A_mantissa_ext_reg_n_0_[7] ),
        .I3(\state1_inferred__0/i__carry_n_0 ),
        .I4(\B_mantissa_ext_reg_n_0_[7] ),
        .O(\final_mantissa[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000AAAA303F)) 
    \final_mantissa[8]_i_3 
       (.I0(\final_mantissa_reg_n_0_[9] ),
        .I1(\final_mantissa[10]_i_4_n_0 ),
        .I2(\final_mantissa[1]_i_3_n_0 ),
        .I3(\final_mantissa[8]_i_5_n_0 ),
        .I4(p_2_in),
        .I5(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .O(\final_mantissa[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \final_mantissa[8]_i_4 
       (.I0(\final_mantissa[11]_i_4_n_0 ),
        .I1(\final_mantissa[1]_i_3_n_0 ),
        .I2(\final_mantissa[9]_i_4_n_0 ),
        .O(\final_mantissa[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF47FFFF)) 
    \final_mantissa[8]_i_5 
       (.I0(\final_mantissa_reg_n_0_[5] ),
        .I1(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I2(\final_mantissa_reg_n_0_[1] ),
        .I3(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I4(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF008B)) 
    \final_mantissa[9]_i_1 
       (.I0(\final_mantissa_reg_n_0_[10] ),
        .I1(p_2_in),
        .I2(\final_mantissa[9]_i_2_n_0 ),
        .I3(state[1]),
        .I4(\final_mantissa[9]_i_3_n_0 ),
        .O(final_mantissa[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \final_mantissa[9]_i_2 
       (.I0(\final_mantissa[12]_i_4_n_0 ),
        .I1(\final_mantissa[10]_i_4_n_0 ),
        .I2(\Control_Unit.shift_amount[0]_i_2_n_0 ),
        .I3(\final_mantissa[11]_i_4_n_0 ),
        .I4(\final_mantissa[1]_i_3_n_0 ),
        .I5(\final_mantissa[9]_i_4_n_0 ),
        .O(\final_mantissa[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \final_mantissa[9]_i_3 
       (.I0(\B_mantissa_ext_reg_n_0_[8] ),
        .I1(\state1_inferred__0/i__carry_n_0 ),
        .I2(\A_mantissa_ext_reg_n_0_[8] ),
        .I3(state[0]),
        .I4(in22[9]),
        .I5(state[1]),
        .O(\final_mantissa[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFF47FFFF)) 
    \final_mantissa[9]_i_4 
       (.I0(\final_mantissa_reg_n_0_[6] ),
        .I1(\Control_Unit.shift_amount[2]_i_2_n_0 ),
        .I2(\final_mantissa_reg_n_0_[2] ),
        .I3(\Control_Unit.shift_amount[4]_i_6_n_0 ),
        .I4(\Control_Unit.shift_amount[3]_i_4_n_0 ),
        .O(\final_mantissa[9]_i_4_n_0 ));
  FDRE \final_mantissa_reg[0] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[0]),
        .Q(\final_mantissa_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \final_mantissa_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\final_mantissa_reg[0]_i_2_n_0 ,\final_mantissa_reg[0]_i_2_n_1 ,\final_mantissa_reg[0]_i_2_n_2 ,\final_mantissa_reg[0]_i_2_n_3 }),
        .CYINIT(\final_mantissa[0]_i_3_n_0 ),
        .DI(p_1_out[3:0]),
        .O(in22[3:0]),
        .S({\final_mantissa[0]_i_8_n_0 ,\final_mantissa[0]_i_9_n_0 ,\final_mantissa[0]_i_10_n_0 ,\final_mantissa[0]_i_11_n_0 }));
  FDRE \final_mantissa_reg[10] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[10]),
        .Q(\final_mantissa_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[11] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[11]),
        .Q(\final_mantissa_reg_n_0_[11] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \final_mantissa_reg[11]_i_5 
       (.CI(\final_mantissa_reg[7]_i_5_n_0 ),
        .CO({\final_mantissa_reg[11]_i_5_n_0 ,\final_mantissa_reg[11]_i_5_n_1 ,\final_mantissa_reg[11]_i_5_n_2 ,\final_mantissa_reg[11]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_out[11:8]),
        .O(in22[11:8]),
        .S({\final_mantissa[11]_i_10_n_0 ,\final_mantissa[11]_i_11_n_0 ,\final_mantissa[11]_i_12_n_0 ,\final_mantissa[11]_i_13_n_0 }));
  FDRE \final_mantissa_reg[12] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[12]),
        .Q(\final_mantissa_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[13] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[13]),
        .Q(\final_mantissa_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[14] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[14]),
        .Q(\final_mantissa_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[15] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[15]),
        .Q(\final_mantissa_reg_n_0_[15] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \final_mantissa_reg[15]_i_5 
       (.CI(\final_mantissa_reg[11]_i_5_n_0 ),
        .CO({\final_mantissa_reg[15]_i_5_n_0 ,\final_mantissa_reg[15]_i_5_n_1 ,\final_mantissa_reg[15]_i_5_n_2 ,\final_mantissa_reg[15]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_out[15:12]),
        .O(in22[15:12]),
        .S({\final_mantissa[15]_i_11_n_0 ,\final_mantissa[15]_i_12_n_0 ,\final_mantissa[15]_i_13_n_0 ,\final_mantissa[15]_i_14_n_0 }));
  FDRE \final_mantissa_reg[16] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[16]),
        .Q(\final_mantissa_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[17] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[17]),
        .Q(\final_mantissa_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[18] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[18]),
        .Q(\final_mantissa_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[19] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[19]),
        .Q(\final_mantissa_reg_n_0_[19] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \final_mantissa_reg[19]_i_6 
       (.CI(\final_mantissa_reg[15]_i_5_n_0 ),
        .CO({\final_mantissa_reg[19]_i_6_n_0 ,\final_mantissa_reg[19]_i_6_n_1 ,\final_mantissa_reg[19]_i_6_n_2 ,\final_mantissa_reg[19]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_out[19:16]),
        .O(in22[19:16]),
        .S({\final_mantissa[19]_i_12_n_0 ,\final_mantissa[19]_i_13_n_0 ,\final_mantissa[19]_i_14_n_0 ,\final_mantissa[19]_i_15_n_0 }));
  FDRE \final_mantissa_reg[1] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[1]),
        .Q(\final_mantissa_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[20] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[20]),
        .Q(\final_mantissa_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[21] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[21]),
        .Q(\final_mantissa_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[22] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[22]),
        .Q(\final_mantissa_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[23] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[23]),
        .Q(\final_mantissa_reg_n_0_[23] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \final_mantissa_reg[23]_i_4 
       (.CI(\final_mantissa_reg[19]_i_6_n_0 ),
        .CO({\final_mantissa_reg[23]_i_4_n_0 ,\final_mantissa_reg[23]_i_4_n_1 ,\final_mantissa_reg[23]_i_4_n_2 ,\final_mantissa_reg[23]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_out[23:20]),
        .O(in22[23:20]),
        .S({\final_mantissa[23]_i_11_n_0 ,\final_mantissa[23]_i_12_n_0 ,\final_mantissa[23]_i_13_n_0 ,\final_mantissa[23]_i_14_n_0 }));
  FDRE \final_mantissa_reg[24] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[24]),
        .Q(\final_mantissa_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[25] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[25]),
        .Q(\final_mantissa_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[26] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[26]),
        .Q(\final_mantissa_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[27] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[27]),
        .Q(\final_mantissa_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[28] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[28]),
        .Q(p_2_in),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \final_mantissa_reg[28]_i_6 
       (.CI(\final_mantissa_reg[28]_i_8_n_0 ),
        .CO(\NLW_final_mantissa_reg[28]_i_6_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_final_mantissa_reg[28]_i_6_O_UNCONNECTED [3:1],in22[28]}),
        .S({1'b0,1'b0,1'b0,\final_mantissa[28]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \final_mantissa_reg[28]_i_8 
       (.CI(\final_mantissa_reg[23]_i_4_n_0 ),
        .CO({\final_mantissa_reg[28]_i_8_n_0 ,\final_mantissa_reg[28]_i_8_n_1 ,\final_mantissa_reg[28]_i_8_n_2 ,\final_mantissa_reg[28]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_out[26:24]}),
        .O(in22[27:24]),
        .S({\final_mantissa[28]_i_17_n_0 ,\final_mantissa[28]_i_18_n_0 ,\final_mantissa[28]_i_19_n_0 ,\final_mantissa[28]_i_20_n_0 }));
  FDRE \final_mantissa_reg[2] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[2]),
        .Q(\final_mantissa_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[3] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[3]),
        .Q(\final_mantissa_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[4] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[4]),
        .Q(\final_mantissa_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[5] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[5]),
        .Q(\final_mantissa_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[6] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[6]),
        .Q(\final_mantissa_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[7] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[7]),
        .Q(\final_mantissa_reg_n_0_[7] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \final_mantissa_reg[7]_i_5 
       (.CI(\final_mantissa_reg[0]_i_2_n_0 ),
        .CO({\final_mantissa_reg[7]_i_5_n_0 ,\final_mantissa_reg[7]_i_5_n_1 ,\final_mantissa_reg[7]_i_5_n_2 ,\final_mantissa_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_out[7:4]),
        .O(in22[7:4]),
        .S({\final_mantissa[7]_i_10_n_0 ,\final_mantissa[7]_i_11_n_0 ,\final_mantissa[7]_i_12_n_0 ,\final_mantissa[7]_i_13_n_0 }));
  FDRE \final_mantissa_reg[8] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[8]),
        .Q(\final_mantissa_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \final_mantissa_reg[9] 
       (.C(clk),
        .CE(\final_mantissa[28]_i_1_n_0 ),
        .D(final_mantissa[9]),
        .Q(\final_mantissa_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    final_sgn_i_1
       (.I0(A_sgn__0),
        .I1(\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ),
        .I2(B_sgn),
        .I3(state[1]),
        .I4(final_sgn_i_2_n_0),
        .I5(final_sgn__0),
        .O(final_sgn_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hB)) 
    final_sgn_i_2
       (.I0(rst_fp),
        .I1(state[0]),
        .O(final_sgn_i_2_n_0));
  FDRE final_sgn_reg
       (.C(clk),
        .CE(1'b1),
        .D(final_sgn_i_1_n_0),
        .Q(final_sgn__0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[0]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [0]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[0]_i_2 
       (.I0(fp_result[0]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [0]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [0]),
        .O(\fp_A[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[10]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [10]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[10]_i_2_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[10]_i_2 
       (.I0(fp_result[10]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [10]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [10]),
        .O(\fp_A[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[11]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [11]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[11]_i_2_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[11]_i_2 
       (.I0(fp_result[11]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [11]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [11]),
        .O(\fp_A[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[12]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [12]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[12]_i_2_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[12]_i_2 
       (.I0(fp_result[12]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [12]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [12]),
        .O(\fp_A[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[13]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [13]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[13]_i_2_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[13]_i_2 
       (.I0(fp_result[13]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [13]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [13]),
        .O(\fp_A[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[14]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [14]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[14]_i_2_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[14]_i_2 
       (.I0(fp_result[14]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [14]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [14]),
        .O(\fp_A[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[15]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [15]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[15]_i_2_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[15]_i_2 
       (.I0(fp_result[15]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [15]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [15]),
        .O(\fp_A[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[16]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [16]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[16]_i_2_n_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[16]_i_2 
       (.I0(fp_result[16]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [16]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [16]),
        .O(\fp_A[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[17]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [17]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[17]_i_2_n_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[17]_i_2 
       (.I0(fp_result[17]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [17]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [17]),
        .O(\fp_A[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[18]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [18]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[18]_i_2_n_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[18]_i_2 
       (.I0(fp_result[18]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [18]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [18]),
        .O(\fp_A[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[19]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [19]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[19]_i_2_n_0 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[19]_i_2 
       (.I0(fp_result[19]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [19]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [19]),
        .O(\fp_A[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[1]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [1]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[1]_i_2 
       (.I0(fp_result[1]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [1]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [1]),
        .O(\fp_A[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[20]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [20]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[20]_i_2_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[20]_i_2 
       (.I0(fp_result[20]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [20]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [20]),
        .O(\fp_A[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[21]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [21]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[21]_i_2_n_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[21]_i_2 
       (.I0(fp_result[21]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [21]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [21]),
        .O(\fp_A[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[22]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [22]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[22]_i_2_n_0 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[22]_i_2 
       (.I0(fp_result[22]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [22]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [22]),
        .O(\fp_A[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF08FFFF)) 
    \fp_A[25]_i_1 
       (.I0(\fp_A_reg[31] [25]),
        .I1(\error_n_reg[0] [2]),
        .I2(add_done),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[25]_i_2_n_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h000000007F000000)) 
    \fp_A[25]_i_2 
       (.I0(fp_result[23]),
        .I1(add_done),
        .I2(\error_n_reg[0] [2]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A_reg[25] ),
        .O(\fp_A[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF08FFFF)) 
    \fp_A[26]_i_1 
       (.I0(\fp_A_reg[31] [26]),
        .I1(\error_n_reg[0] [2]),
        .I2(add_done),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[26]_i_2_n_0 ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h000000007F000000)) 
    \fp_A[26]_i_2 
       (.I0(fp_result[24]),
        .I1(add_done),
        .I2(\error_n_reg[0] [2]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A_reg[26] ),
        .O(\fp_A[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fp_A[29]_i_3 
       (.I0(add_done),
        .I1(\error_n_reg[0] [2]),
        .O(done_reg_1));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[2]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [2]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[2]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[2]_i_2 
       (.I0(fp_result[2]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [2]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [2]),
        .O(\fp_A[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA003F00AA003300)) 
    \fp_A[30]_i_1 
       (.I0(\fp_A[30]_i_2_n_0 ),
        .I1(\error_n_reg[0] [2]),
        .I2(add_done),
        .I3(\error_n_reg[0] [0]),
        .I4(\error_n_reg[0] [1]),
        .I5(\fp_A_reg[31] [30]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[30]_i_2 
       (.I0(fp_result[25]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [23]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [23]),
        .O(\fp_A[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[31]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [31]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[31]_i_2_n_0 ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[31]_i_2 
       (.I0(fp_result[26]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [24]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [24]),
        .O(\fp_A[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[3]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [3]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[3]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[3]_i_2 
       (.I0(fp_result[3]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [3]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [3]),
        .O(\fp_A[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[4]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [4]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[4]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[4]_i_2 
       (.I0(fp_result[4]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [4]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [4]),
        .O(\fp_A[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[5]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [5]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[5]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[5]_i_2 
       (.I0(fp_result[5]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [5]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [5]),
        .O(\fp_A[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[6]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [6]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[6]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[6]_i_2 
       (.I0(fp_result[6]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [6]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [6]),
        .O(\fp_A[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[7]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [7]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[7]_i_2_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[7]_i_2 
       (.I0(fp_result[7]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [7]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [7]),
        .O(\fp_A[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[8]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [8]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[8]_i_2_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[8]_i_2 
       (.I0(fp_result[8]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [8]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [8]),
        .O(\fp_A[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20000000200000)) 
    \fp_A[9]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(add_done),
        .I2(\fp_A_reg[31] [9]),
        .I3(\error_n_reg[0] [1]),
        .I4(\error_n_reg[0] [0]),
        .I5(\fp_A[9]_i_2_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \fp_A[9]_i_2 
       (.I0(fp_result[9]),
        .I1(add_done),
        .I2(\fp_A_reg[31]_0 [9]),
        .I3(\error_n_reg[0] [2]),
        .I4(mul_done),
        .I5(\fp_A_reg[31]_1 [9]),
        .O(\fp_A[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[0]_i_1 
       (.I0(\fp_B[0]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[0]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [0]),
        .O(\FSM_sequential_state_reg[1]_1 [0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[0]_i_2 
       (.I0(\fp_B_reg[31]_2 [0]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [0]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[0] ),
        .O(\fp_B[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[0]_i_3 
       (.I0(\fp_B_reg[31] [0]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [0]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [0]),
        .O(\fp_B[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[10]_i_1 
       (.I0(\fp_B[10]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[10]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [10]),
        .O(\FSM_sequential_state_reg[1]_1 [10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[10]_i_2 
       (.I0(\fp_B_reg[31]_2 [10]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [10]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[10] ),
        .O(\fp_B[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[10]_i_3 
       (.I0(\fp_B_reg[31] [10]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [10]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [10]),
        .O(\fp_B[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[11]_i_1 
       (.I0(\fp_B[11]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[11]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [11]),
        .O(\FSM_sequential_state_reg[1]_1 [11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[11]_i_2 
       (.I0(\fp_B_reg[31]_2 [11]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [11]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[11] ),
        .O(\fp_B[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[11]_i_3 
       (.I0(\fp_B_reg[31] [11]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [11]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [11]),
        .O(\fp_B[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[12]_i_1 
       (.I0(\fp_B[12]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[12]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [12]),
        .O(\FSM_sequential_state_reg[1]_1 [12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[12]_i_2 
       (.I0(\fp_B_reg[31]_2 [12]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [12]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[12] ),
        .O(\fp_B[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[12]_i_3 
       (.I0(\fp_B_reg[31] [12]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [12]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [12]),
        .O(\fp_B[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[13]_i_1 
       (.I0(\fp_B[13]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[13]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [13]),
        .O(\FSM_sequential_state_reg[1]_1 [13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[13]_i_2 
       (.I0(\fp_B_reg[31]_2 [13]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [13]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[13] ),
        .O(\fp_B[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[13]_i_3 
       (.I0(\fp_B_reg[31] [13]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [13]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [13]),
        .O(\fp_B[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[14]_i_1 
       (.I0(\fp_B[14]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[14]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [14]),
        .O(\FSM_sequential_state_reg[1]_1 [14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[14]_i_2 
       (.I0(\fp_B_reg[31]_2 [14]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [14]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[14] ),
        .O(\fp_B[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[14]_i_3 
       (.I0(\fp_B_reg[31] [14]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [14]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [14]),
        .O(\fp_B[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[15]_i_1 
       (.I0(\fp_B[15]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[15]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [15]),
        .O(\FSM_sequential_state_reg[1]_1 [15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[15]_i_2 
       (.I0(\fp_B_reg[31]_2 [15]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [15]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[15] ),
        .O(\fp_B[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[15]_i_3 
       (.I0(\fp_B_reg[31] [15]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [15]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [15]),
        .O(\fp_B[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[16]_i_1 
       (.I0(\fp_B[16]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[16]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [16]),
        .O(\FSM_sequential_state_reg[1]_1 [16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[16]_i_2 
       (.I0(\fp_B_reg[31]_2 [16]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [16]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[16] ),
        .O(\fp_B[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[16]_i_3 
       (.I0(\fp_B_reg[31] [16]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [16]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [16]),
        .O(\fp_B[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[17]_i_1 
       (.I0(\fp_B[17]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[17]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [17]),
        .O(\FSM_sequential_state_reg[1]_1 [17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[17]_i_2 
       (.I0(\fp_B_reg[31]_2 [17]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [17]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[17] ),
        .O(\fp_B[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[17]_i_3 
       (.I0(\fp_B_reg[31] [17]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [17]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [17]),
        .O(\fp_B[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[18]_i_1 
       (.I0(\fp_B[18]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[18]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [18]),
        .O(\FSM_sequential_state_reg[1]_1 [18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[18]_i_2 
       (.I0(\fp_B_reg[31]_2 [18]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [18]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[18] ),
        .O(\fp_B[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[18]_i_3 
       (.I0(\fp_B_reg[31] [18]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [18]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [18]),
        .O(\fp_B[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[19]_i_1 
       (.I0(\fp_B[19]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[19]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [19]),
        .O(\FSM_sequential_state_reg[1]_1 [19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[19]_i_2 
       (.I0(\fp_B_reg[31]_2 [19]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [19]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[19] ),
        .O(\fp_B[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[19]_i_3 
       (.I0(\fp_B_reg[31] [19]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [19]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [19]),
        .O(\fp_B[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[1]_i_1 
       (.I0(\fp_B[1]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[1]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [1]),
        .O(\FSM_sequential_state_reg[1]_1 [1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[1]_i_2 
       (.I0(\fp_B_reg[31]_2 [1]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [1]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[1] ),
        .O(\fp_B[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[1]_i_3 
       (.I0(\fp_B_reg[31] [1]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [1]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [1]),
        .O(\fp_B[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[20]_i_1 
       (.I0(\fp_B[20]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[20]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [20]),
        .O(\FSM_sequential_state_reg[1]_1 [20]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[20]_i_2 
       (.I0(\fp_B_reg[31]_2 [20]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [20]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[20] ),
        .O(\fp_B[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[20]_i_3 
       (.I0(\fp_B_reg[31] [20]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [20]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [20]),
        .O(\fp_B[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[21]_i_1 
       (.I0(\fp_B[21]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[21]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [21]),
        .O(\FSM_sequential_state_reg[1]_1 [21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[21]_i_2 
       (.I0(\fp_B_reg[31]_2 [21]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [21]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[21] ),
        .O(\fp_B[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[21]_i_3 
       (.I0(\fp_B_reg[31] [21]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [21]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [21]),
        .O(\fp_B[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[22]_i_1 
       (.I0(\fp_B[22]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[22]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [22]),
        .O(\FSM_sequential_state_reg[1]_1 [22]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[22]_i_2 
       (.I0(\fp_B_reg[31]_2 [22]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [22]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[22] ),
        .O(\fp_B[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[22]_i_3 
       (.I0(\fp_B_reg[31] [22]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [22]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [22]),
        .O(\fp_B[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[23]_i_1 
       (.I0(\fp_B[23]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[23]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [23]),
        .O(\FSM_sequential_state_reg[1]_1 [23]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[23]_i_2 
       (.I0(\fp_B_reg[31]_2 [23]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [23]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[23] ),
        .O(\fp_B[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[23]_i_3 
       (.I0(\fp_B_reg[31] [23]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [23]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [23]),
        .O(\fp_B[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[24]_i_1 
       (.I0(\fp_B[24]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[24]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [24]),
        .O(\FSM_sequential_state_reg[1]_1 [24]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[24]_i_2 
       (.I0(\fp_B_reg[31]_2 [24]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [24]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[24] ),
        .O(\fp_B[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[24]_i_3 
       (.I0(\fp_B_reg[31] [24]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [24]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [24]),
        .O(\fp_B[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[25]_i_1 
       (.I0(\fp_B[25]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[25]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [25]),
        .O(\FSM_sequential_state_reg[1]_1 [25]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[25]_i_2 
       (.I0(\fp_B_reg[31]_2 [25]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [25]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[25] ),
        .O(\fp_B[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[25]_i_3 
       (.I0(\fp_B_reg[31] [25]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [25]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [25]),
        .O(\fp_B[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[26]_i_1 
       (.I0(\fp_B[26]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[26]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [26]),
        .O(\FSM_sequential_state_reg[1]_1 [26]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[26]_i_2 
       (.I0(\fp_B_reg[31]_2 [26]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [26]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[26] ),
        .O(\fp_B[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[26]_i_3 
       (.I0(\fp_B_reg[31] [26]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [26]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [26]),
        .O(\fp_B[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[27]_i_1 
       (.I0(\fp_B[27]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[27]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [27]),
        .O(\FSM_sequential_state_reg[1]_1 [27]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[27]_i_2 
       (.I0(\fp_B_reg[31]_2 [27]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [27]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[27] ),
        .O(\fp_B[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[27]_i_3 
       (.I0(\fp_B_reg[31] [27]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [27]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [27]),
        .O(\fp_B[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[28]_i_1 
       (.I0(\fp_B[28]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[28]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [28]),
        .O(\FSM_sequential_state_reg[1]_1 [28]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[28]_i_2 
       (.I0(\fp_B_reg[31]_2 [28]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [28]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[28] ),
        .O(\fp_B[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[28]_i_3 
       (.I0(\fp_B_reg[31] [28]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [28]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [27]),
        .O(\fp_B[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[29]_i_1 
       (.I0(\fp_B[29]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[29]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [29]),
        .O(\FSM_sequential_state_reg[1]_1 [29]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[29]_i_2 
       (.I0(\fp_B_reg[31]_2 [29]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [29]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[29] ),
        .O(\fp_B[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[29]_i_3 
       (.I0(\fp_B_reg[31] [29]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [29]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [27]),
        .O(\fp_B[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[2]_i_1 
       (.I0(\fp_B[2]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[2]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [2]),
        .O(\FSM_sequential_state_reg[1]_1 [2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[2]_i_2 
       (.I0(\fp_B_reg[31]_2 [2]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [2]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[2] ),
        .O(\fp_B[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[2]_i_3 
       (.I0(\fp_B_reg[31] [2]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [2]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [2]),
        .O(\fp_B[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[30]_i_1 
       (.I0(\fp_B[30]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[30]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [30]),
        .O(\FSM_sequential_state_reg[1]_1 [30]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[30]_i_2 
       (.I0(\fp_B_reg[31]_2 [30]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [30]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[30] ),
        .O(\fp_B[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[30]_i_3 
       (.I0(\fp_B_reg[31] [30]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [30]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [28]),
        .O(\fp_B[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[31]_i_2 
       (.I0(\fp_B[31]_i_3_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[31]_i_4_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [31]),
        .O(\FSM_sequential_state_reg[1]_1 [31]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[31]_i_3 
       (.I0(\fp_B_reg[31]_2 [31]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [31]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_4 ),
        .O(\fp_B[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[31]_i_4 
       (.I0(\fp_B_reg[31] [31]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [31]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [29]),
        .O(\fp_B[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[3]_i_1 
       (.I0(\fp_B[3]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[3]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [3]),
        .O(\FSM_sequential_state_reg[1]_1 [3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[3]_i_2 
       (.I0(\fp_B_reg[31]_2 [3]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [3]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[3] ),
        .O(\fp_B[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[3]_i_3 
       (.I0(\fp_B_reg[31] [3]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [3]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [3]),
        .O(\fp_B[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[4]_i_1 
       (.I0(\fp_B[4]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[4]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [4]),
        .O(\FSM_sequential_state_reg[1]_1 [4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[4]_i_2 
       (.I0(\fp_B_reg[31]_2 [4]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [4]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[4] ),
        .O(\fp_B[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[4]_i_3 
       (.I0(\fp_B_reg[31] [4]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [4]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [4]),
        .O(\fp_B[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[5]_i_1 
       (.I0(\fp_B[5]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[5]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [5]),
        .O(\FSM_sequential_state_reg[1]_1 [5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[5]_i_2 
       (.I0(\fp_B_reg[31]_2 [5]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [5]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[5] ),
        .O(\fp_B[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[5]_i_3 
       (.I0(\fp_B_reg[31] [5]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [5]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [5]),
        .O(\fp_B[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[6]_i_1 
       (.I0(\fp_B[6]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[6]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [6]),
        .O(\FSM_sequential_state_reg[1]_1 [6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[6]_i_2 
       (.I0(\fp_B_reg[31]_2 [6]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [6]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[6] ),
        .O(\fp_B[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[6]_i_3 
       (.I0(\fp_B_reg[31] [6]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [6]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [6]),
        .O(\fp_B[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[7]_i_1 
       (.I0(\fp_B[7]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[7]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [7]),
        .O(\FSM_sequential_state_reg[1]_1 [7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[7]_i_2 
       (.I0(\fp_B_reg[31]_2 [7]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [7]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[7] ),
        .O(\fp_B[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[7]_i_3 
       (.I0(\fp_B_reg[31] [7]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [7]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [7]),
        .O(\fp_B[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[8]_i_1 
       (.I0(\fp_B[8]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[8]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [8]),
        .O(\FSM_sequential_state_reg[1]_1 [8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[8]_i_2 
       (.I0(\fp_B_reg[31]_2 [8]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [8]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[8] ),
        .O(\fp_B[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[8]_i_3 
       (.I0(\fp_B_reg[31] [8]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [8]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [8]),
        .O(\fp_B[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[9]_i_1 
       (.I0(\fp_B[9]_i_2_n_0 ),
        .I1(\error_n_reg[0] [1]),
        .I2(\fp_B[9]_i_3_n_0 ),
        .I3(\error_n_reg[0] [0]),
        .I4(\fp_A_reg[31] [9]),
        .O(\FSM_sequential_state_reg[1]_1 [9]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[9]_i_2 
       (.I0(\fp_B_reg[31]_2 [9]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_3 [9]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[9] ),
        .O(\fp_B[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fp_B[9]_i_3 
       (.I0(\fp_B_reg[31] [9]),
        .I1(add_done),
        .I2(\fp_B_reg[31]_0 [9]),
        .I3(\error_n_reg[0] [2]),
        .I4(\fp_B_reg[31]_1 [9]),
        .O(\fp_B[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1
       (.I0(\A_mantissa_ext_reg_n_0_[15] ),
        .I1(\B_mantissa_ext_reg_n_0_[15] ),
        .I2(\A_mantissa_ext_reg_n_0_[14] ),
        .I3(\B_mantissa_ext_reg_n_0_[14] ),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2
       (.I0(\A_mantissa_ext_reg_n_0_[13] ),
        .I1(\B_mantissa_ext_reg_n_0_[13] ),
        .I2(\A_mantissa_ext_reg_n_0_[12] ),
        .I3(\B_mantissa_ext_reg_n_0_[12] ),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3
       (.I0(\A_mantissa_ext_reg_n_0_[11] ),
        .I1(\B_mantissa_ext_reg_n_0_[11] ),
        .I2(\A_mantissa_ext_reg_n_0_[10] ),
        .I3(\B_mantissa_ext_reg_n_0_[10] ),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4
       (.I0(\A_mantissa_ext_reg_n_0_[9] ),
        .I1(\B_mantissa_ext_reg_n_0_[9] ),
        .I2(\A_mantissa_ext_reg_n_0_[8] ),
        .I3(\B_mantissa_ext_reg_n_0_[8] ),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(\B_mantissa_ext_reg_n_0_[15] ),
        .I1(\A_mantissa_ext_reg_n_0_[15] ),
        .I2(\B_mantissa_ext_reg_n_0_[14] ),
        .I3(\A_mantissa_ext_reg_n_0_[14] ),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(\B_mantissa_ext_reg_n_0_[13] ),
        .I1(\A_mantissa_ext_reg_n_0_[13] ),
        .I2(\B_mantissa_ext_reg_n_0_[12] ),
        .I3(\A_mantissa_ext_reg_n_0_[12] ),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(\B_mantissa_ext_reg_n_0_[11] ),
        .I1(\A_mantissa_ext_reg_n_0_[11] ),
        .I2(\B_mantissa_ext_reg_n_0_[10] ),
        .I3(\A_mantissa_ext_reg_n_0_[10] ),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(\B_mantissa_ext_reg_n_0_[9] ),
        .I1(\A_mantissa_ext_reg_n_0_[9] ),
        .I2(\B_mantissa_ext_reg_n_0_[8] ),
        .I3(\A_mantissa_ext_reg_n_0_[8] ),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_1
       (.I0(\A_mantissa_ext_reg_n_0_[23] ),
        .I1(\B_mantissa_ext_reg_n_0_[23] ),
        .I2(\A_mantissa_ext_reg_n_0_[22] ),
        .I3(\B_mantissa_ext_reg_n_0_[22] ),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_2
       (.I0(\A_mantissa_ext_reg_n_0_[21] ),
        .I1(\B_mantissa_ext_reg_n_0_[21] ),
        .I2(\A_mantissa_ext_reg_n_0_[20] ),
        .I3(\B_mantissa_ext_reg_n_0_[20] ),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_3
       (.I0(\A_mantissa_ext_reg_n_0_[19] ),
        .I1(\B_mantissa_ext_reg_n_0_[19] ),
        .I2(\A_mantissa_ext_reg_n_0_[18] ),
        .I3(\B_mantissa_ext_reg_n_0_[18] ),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_4
       (.I0(\A_mantissa_ext_reg_n_0_[17] ),
        .I1(\B_mantissa_ext_reg_n_0_[17] ),
        .I2(\A_mantissa_ext_reg_n_0_[16] ),
        .I3(\B_mantissa_ext_reg_n_0_[16] ),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5
       (.I0(\B_mantissa_ext_reg_n_0_[23] ),
        .I1(\A_mantissa_ext_reg_n_0_[23] ),
        .I2(\B_mantissa_ext_reg_n_0_[22] ),
        .I3(\A_mantissa_ext_reg_n_0_[22] ),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(\B_mantissa_ext_reg_n_0_[21] ),
        .I1(\A_mantissa_ext_reg_n_0_[21] ),
        .I2(\B_mantissa_ext_reg_n_0_[20] ),
        .I3(\A_mantissa_ext_reg_n_0_[20] ),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(\B_mantissa_ext_reg_n_0_[19] ),
        .I1(\A_mantissa_ext_reg_n_0_[19] ),
        .I2(\B_mantissa_ext_reg_n_0_[18] ),
        .I3(\A_mantissa_ext_reg_n_0_[18] ),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(\B_mantissa_ext_reg_n_0_[17] ),
        .I1(\A_mantissa_ext_reg_n_0_[17] ),
        .I2(\B_mantissa_ext_reg_n_0_[16] ),
        .I3(\A_mantissa_ext_reg_n_0_[16] ),
        .O(i__carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__2_i_1
       (.I0(\A_mantissa_ext_reg_n_0_[26] ),
        .I1(\B_mantissa_ext_reg_n_0_[26] ),
        .O(i__carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__2_i_2
       (.I0(\A_mantissa_ext_reg_n_0_[25] ),
        .I1(\B_mantissa_ext_reg_n_0_[25] ),
        .I2(\A_mantissa_ext_reg_n_0_[24] ),
        .I3(\B_mantissa_ext_reg_n_0_[24] ),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3
       (.I0(\B_mantissa_ext_reg_n_0_[26] ),
        .I1(\A_mantissa_ext_reg_n_0_[26] ),
        .O(i__carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_4
       (.I0(\B_mantissa_ext_reg_n_0_[25] ),
        .I1(\A_mantissa_ext_reg_n_0_[25] ),
        .I2(\B_mantissa_ext_reg_n_0_[24] ),
        .I3(\A_mantissa_ext_reg_n_0_[24] ),
        .O(i__carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(A_exp_s[6]),
        .I1(B_exp_s[6]),
        .I2(B_exp_s[7]),
        .I3(A_exp_s[7]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__0
       (.I0(B_exp_s[6]),
        .I1(A_exp_s[6]),
        .I2(A_exp_s[7]),
        .I3(B_exp_s[7]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1__1
       (.I0(\A_mantissa_ext_reg_n_0_[7] ),
        .I1(\B_mantissa_ext_reg_n_0_[7] ),
        .I2(\A_mantissa_ext_reg_n_0_[6] ),
        .I3(\B_mantissa_ext_reg_n_0_[6] ),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2B22)) 
    i__carry_i_2
       (.I0(B_exp_s[5]),
        .I1(A_exp_s[5]),
        .I2(A_exp_s[4]),
        .I3(B_exp_s[4]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry_i_2__0
       (.I0(B_exp_s[4]),
        .I1(A_exp_s[4]),
        .I2(A_exp_s[5]),
        .I3(B_exp_s[5]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2__1
       (.I0(\A_mantissa_ext_reg_n_0_[5] ),
        .I1(\B_mantissa_ext_reg_n_0_[5] ),
        .I2(\A_mantissa_ext_reg_n_0_[4] ),
        .I3(\B_mantissa_ext_reg_n_0_[4] ),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_3
       (.I0(A_exp_s[2]),
        .I1(B_exp_s[2]),
        .I2(A_exp_s[3]),
        .I3(B_exp_s[3]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__0
       (.I0(B_exp_s[3]),
        .I1(A_exp_s[3]),
        .I2(B_exp_s[2]),
        .I3(A_exp_s[2]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__1
       (.I0(\A_mantissa_ext_reg_n_0_[3] ),
        .I1(\B_mantissa_ext_reg_n_0_[3] ),
        .I2(\A_mantissa_ext_reg_n_0_[2] ),
        .I3(\B_mantissa_ext_reg_n_0_[2] ),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4
       (.I0(\A_mantissa_ext_reg_n_0_[1] ),
        .I1(\B_mantissa_ext_reg_n_0_[1] ),
        .I2(\A_mantissa_ext_reg_n_0_[0] ),
        .I3(\B_mantissa_ext_reg_n_0_[0] ),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4__0
       (.I0(A_exp_s[1]),
        .I1(B_exp_s[1]),
        .I2(A_exp_s[0]),
        .I3(B_exp_s[0]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_4__1
       (.I0(A_exp_s[1]),
        .I1(B_exp_s[1]),
        .I2(B_exp_s[0]),
        .I3(A_exp_s[0]),
        .O(i__carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(B_exp_s[6]),
        .I1(A_exp_s[6]),
        .I2(A_exp_s[7]),
        .I3(B_exp_s[7]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(\B_mantissa_ext_reg_n_0_[7] ),
        .I1(\A_mantissa_ext_reg_n_0_[7] ),
        .I2(\B_mantissa_ext_reg_n_0_[6] ),
        .I3(\A_mantissa_ext_reg_n_0_[6] ),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__1
       (.I0(B_exp_s[6]),
        .I1(A_exp_s[6]),
        .I2(A_exp_s[7]),
        .I3(B_exp_s[7]),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(B_exp_s[4]),
        .I1(A_exp_s[4]),
        .I2(A_exp_s[5]),
        .I3(B_exp_s[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(\B_mantissa_ext_reg_n_0_[5] ),
        .I1(\A_mantissa_ext_reg_n_0_[5] ),
        .I2(\B_mantissa_ext_reg_n_0_[4] ),
        .I3(\A_mantissa_ext_reg_n_0_[4] ),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__1
       (.I0(B_exp_s[4]),
        .I1(A_exp_s[4]),
        .I2(A_exp_s[5]),
        .I3(B_exp_s[5]),
        .O(i__carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(B_exp_s[3]),
        .I1(A_exp_s[3]),
        .I2(A_exp_s[2]),
        .I3(B_exp_s[2]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(\B_mantissa_ext_reg_n_0_[3] ),
        .I1(\A_mantissa_ext_reg_n_0_[3] ),
        .I2(\B_mantissa_ext_reg_n_0_[2] ),
        .I3(\A_mantissa_ext_reg_n_0_[2] ),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(B_exp_s[3]),
        .I1(A_exp_s[3]),
        .I2(A_exp_s[2]),
        .I3(B_exp_s[2]),
        .O(i__carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(\B_mantissa_ext_reg_n_0_[1] ),
        .I1(\A_mantissa_ext_reg_n_0_[1] ),
        .I2(\B_mantissa_ext_reg_n_0_[0] ),
        .I3(\A_mantissa_ext_reg_n_0_[0] ),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(B_exp_s[1]),
        .I1(A_exp_s[1]),
        .I2(B_exp_s[0]),
        .I3(A_exp_s[0]),
        .O(i__carry_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__1
       (.I0(B_exp_s[1]),
        .I1(A_exp_s[1]),
        .I2(B_exp_s[0]),
        .I3(A_exp_s[0]),
        .O(i__carry_i_8__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \integral_sum[31]_i_1 
       (.I0(add_done),
        .I1(\error_n_reg[0] [2]),
        .I2(\error_n_reg[0] [0]),
        .I3(\error_n_reg[0] [1]),
        .O(done_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h30440044)) 
    mul_start_i_2
       (.I0(\error_n_reg[0] [3]),
        .I1(\error_n_reg[0] [1]),
        .I2(add_done),
        .I3(\error_n_reg[0] [2]),
        .I4(\error_n_reg[0] [0]),
        .O(mul_start));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result[23]_i_1 
       (.I0(\final_exp_s_reg_n_0_[0] ),
        .I1(\final_exp_s_reg_n_0_[8] ),
        .O(\result[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[25]_i_1 
       (.I0(\final_exp_s_reg_n_0_[2] ),
        .I1(\final_exp_s_reg_n_0_[8] ),
        .O(\result[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F8000000000000)) 
    \result[29]_i_1 
       (.I0(\result[29]_i_2_n_0 ),
        .I1(\result[29]_i_3_n_0 ),
        .I2(\final_exp_s_reg_n_0_[8] ),
        .I3(rst_fp),
        .I4(state[0]),
        .I5(\FSM_sequential_state_reg_n_0_[2] ),
        .O(\result[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \result[29]_i_2 
       (.I0(\final_exp_s_reg_n_0_[4] ),
        .I1(\final_exp_s_reg_n_0_[0] ),
        .I2(\final_exp_s_reg_n_0_[5] ),
        .I3(\final_exp_s_reg_n_0_[2] ),
        .O(\result[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \result[29]_i_3 
       (.I0(\final_exp_s_reg_n_0_[3] ),
        .I1(\final_exp_s_reg_n_0_[6] ),
        .I2(\final_exp_s_reg_n_0_[1] ),
        .I3(\final_exp_s_reg_n_0_[7] ),
        .O(\result[29]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result[30]_i_1 
       (.I0(\final_exp_s_reg_n_0_[7] ),
        .I1(\final_exp_s_reg_n_0_[8] ),
        .O(\result[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result[31]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[2] ),
        .I1(state[0]),
        .I2(rst_fp),
        .O(result0));
  FDRE \result_reg[0] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[3] ),
        .Q(fp_result[0]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[10] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[13] ),
        .Q(fp_result[10]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[11] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[14] ),
        .Q(fp_result[11]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[12] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[15] ),
        .Q(fp_result[12]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[13] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[16] ),
        .Q(fp_result[13]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[14] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[17] ),
        .Q(fp_result[14]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[15] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[18] ),
        .Q(fp_result[15]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[16] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[19] ),
        .Q(fp_result[16]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[17] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[20] ),
        .Q(fp_result[17]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[18] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[21] ),
        .Q(fp_result[18]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[19] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[22] ),
        .Q(fp_result[19]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[1] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[4] ),
        .Q(fp_result[1]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[20] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[23] ),
        .Q(fp_result[20]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[21] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[24] ),
        .Q(fp_result[21]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[22] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[25] ),
        .Q(fp_result[22]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[23] 
       (.C(clk),
        .CE(result0),
        .D(\result[23]_i_1_n_0 ),
        .Q(UNCONN_OUT[0]),
        .R(1'b0));
  FDRE \result_reg[24] 
       (.C(clk),
        .CE(result0),
        .D(\final_exp_s_reg_n_0_[1] ),
        .Q(UNCONN_OUT[1]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[25] 
       (.C(clk),
        .CE(result0),
        .D(\result[25]_i_1_n_0 ),
        .Q(fp_result[23]),
        .R(1'b0));
  FDRE \result_reg[26] 
       (.C(clk),
        .CE(result0),
        .D(\final_exp_s_reg_n_0_[3] ),
        .Q(fp_result[24]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[27] 
       (.C(clk),
        .CE(result0),
        .D(\final_exp_s_reg_n_0_[4] ),
        .Q(UNCONN_OUT[2]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[28] 
       (.C(clk),
        .CE(result0),
        .D(\final_exp_s_reg_n_0_[5] ),
        .Q(UNCONN_OUT[3]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[29] 
       (.C(clk),
        .CE(result0),
        .D(\final_exp_s_reg_n_0_[6] ),
        .Q(UNCONN_OUT[4]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[2] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[5] ),
        .Q(fp_result[2]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[30] 
       (.C(clk),
        .CE(result0),
        .D(\result[30]_i_1_n_0 ),
        .Q(fp_result[25]),
        .R(1'b0));
  FDRE \result_reg[31] 
       (.C(clk),
        .CE(result0),
        .D(final_sgn__0),
        .Q(fp_result[26]),
        .R(1'b0));
  FDRE \result_reg[3] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[6] ),
        .Q(fp_result[3]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[4] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[7] ),
        .Q(fp_result[4]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[5] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[8] ),
        .Q(fp_result[5]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[6] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[9] ),
        .Q(fp_result[6]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[7] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[10] ),
        .Q(fp_result[7]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[8] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[11] ),
        .Q(fp_result[8]),
        .R(\result[29]_i_1_n_0 ));
  FDRE \result_reg[9] 
       (.C(clk),
        .CE(result0),
        .D(\final_mantissa_reg_n_0_[12] ),
        .Q(fp_result[9]),
        .R(\result[29]_i_1_n_0 ));
  CARRY4 \state1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\state1_inferred__0/i__carry_n_0 ,\state1_inferred__0/i__carry_n_1 ,\state1_inferred__0/i__carry_n_2 ,\state1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2__0_n_0,i__carry_i_3_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_state1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__0_n_0}));
  CARRY4 \state1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\state1_inferred__1/i__carry_n_0 ,\state1_inferred__1/i__carry_n_1 ,\state1_inferred__1/i__carry_n_2 ,\state1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2_n_0,i__carry_i_3__0_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_state1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8__1_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \temp_error_diff[31]_i_1 
       (.I0(\error_n_reg[0] [2]),
        .I1(\error_n_reg[0] [1]),
        .I2(\error_n_reg[0] [0]),
        .I3(rst_fp),
        .I4(add_done),
        .O(E));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \temp_mantissa_result1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\temp_mantissa_result1_inferred__0/i__carry_n_0 ,\temp_mantissa_result1_inferred__0/i__carry_n_1 ,\temp_mantissa_result1_inferred__0/i__carry_n_2 ,\temp_mantissa_result1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4_n_0}),
        .O(\NLW_temp_mantissa_result1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \temp_mantissa_result1_inferred__0/i__carry__0 
       (.CI(\temp_mantissa_result1_inferred__0/i__carry_n_0 ),
        .CO({\temp_mantissa_result1_inferred__0/i__carry__0_n_0 ,\temp_mantissa_result1_inferred__0/i__carry__0_n_1 ,\temp_mantissa_result1_inferred__0/i__carry__0_n_2 ,\temp_mantissa_result1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_temp_mantissa_result1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \temp_mantissa_result1_inferred__0/i__carry__1 
       (.CI(\temp_mantissa_result1_inferred__0/i__carry__0_n_0 ),
        .CO({\temp_mantissa_result1_inferred__0/i__carry__1_n_0 ,\temp_mantissa_result1_inferred__0/i__carry__1_n_1 ,\temp_mantissa_result1_inferred__0/i__carry__1_n_2 ,\temp_mantissa_result1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_temp_mantissa_result1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \temp_mantissa_result1_inferred__0/i__carry__2 
       (.CI(\temp_mantissa_result1_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_temp_mantissa_result1_inferred__0/i__carry__2_CO_UNCONNECTED [3:2],\temp_mantissa_result1_inferred__0/i__carry__2_n_2 ,\temp_mantissa_result1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__2_i_1_n_0,i__carry__2_i_2_n_0}),
        .O(\NLW_temp_mantissa_result1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \term_I[31]_i_1 
       (.I0(\error_n_reg[0] [1]),
        .I1(\error_n_reg[0] [0]),
        .I2(\error_n_reg[0] [2]),
        .I3(add_done),
        .I4(rst_fp),
        .O(\FSM_sequential_state_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "vm_mul" *) 
module design_1_pid_controller_0_0_vm_mul
   (E,
    mul_done,
    \error_n_reg[29] ,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[2]_0 ,
    \FSM_sequential_state_reg[0] ,
    add_start,
    done_reg_0,
    done_reg_1,
    done_reg_2,
    done_reg_3,
    done_reg_4,
    done_reg_5,
    done_reg_6,
    done_reg_7,
    done_reg_8,
    done_reg_9,
    done_reg_10,
    done_reg_11,
    done_reg_12,
    done_reg_13,
    done_reg_14,
    done_reg_15,
    done_reg_16,
    done_reg_17,
    done_reg_18,
    done_reg_19,
    done_reg_20,
    done_reg_21,
    done_reg_22,
    done_reg_23,
    done_reg_24,
    done_reg_25,
    done_reg_26,
    done_reg_27,
    done_reg_28,
    done_reg_29,
    done_reg_30,
    done_reg_31,
    done_reg_32,
    done_reg_33,
    done_reg_34,
    fp_result,
    Q,
    clk,
    signA_reg_0,
    D,
    rst_fp,
    \term_P_reg[0] ,
    \fp_B[31]_i_3 ,
    \fp_A_reg[23] ,
    \fp_A_reg[29] ,
    \FSM_sequential_state_reg[0]_0 ,
    \fp_A_reg[29]_0 ,
    add_done,
    \state_reg[0]_0 ,
    fp_sub_reg,
    fp_sub_reg_0);
  output [0:0]E;
  output mul_done;
  output [4:0]\error_n_reg[29] ;
  output [0:0]\FSM_sequential_state_reg[2] ;
  output [0:0]\FSM_sequential_state_reg[2]_0 ;
  output \FSM_sequential_state_reg[0] ;
  output add_start;
  output done_reg_0;
  output done_reg_1;
  output done_reg_2;
  output done_reg_3;
  output done_reg_4;
  output done_reg_5;
  output done_reg_6;
  output done_reg_7;
  output done_reg_8;
  output done_reg_9;
  output done_reg_10;
  output done_reg_11;
  output done_reg_12;
  output done_reg_13;
  output done_reg_14;
  output done_reg_15;
  output done_reg_16;
  output done_reg_17;
  output done_reg_18;
  output done_reg_19;
  output done_reg_20;
  output done_reg_21;
  output done_reg_22;
  output done_reg_23;
  output done_reg_24;
  output done_reg_25;
  output done_reg_26;
  output done_reg_27;
  output done_reg_28;
  output done_reg_29;
  output done_reg_30;
  output done_reg_31;
  output done_reg_32;
  output done_reg_33;
  output done_reg_34;
  inout [31:0]fp_result;
  input [31:0]Q;
  input clk;
  input [31:0]signA_reg_0;
  input [16:0]D;
  input rst_fp;
  input [3:0]\term_P_reg[0] ;
  input [31:0]\fp_B[31]_i_3 ;
  input \fp_A_reg[23] ;
  input [6:0]\fp_A_reg[29] ;
  input \FSM_sequential_state_reg[0]_0 ;
  input [6:0]\fp_A_reg[29]_0 ;
  input add_done;
  input \state_reg[0]_0 ;
  input fp_sub_reg;
  input fp_sub_reg_0;

  wire CEP;
  wire [16:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_state_reg[2] ;
  wire [0:0]\FSM_sequential_state_reg[2]_0 ;
  wire [23:1]L;
  wire [31:0]Q;
  wire add_done;
  wire add_start;
  wire clk;
  wire done_i_1__1_n_0;
  wire done_reg_0;
  wire done_reg_1;
  wire done_reg_10;
  wire done_reg_11;
  wire done_reg_12;
  wire done_reg_13;
  wire done_reg_14;
  wire done_reg_15;
  wire done_reg_16;
  wire done_reg_17;
  wire done_reg_18;
  wire done_reg_19;
  wire done_reg_2;
  wire done_reg_20;
  wire done_reg_21;
  wire done_reg_22;
  wire done_reg_23;
  wire done_reg_24;
  wire done_reg_25;
  wire done_reg_26;
  wire done_reg_27;
  wire done_reg_28;
  wire done_reg_29;
  wire done_reg_3;
  wire done_reg_30;
  wire done_reg_31;
  wire done_reg_32;
  wire done_reg_33;
  wire done_reg_34;
  wire done_reg_4;
  wire done_reg_5;
  wire done_reg_6;
  wire done_reg_7;
  wire done_reg_8;
  wire done_reg_9;
  wire [4:0]\error_n_reg[29] ;
  wire \expA_reg_n_0_[0] ;
  wire \expA_reg_n_0_[1] ;
  wire \expA_reg_n_0_[2] ;
  wire \expA_reg_n_0_[3] ;
  wire \expA_reg_n_0_[4] ;
  wire \expA_reg_n_0_[5] ;
  wire \expA_reg_n_0_[6] ;
  wire \expA_reg_n_0_[7] ;
  wire \expB[7]_i_1_n_0 ;
  wire \expB_reg_n_0_[0] ;
  wire \expB_reg_n_0_[1] ;
  wire \expB_reg_n_0_[2] ;
  wire \expB_reg_n_0_[3] ;
  wire \expB_reg_n_0_[4] ;
  wire \expB_reg_n_0_[5] ;
  wire \expB_reg_n_0_[6] ;
  wire \expB_reg_n_0_[7] ;
  wire [7:0]expFinal;
  wire \expFinal[7]_i_1_n_0 ;
  wire [8:0]expSum0;
  wire expSum0_carry__0_i_1_n_0;
  wire expSum0_carry__0_i_2_n_0;
  wire expSum0_carry__0_i_3_n_0;
  wire expSum0_carry__0_i_4_n_0;
  wire expSum0_carry__0_n_0;
  wire expSum0_carry__0_n_1;
  wire expSum0_carry__0_n_2;
  wire expSum0_carry__0_n_3;
  wire expSum0_carry__1_i_1_n_0;
  wire expSum0_carry__1_n_2;
  wire expSum0_carry_i_1_n_0;
  wire expSum0_carry_i_2_n_0;
  wire expSum0_carry_i_3_n_0;
  wire expSum0_carry_i_4_n_0;
  wire expSum0_carry_n_0;
  wire expSum0_carry_n_1;
  wire expSum0_carry_n_2;
  wire expSum0_carry_n_3;
  wire \expSum[0]_i_1_n_0 ;
  wire \expSum[1]_i_1_n_0 ;
  wire \expSum[2]_i_1_n_0 ;
  wire \expSum[3]_i_1_n_0 ;
  wire \expSum[4]_i_1_n_0 ;
  wire \expSum[5]_i_1_n_0 ;
  wire \expSum[6]_i_1_n_0 ;
  wire \expSum[6]_i_2_n_0 ;
  wire \expSum[7]_i_1_n_0 ;
  wire \expSum[8]_i_1_n_0 ;
  wire \expSum[8]_i_2_n_0 ;
  wire \expSum[8]_i_3_n_0 ;
  wire \expSum[9]_i_1_n_0 ;
  wire \expSum[9]_i_2_n_0 ;
  wire \expSum[9]_i_3_n_0 ;
  wire \expSum_reg_n_0_[0] ;
  wire \expSum_reg_n_0_[1] ;
  wire \expSum_reg_n_0_[2] ;
  wire \expSum_reg_n_0_[3] ;
  wire \expSum_reg_n_0_[4] ;
  wire \expSum_reg_n_0_[5] ;
  wire \expSum_reg_n_0_[6] ;
  wire \expSum_reg_n_0_[7] ;
  wire \expSum_reg_n_0_[8] ;
  wire \expSum_reg_n_0_[9] ;
  wire \fp_A[23]_i_2_n_0 ;
  wire \fp_A[24]_i_2_n_0 ;
  wire \fp_A[27]_i_2_n_0 ;
  wire \fp_A[28]_i_2_n_0 ;
  wire \fp_A[29]_i_2_n_0 ;
  wire \fp_A_reg[23] ;
  wire [6:0]\fp_A_reg[29] ;
  wire [6:0]\fp_A_reg[29]_0 ;
  wire [31:0]\fp_B[31]_i_3 ;
  wire [31:0]fp_result;
  wire fp_sub_reg;
  wire fp_sub_reg_0;
  wire mantA1;
  wire mantB1;
  wire [22:0]mantNorm;
  wire \mantNorm[22]_i_1_n_0 ;
  wire \mantNorm_temp[0]_i_1_n_0 ;
  wire \mantNorm_temp[0]_i_2_n_0 ;
  wire \mantNorm_temp[23]_i_1_n_0 ;
  wire \mantNorm_temp_reg_n_0_[0] ;
  wire mantProd0_i_2_n_0;
  wire mantProd0_n_100;
  wire mantProd0_n_101;
  wire mantProd0_n_102;
  wire mantProd0_n_103;
  wire mantProd0_n_104;
  wire mantProd0_n_105;
  wire mantProd0_n_106;
  wire mantProd0_n_107;
  wire mantProd0_n_108;
  wire mantProd0_n_109;
  wire mantProd0_n_110;
  wire mantProd0_n_111;
  wire mantProd0_n_112;
  wire mantProd0_n_113;
  wire mantProd0_n_114;
  wire mantProd0_n_115;
  wire mantProd0_n_116;
  wire mantProd0_n_117;
  wire mantProd0_n_118;
  wire mantProd0_n_119;
  wire mantProd0_n_120;
  wire mantProd0_n_121;
  wire mantProd0_n_122;
  wire mantProd0_n_123;
  wire mantProd0_n_124;
  wire mantProd0_n_125;
  wire mantProd0_n_126;
  wire mantProd0_n_127;
  wire mantProd0_n_128;
  wire mantProd0_n_129;
  wire mantProd0_n_130;
  wire mantProd0_n_131;
  wire mantProd0_n_132;
  wire mantProd0_n_133;
  wire mantProd0_n_134;
  wire mantProd0_n_135;
  wire mantProd0_n_136;
  wire mantProd0_n_137;
  wire mantProd0_n_138;
  wire mantProd0_n_139;
  wire mantProd0_n_140;
  wire mantProd0_n_141;
  wire mantProd0_n_142;
  wire mantProd0_n_143;
  wire mantProd0_n_144;
  wire mantProd0_n_145;
  wire mantProd0_n_146;
  wire mantProd0_n_147;
  wire mantProd0_n_148;
  wire mantProd0_n_149;
  wire mantProd0_n_150;
  wire mantProd0_n_151;
  wire mantProd0_n_152;
  wire mantProd0_n_153;
  wire mantProd0_n_58;
  wire mantProd0_n_59;
  wire mantProd0_n_60;
  wire mantProd0_n_61;
  wire mantProd0_n_62;
  wire mantProd0_n_63;
  wire mantProd0_n_64;
  wire mantProd0_n_65;
  wire mantProd0_n_66;
  wire mantProd0_n_67;
  wire mantProd0_n_68;
  wire mantProd0_n_69;
  wire mantProd0_n_70;
  wire mantProd0_n_71;
  wire mantProd0_n_72;
  wire mantProd0_n_73;
  wire mantProd0_n_74;
  wire mantProd0_n_75;
  wire mantProd0_n_76;
  wire mantProd0_n_77;
  wire mantProd0_n_78;
  wire mantProd0_n_79;
  wire mantProd0_n_80;
  wire mantProd0_n_81;
  wire mantProd0_n_82;
  wire mantProd0_n_83;
  wire mantProd0_n_84;
  wire mantProd0_n_85;
  wire mantProd0_n_86;
  wire mantProd0_n_87;
  wire mantProd0_n_88;
  wire mantProd0_n_89;
  wire mantProd0_n_90;
  wire mantProd0_n_91;
  wire mantProd0_n_92;
  wire mantProd0_n_93;
  wire mantProd0_n_94;
  wire mantProd0_n_95;
  wire mantProd0_n_96;
  wire mantProd0_n_97;
  wire mantProd0_n_98;
  wire mantProd0_n_99;
  wire [47:22]mantProd_reg__0;
  wire mantProd_reg_i_3_n_0;
  wire mantProd_reg_n_101;
  wire mantProd_reg_n_102;
  wire mantProd_reg_n_103;
  wire mantProd_reg_n_104;
  wire mantProd_reg_n_105;
  wire mul_done;
  wire [23:1]p_1_in;
  wire [22:1]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire \result[0]_i_1_n_0 ;
  wire \result[10]_i_1_n_0 ;
  wire \result[11]_i_1_n_0 ;
  wire \result[12]_i_1_n_0 ;
  wire \result[13]_i_1_n_0 ;
  wire \result[14]_i_1_n_0 ;
  wire \result[15]_i_1_n_0 ;
  wire \result[16]_i_1_n_0 ;
  wire \result[17]_i_1_n_0 ;
  wire \result[18]_i_1_n_0 ;
  wire \result[19]_i_1_n_0 ;
  wire \result[1]_i_1_n_0 ;
  wire \result[20]_i_1_n_0 ;
  wire \result[21]_i_1_n_0 ;
  wire \result[21]_i_2_n_0 ;
  wire \result[22]_i_1_n_0 ;
  wire \result[23]_i_1__0_n_0 ;
  wire \result[24]_i_1_n_0 ;
  wire \result[25]_i_1__0_n_0 ;
  wire \result[26]_i_1_n_0 ;
  wire \result[27]_i_1_n_0 ;
  wire \result[28]_i_1_n_0 ;
  wire \result[29]_i_1__0_n_0 ;
  wire \result[2]_i_1_n_0 ;
  wire \result[30]_i_1__0_n_0 ;
  wire \result[30]_i_2_n_0 ;
  wire \result[30]_i_3_n_0 ;
  wire \result[30]_i_4_n_0 ;
  wire \result[31]_i_10_n_0 ;
  wire \result[31]_i_11_n_0 ;
  wire \result[31]_i_12_n_0 ;
  wire \result[31]_i_13_n_0 ;
  wire \result[31]_i_14_n_0 ;
  wire \result[31]_i_15_n_0 ;
  wire \result[31]_i_16_n_0 ;
  wire \result[31]_i_17_n_0 ;
  wire \result[31]_i_18_n_0 ;
  wire \result[31]_i_19_n_0 ;
  wire \result[31]_i_1__0_n_0 ;
  wire \result[31]_i_20_n_0 ;
  wire \result[31]_i_21_n_0 ;
  wire \result[31]_i_22_n_0 ;
  wire \result[31]_i_2_n_0 ;
  wire \result[31]_i_3_n_0 ;
  wire \result[31]_i_4_n_0 ;
  wire \result[31]_i_5_n_0 ;
  wire \result[31]_i_6_n_0 ;
  wire \result[31]_i_7_n_0 ;
  wire \result[31]_i_8_n_0 ;
  wire \result[31]_i_9_n_0 ;
  wire \result[3]_i_1_n_0 ;
  wire \result[4]_i_1_n_0 ;
  wire \result[5]_i_1_n_0 ;
  wire \result[6]_i_1_n_0 ;
  wire \result[7]_i_1_n_0 ;
  wire \result[8]_i_1_n_0 ;
  wire \result[9]_i_1_n_0 ;
  wire rst_fp;
  wire signA;
  wire [31:0]signA_reg_0;
  wire signB;
  wire signZ;
  wire signZ_i_1_n_0;
  wire [3:0]state;
  wire \state[3]_i_1_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire [3:0]\term_P_reg[0] ;
  wire [3:0]NLW_expSum0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_expSum0_carry__1_O_UNCONNECTED;
  wire NLW_mantProd0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mantProd0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mantProd0_OVERFLOW_UNCONNECTED;
  wire NLW_mantProd0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mantProd0_PATTERNDETECT_UNCONNECTED;
  wire NLW_mantProd0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mantProd0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mantProd0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mantProd0_CARRYOUT_UNCONNECTED;
  wire NLW_mantProd_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mantProd_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mantProd_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mantProd_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mantProd_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mantProd_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mantProd_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mantProd_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mantProd_reg_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_mantProd_reg_P_UNCONNECTED;
  wire [47:0]NLW_mantProd_reg_PCOUT_UNCONNECTED;
  wire [3:1]NLW_plusOp_carry__4_CO_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__4_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFF40700000)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(\term_P_reg[0] [0]),
        .I1(\term_P_reg[0] [2]),
        .I2(\term_P_reg[0] [1]),
        .I3(\term_P_reg[0] [3]),
        .I4(mul_done),
        .I5(\FSM_sequential_state_reg[0]_0 ),
        .O(\FSM_sequential_state_reg[0] ));
  LUT5 #(
    .INIT(32'h44444044)) 
    add_start_i_1
       (.I0(\term_P_reg[0] [3]),
        .I1(\term_P_reg[0] [0]),
        .I2(\term_P_reg[0] [2]),
        .I3(\term_P_reg[0] [1]),
        .I4(mul_done),
        .O(add_start));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    done_i_1__1
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(mul_done),
        .O(done_i_1__1_n_0));
  FDRE done_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_i_1__1_n_0),
        .Q(mul_done),
        .R(1'b0));
  FDRE \expA_reg[0] 
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(signA_reg_0[23]),
        .Q(\expA_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \expA_reg[1] 
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(signA_reg_0[24]),
        .Q(\expA_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \expA_reg[2] 
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(signA_reg_0[25]),
        .Q(\expA_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \expA_reg[3] 
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(signA_reg_0[26]),
        .Q(\expA_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \expA_reg[4] 
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(signA_reg_0[27]),
        .Q(\expA_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \expA_reg[5] 
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(signA_reg_0[28]),
        .Q(\expA_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \expA_reg[6] 
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(signA_reg_0[29]),
        .Q(\expA_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \expA_reg[7] 
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(signA_reg_0[30]),
        .Q(\expA_reg_n_0_[7] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \expB[7]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\expB[7]_i_1_n_0 ));
  FDRE \expB_reg[0] 
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(Q[23]),
        .Q(\expB_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \expB_reg[1] 
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(Q[24]),
        .Q(\expB_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \expB_reg[2] 
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(Q[25]),
        .Q(\expB_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \expB_reg[3] 
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(Q[26]),
        .Q(\expB_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \expB_reg[4] 
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(Q[27]),
        .Q(\expB_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \expB_reg[5] 
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(Q[28]),
        .Q(\expB_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \expB_reg[6] 
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(Q[29]),
        .Q(\expB_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \expB_reg[7] 
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(Q[30]),
        .Q(\expB_reg_n_0_[7] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00008000)) 
    \expFinal[7]_i_1 
       (.I0(\result[30]_i_2_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\expSum_reg_n_0_[8] ),
        .O(\expFinal[7]_i_1_n_0 ));
  FDRE \expFinal_reg[0] 
       (.C(clk),
        .CE(\expFinal[7]_i_1_n_0 ),
        .D(\expSum_reg_n_0_[0] ),
        .Q(expFinal[0]),
        .R(1'b0));
  FDRE \expFinal_reg[1] 
       (.C(clk),
        .CE(\expFinal[7]_i_1_n_0 ),
        .D(\expSum_reg_n_0_[1] ),
        .Q(expFinal[1]),
        .R(1'b0));
  FDRE \expFinal_reg[2] 
       (.C(clk),
        .CE(\expFinal[7]_i_1_n_0 ),
        .D(\expSum_reg_n_0_[2] ),
        .Q(expFinal[2]),
        .R(1'b0));
  FDRE \expFinal_reg[3] 
       (.C(clk),
        .CE(\expFinal[7]_i_1_n_0 ),
        .D(\expSum_reg_n_0_[3] ),
        .Q(expFinal[3]),
        .R(1'b0));
  FDRE \expFinal_reg[4] 
       (.C(clk),
        .CE(\expFinal[7]_i_1_n_0 ),
        .D(\expSum_reg_n_0_[4] ),
        .Q(expFinal[4]),
        .R(1'b0));
  FDRE \expFinal_reg[5] 
       (.C(clk),
        .CE(\expFinal[7]_i_1_n_0 ),
        .D(\expSum_reg_n_0_[5] ),
        .Q(expFinal[5]),
        .R(1'b0));
  FDRE \expFinal_reg[6] 
       (.C(clk),
        .CE(\expFinal[7]_i_1_n_0 ),
        .D(\expSum_reg_n_0_[6] ),
        .Q(expFinal[6]),
        .R(1'b0));
  FDRE \expFinal_reg[7] 
       (.C(clk),
        .CE(\expFinal[7]_i_1_n_0 ),
        .D(\expSum_reg_n_0_[7] ),
        .Q(expFinal[7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 expSum0_carry
       (.CI(1'b0),
        .CO({expSum0_carry_n_0,expSum0_carry_n_1,expSum0_carry_n_2,expSum0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\expA_reg_n_0_[3] ,\expA_reg_n_0_[2] ,\expA_reg_n_0_[1] ,\expA_reg_n_0_[0] }),
        .O(expSum0[3:0]),
        .S({expSum0_carry_i_1_n_0,expSum0_carry_i_2_n_0,expSum0_carry_i_3_n_0,expSum0_carry_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 expSum0_carry__0
       (.CI(expSum0_carry_n_0),
        .CO({expSum0_carry__0_n_0,expSum0_carry__0_n_1,expSum0_carry__0_n_2,expSum0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\expA_reg_n_0_[7] ,\expA_reg_n_0_[6] ,\expA_reg_n_0_[5] ,\expA_reg_n_0_[4] }),
        .O(expSum0[7:4]),
        .S({expSum0_carry__0_i_1_n_0,expSum0_carry__0_i_2_n_0,expSum0_carry__0_i_3_n_0,expSum0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    expSum0_carry__0_i_1
       (.I0(\expB_reg_n_0_[7] ),
        .I1(\expA_reg_n_0_[7] ),
        .O(expSum0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    expSum0_carry__0_i_2
       (.I0(\expA_reg_n_0_[6] ),
        .I1(\expB_reg_n_0_[6] ),
        .O(expSum0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    expSum0_carry__0_i_3
       (.I0(\expA_reg_n_0_[5] ),
        .I1(\expB_reg_n_0_[5] ),
        .O(expSum0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    expSum0_carry__0_i_4
       (.I0(\expA_reg_n_0_[4] ),
        .I1(\expB_reg_n_0_[4] ),
        .O(expSum0_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 expSum0_carry__1
       (.CI(expSum0_carry__0_n_0),
        .CO({NLW_expSum0_carry__1_CO_UNCONNECTED[3:2],expSum0_carry__1_n_2,NLW_expSum0_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\expB_reg_n_0_[7] }),
        .O({NLW_expSum0_carry__1_O_UNCONNECTED[3:1],expSum0[8]}),
        .S({1'b0,1'b0,1'b1,expSum0_carry__1_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    expSum0_carry__1_i_1
       (.I0(\expB_reg_n_0_[7] ),
        .O(expSum0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    expSum0_carry_i_1
       (.I0(\expA_reg_n_0_[3] ),
        .I1(\expB_reg_n_0_[3] ),
        .O(expSum0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    expSum0_carry_i_2
       (.I0(\expA_reg_n_0_[2] ),
        .I1(\expB_reg_n_0_[2] ),
        .O(expSum0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    expSum0_carry_i_3
       (.I0(\expA_reg_n_0_[1] ),
        .I1(\expB_reg_n_0_[1] ),
        .O(expSum0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    expSum0_carry_i_4
       (.I0(\expA_reg_n_0_[0] ),
        .I1(\expB_reg_n_0_[0] ),
        .O(expSum0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h02FE)) 
    \expSum[0]_i_1 
       (.I0(expSum0[0]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\expSum_reg_n_0_[0] ),
        .O(\expSum[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h02FEFE02)) 
    \expSum[1]_i_1 
       (.I0(expSum0[1]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\expSum_reg_n_0_[0] ),
        .I4(\expSum_reg_n_0_[1] ),
        .O(\expSum[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02FEFE02FE02FE02)) 
    \expSum[2]_i_1 
       (.I0(expSum0[2]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\expSum_reg_n_0_[2] ),
        .I4(\expSum_reg_n_0_[1] ),
        .I5(\expSum_reg_n_0_[0] ),
        .O(\expSum[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA3FFFC000)) 
    \expSum[3]_i_1 
       (.I0(expSum0[3]),
        .I1(\expSum_reg_n_0_[0] ),
        .I2(\expSum_reg_n_0_[1] ),
        .I3(\expSum_reg_n_0_[2] ),
        .I4(\expSum_reg_n_0_[3] ),
        .I5(\expSum[8]_i_2_n_0 ),
        .O(\expSum[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h02FEFE02)) 
    \expSum[4]_i_1 
       (.I0(expSum0[4]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\expSum_reg_n_0_[4] ),
        .I4(\expSum[6]_i_2_n_0 ),
        .O(\expSum[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02FEFE02FE02FE02)) 
    \expSum[5]_i_1 
       (.I0(expSum0[5]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\expSum_reg_n_0_[5] ),
        .I4(\expSum[6]_i_2_n_0 ),
        .I5(\expSum_reg_n_0_[4] ),
        .O(\expSum[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \expSum[6]_i_1 
       (.I0(expSum0[6]),
        .I1(\expSum[8]_i_2_n_0 ),
        .I2(\expSum_reg_n_0_[6] ),
        .I3(\expSum_reg_n_0_[5] ),
        .I4(\expSum_reg_n_0_[4] ),
        .I5(\expSum[6]_i_2_n_0 ),
        .O(\expSum[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \expSum[6]_i_2 
       (.I0(\expSum_reg_n_0_[0] ),
        .I1(\expSum_reg_n_0_[1] ),
        .I2(\expSum_reg_n_0_[2] ),
        .I3(\expSum_reg_n_0_[3] ),
        .O(\expSum[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h02FEFE02FE02FE02)) 
    \expSum[7]_i_1 
       (.I0(expSum0[7]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\expSum_reg_n_0_[7] ),
        .I4(\expSum[8]_i_3_n_0 ),
        .I5(\expSum_reg_n_0_[6] ),
        .O(\expSum[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \expSum[8]_i_1 
       (.I0(expSum0[8]),
        .I1(\expSum[8]_i_2_n_0 ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[6] ),
        .I4(\expSum[8]_i_3_n_0 ),
        .I5(\expSum_reg_n_0_[7] ),
        .O(\expSum[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \expSum[8]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\expSum[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \expSum[8]_i_3 
       (.I0(\expSum_reg_n_0_[0] ),
        .I1(\expSum_reg_n_0_[1] ),
        .I2(\expSum_reg_n_0_[2] ),
        .I3(\expSum_reg_n_0_[3] ),
        .I4(\expSum_reg_n_0_[4] ),
        .I5(\expSum_reg_n_0_[5] ),
        .O(\expSum[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h22A200A2)) 
    \expSum[9]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(mantProd_reg__0[47]),
        .I3(\state_reg_n_0_[1] ),
        .I4(L[23]),
        .O(\expSum[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3CCC3CCC3CCC5555)) 
    \expSum[9]_i_2 
       (.I0(expSum0_carry__1_n_2),
        .I1(\expSum_reg_n_0_[9] ),
        .I2(\expSum[9]_i_3_n_0 ),
        .I3(\expSum_reg_n_0_[8] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\expSum[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \expSum[9]_i_3 
       (.I0(\expSum_reg_n_0_[7] ),
        .I1(\expSum[6]_i_2_n_0 ),
        .I2(\expSum_reg_n_0_[4] ),
        .I3(\expSum_reg_n_0_[5] ),
        .I4(\expSum_reg_n_0_[6] ),
        .O(\expSum[9]_i_3_n_0 ));
  FDRE \expSum_reg[0] 
       (.C(clk),
        .CE(\expSum[9]_i_1_n_0 ),
        .D(\expSum[0]_i_1_n_0 ),
        .Q(\expSum_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \expSum_reg[1] 
       (.C(clk),
        .CE(\expSum[9]_i_1_n_0 ),
        .D(\expSum[1]_i_1_n_0 ),
        .Q(\expSum_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \expSum_reg[2] 
       (.C(clk),
        .CE(\expSum[9]_i_1_n_0 ),
        .D(\expSum[2]_i_1_n_0 ),
        .Q(\expSum_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \expSum_reg[3] 
       (.C(clk),
        .CE(\expSum[9]_i_1_n_0 ),
        .D(\expSum[3]_i_1_n_0 ),
        .Q(\expSum_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \expSum_reg[4] 
       (.C(clk),
        .CE(\expSum[9]_i_1_n_0 ),
        .D(\expSum[4]_i_1_n_0 ),
        .Q(\expSum_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \expSum_reg[5] 
       (.C(clk),
        .CE(\expSum[9]_i_1_n_0 ),
        .D(\expSum[5]_i_1_n_0 ),
        .Q(\expSum_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \expSum_reg[6] 
       (.C(clk),
        .CE(\expSum[9]_i_1_n_0 ),
        .D(\expSum[6]_i_1_n_0 ),
        .Q(\expSum_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \expSum_reg[7] 
       (.C(clk),
        .CE(\expSum[9]_i_1_n_0 ),
        .D(\expSum[7]_i_1_n_0 ),
        .Q(\expSum_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \expSum_reg[8] 
       (.C(clk),
        .CE(\expSum[9]_i_1_n_0 ),
        .D(\expSum[8]_i_1_n_0 ),
        .Q(\expSum_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \expSum_reg[9] 
       (.C(clk),
        .CE(\expSum[9]_i_1_n_0 ),
        .D(\expSum[9]_i_2_n_0 ),
        .Q(\expSum_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCF0FFFAFCF0FCFAF)) 
    \fp_A[23]_i_1 
       (.I0(\fp_B[31]_i_3 [23]),
        .I1(\fp_A[23]_i_2_n_0 ),
        .I2(\term_P_reg[0] [0]),
        .I3(\term_P_reg[0] [1]),
        .I4(\fp_A_reg[23] ),
        .I5(\fp_A_reg[29] [0]),
        .O(\error_n_reg[29] [0]));
  LUT5 #(
    .INIT(32'hF8080808)) 
    \fp_A[23]_i_2 
       (.I0(mul_done),
        .I1(\fp_A_reg[29]_0 [0]),
        .I2(\term_P_reg[0] [2]),
        .I3(add_done),
        .I4(fp_result[23]),
        .O(\fp_A[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCF0FFFAFCF0FCFAF)) 
    \fp_A[24]_i_1 
       (.I0(\fp_B[31]_i_3 [24]),
        .I1(\fp_A[24]_i_2_n_0 ),
        .I2(\term_P_reg[0] [0]),
        .I3(\term_P_reg[0] [1]),
        .I4(\fp_A_reg[23] ),
        .I5(\fp_A_reg[29] [1]),
        .O(\error_n_reg[29] [1]));
  LUT5 #(
    .INIT(32'hF8080808)) 
    \fp_A[24]_i_2 
       (.I0(mul_done),
        .I1(\fp_A_reg[29]_0 [1]),
        .I2(\term_P_reg[0] [2]),
        .I3(add_done),
        .I4(fp_result[24]),
        .O(\fp_A[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0FDD00DD)) 
    \fp_A[25]_i_3 
       (.I0(mul_done),
        .I1(\fp_A_reg[29]_0 [2]),
        .I2(add_done),
        .I3(\term_P_reg[0] [2]),
        .I4(\fp_A_reg[29] [2]),
        .O(done_reg_32));
  LUT5 #(
    .INIT(32'h0FDD00DD)) 
    \fp_A[26]_i_3 
       (.I0(mul_done),
        .I1(\fp_A_reg[29]_0 [3]),
        .I2(add_done),
        .I3(\term_P_reg[0] [2]),
        .I4(\fp_A_reg[29] [3]),
        .O(done_reg_33));
  LUT6 #(
    .INIT(64'hCF0FFFAFCF0FCFAF)) 
    \fp_A[27]_i_1 
       (.I0(\fp_B[31]_i_3 [27]),
        .I1(\fp_A[27]_i_2_n_0 ),
        .I2(\term_P_reg[0] [0]),
        .I3(\term_P_reg[0] [1]),
        .I4(\fp_A_reg[23] ),
        .I5(\fp_A_reg[29] [4]),
        .O(\error_n_reg[29] [2]));
  LUT5 #(
    .INIT(32'hFD0D0D0D)) 
    \fp_A[27]_i_2 
       (.I0(mul_done),
        .I1(\fp_A_reg[29]_0 [4]),
        .I2(\term_P_reg[0] [2]),
        .I3(add_done),
        .I4(fp_result[27]),
        .O(\fp_A[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCF0FFFAFCF0FCFAF)) 
    \fp_A[28]_i_1 
       (.I0(\fp_B[31]_i_3 [28]),
        .I1(\fp_A[28]_i_2_n_0 ),
        .I2(\term_P_reg[0] [0]),
        .I3(\term_P_reg[0] [1]),
        .I4(\fp_A_reg[23] ),
        .I5(\fp_A_reg[29] [5]),
        .O(\error_n_reg[29] [3]));
  LUT5 #(
    .INIT(32'hFD0D0D0D)) 
    \fp_A[28]_i_2 
       (.I0(mul_done),
        .I1(\fp_A_reg[29]_0 [5]),
        .I2(\term_P_reg[0] [2]),
        .I3(add_done),
        .I4(fp_result[28]),
        .O(\fp_A[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCF0FFFAFCF0FCFAF)) 
    \fp_A[29]_i_1 
       (.I0(\fp_B[31]_i_3 [29]),
        .I1(\fp_A[29]_i_2_n_0 ),
        .I2(\term_P_reg[0] [0]),
        .I3(\term_P_reg[0] [1]),
        .I4(\fp_A_reg[23] ),
        .I5(\fp_A_reg[29] [6]),
        .O(\error_n_reg[29] [4]));
  LUT5 #(
    .INIT(32'hFD0D0D0D)) 
    \fp_A[29]_i_2 
       (.I0(mul_done),
        .I1(\fp_A_reg[29]_0 [6]),
        .I2(\term_P_reg[0] [2]),
        .I3(add_done),
        .I4(fp_result[29]),
        .O(\fp_A[29]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[0]_i_4 
       (.I0(fp_result[0]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [0]),
        .O(done_reg_31));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[10]_i_4 
       (.I0(fp_result[10]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [10]),
        .O(done_reg_21));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[11]_i_4 
       (.I0(fp_result[11]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [11]),
        .O(done_reg_20));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[12]_i_4 
       (.I0(fp_result[12]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [12]),
        .O(done_reg_19));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[13]_i_4 
       (.I0(fp_result[13]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [13]),
        .O(done_reg_18));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[14]_i_4 
       (.I0(fp_result[14]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [14]),
        .O(done_reg_17));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[15]_i_4 
       (.I0(fp_result[15]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [15]),
        .O(done_reg_16));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[16]_i_4 
       (.I0(fp_result[16]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [16]),
        .O(done_reg_15));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[17]_i_4 
       (.I0(fp_result[17]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [17]),
        .O(done_reg_14));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[18]_i_4 
       (.I0(fp_result[18]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [18]),
        .O(done_reg_13));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[19]_i_4 
       (.I0(fp_result[19]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [19]),
        .O(done_reg_12));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[1]_i_4 
       (.I0(fp_result[1]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [1]),
        .O(done_reg_30));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[20]_i_4 
       (.I0(fp_result[20]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [20]),
        .O(done_reg_11));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[21]_i_4 
       (.I0(fp_result[21]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [21]),
        .O(done_reg_10));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[22]_i_4 
       (.I0(fp_result[22]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [22]),
        .O(done_reg_9));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[23]_i_4 
       (.I0(fp_result[23]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [23]),
        .O(done_reg_8));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[24]_i_4 
       (.I0(fp_result[24]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [24]),
        .O(done_reg_7));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[25]_i_4 
       (.I0(fp_result[25]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [25]),
        .O(done_reg_6));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[26]_i_4 
       (.I0(fp_result[26]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [26]),
        .O(done_reg_5));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[27]_i_4 
       (.I0(fp_result[27]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [27]),
        .O(done_reg_4));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[28]_i_4 
       (.I0(fp_result[28]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [28]),
        .O(done_reg_3));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[29]_i_4 
       (.I0(fp_result[29]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [29]),
        .O(done_reg_2));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[2]_i_4 
       (.I0(fp_result[2]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [2]),
        .O(done_reg_29));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[30]_i_4 
       (.I0(fp_result[30]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [30]),
        .O(done_reg_1));
  LUT5 #(
    .INIT(32'h04040504)) 
    \fp_B[31]_i_1 
       (.I0(rst_fp),
        .I1(\term_P_reg[0] [0]),
        .I2(\term_P_reg[0] [3]),
        .I3(\term_P_reg[0] [1]),
        .I4(\term_P_reg[0] [2]),
        .O(E));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[31]_i_5 
       (.I0(fp_result[31]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [31]),
        .O(done_reg_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[3]_i_4 
       (.I0(fp_result[3]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [3]),
        .O(done_reg_28));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[4]_i_4 
       (.I0(fp_result[4]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [4]),
        .O(done_reg_27));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[5]_i_4 
       (.I0(fp_result[5]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [5]),
        .O(done_reg_26));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[6]_i_4 
       (.I0(fp_result[6]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [6]),
        .O(done_reg_25));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[7]_i_4 
       (.I0(fp_result[7]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [7]),
        .O(done_reg_24));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[8]_i_4 
       (.I0(fp_result[8]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [8]),
        .O(done_reg_23));
  LUT3 #(
    .INIT(8'hB8)) 
    \fp_B[9]_i_4 
       (.I0(fp_result[9]),
        .I1(mul_done),
        .I2(\fp_B[31]_i_3 [9]),
        .O(done_reg_22));
  LUT6 #(
    .INIT(64'hFFFF37FF00003300)) 
    fp_sub_i_1
       (.I0(mul_done),
        .I1(\term_P_reg[0] [1]),
        .I2(\term_P_reg[0] [2]),
        .I3(fp_sub_reg),
        .I4(rst_fp),
        .I5(fp_sub_reg_0),
        .O(done_reg_34));
  LUT3 #(
    .INIT(8'h08)) 
    \mantNorm[22]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\mantNorm[22]_i_1_n_0 ));
  FDRE \mantNorm_reg[0] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[1]),
        .Q(mantNorm[0]),
        .R(1'b0));
  FDRE \mantNorm_reg[10] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[11]),
        .Q(mantNorm[10]),
        .R(1'b0));
  FDRE \mantNorm_reg[11] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[12]),
        .Q(mantNorm[11]),
        .R(1'b0));
  FDRE \mantNorm_reg[12] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[13]),
        .Q(mantNorm[12]),
        .R(1'b0));
  FDRE \mantNorm_reg[13] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[14]),
        .Q(mantNorm[13]),
        .R(1'b0));
  FDRE \mantNorm_reg[14] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[15]),
        .Q(mantNorm[14]),
        .R(1'b0));
  FDRE \mantNorm_reg[15] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[16]),
        .Q(mantNorm[15]),
        .R(1'b0));
  FDRE \mantNorm_reg[16] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[17]),
        .Q(mantNorm[16]),
        .R(1'b0));
  FDRE \mantNorm_reg[17] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[18]),
        .Q(mantNorm[17]),
        .R(1'b0));
  FDRE \mantNorm_reg[18] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[19]),
        .Q(mantNorm[18]),
        .R(1'b0));
  FDRE \mantNorm_reg[19] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[20]),
        .Q(mantNorm[19]),
        .R(1'b0));
  FDRE \mantNorm_reg[1] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[2]),
        .Q(mantNorm[1]),
        .R(1'b0));
  FDRE \mantNorm_reg[20] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[21]),
        .Q(mantNorm[20]),
        .R(1'b0));
  FDRE \mantNorm_reg[21] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[22]),
        .Q(mantNorm[21]),
        .R(1'b0));
  FDRE \mantNorm_reg[22] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[23]),
        .Q(mantNorm[22]),
        .R(1'b0));
  FDRE \mantNorm_reg[2] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[3]),
        .Q(mantNorm[2]),
        .R(1'b0));
  FDRE \mantNorm_reg[3] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[4]),
        .Q(mantNorm[3]),
        .R(1'b0));
  FDRE \mantNorm_reg[4] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[5]),
        .Q(mantNorm[4]),
        .R(1'b0));
  FDRE \mantNorm_reg[5] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[6]),
        .Q(mantNorm[5]),
        .R(1'b0));
  FDRE \mantNorm_reg[6] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[7]),
        .Q(mantNorm[6]),
        .R(1'b0));
  FDRE \mantNorm_reg[7] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[8]),
        .Q(mantNorm[7]),
        .R(1'b0));
  FDRE \mantNorm_reg[8] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[9]),
        .Q(mantNorm[8]),
        .R(1'b0));
  FDRE \mantNorm_reg[9] 
       (.C(clk),
        .CE(\mantNorm[22]_i_1_n_0 ),
        .D(L[10]),
        .Q(mantNorm[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \mantNorm_temp[0]_i_1 
       (.I0(mantProd_reg__0[23]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[22]),
        .I3(\state_reg_n_0_[2] ),
        .I4(\mantNorm_temp[0]_i_2_n_0 ),
        .I5(\mantNorm_temp_reg_n_0_[0] ),
        .O(\mantNorm_temp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mantNorm_temp[0]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\mantNorm_temp[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[10]_i_1 
       (.I0(mantProd_reg__0[33]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[32]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[9]),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[11]_i_1 
       (.I0(mantProd_reg__0[34]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[33]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[10]),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[12]_i_1 
       (.I0(mantProd_reg__0[35]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[34]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[11]),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[13]_i_1 
       (.I0(mantProd_reg__0[36]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[35]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[12]),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[14]_i_1 
       (.I0(mantProd_reg__0[37]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[36]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[13]),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[15]_i_1 
       (.I0(mantProd_reg__0[38]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[37]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[14]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[16]_i_1 
       (.I0(mantProd_reg__0[39]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[38]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[15]),
        .O(p_1_in[16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[17]_i_1 
       (.I0(mantProd_reg__0[40]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[39]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[16]),
        .O(p_1_in[17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[18]_i_1 
       (.I0(mantProd_reg__0[41]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[40]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[17]),
        .O(p_1_in[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[19]_i_1 
       (.I0(mantProd_reg__0[42]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[41]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[18]),
        .O(p_1_in[19]));
  LUT5 #(
    .INIT(32'hD1DDD111)) 
    \mantNorm_temp[1]_i_1 
       (.I0(L[1]),
        .I1(\state_reg_n_0_[0] ),
        .I2(mantProd_reg__0[24]),
        .I3(mantProd_reg__0[47]),
        .I4(mantProd_reg__0[23]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[20]_i_1 
       (.I0(mantProd_reg__0[43]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[42]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[19]),
        .O(p_1_in[20]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[21]_i_1 
       (.I0(mantProd_reg__0[44]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[43]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[20]),
        .O(p_1_in[21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[22]_i_1 
       (.I0(mantProd_reg__0[45]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[44]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[21]),
        .O(p_1_in[22]));
  LUT4 #(
    .INIT(16'h4840)) 
    \mantNorm_temp[23]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\mantNorm_temp_reg_n_0_[0] ),
        .O(\mantNorm_temp[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[23]_i_2 
       (.I0(mantProd_reg__0[46]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[45]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[22]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[2]_i_1 
       (.I0(mantProd_reg__0[25]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[24]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[1]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[3]_i_1 
       (.I0(mantProd_reg__0[26]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[25]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[2]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[4]_i_1 
       (.I0(mantProd_reg__0[27]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[26]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[3]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[5]_i_1 
       (.I0(mantProd_reg__0[28]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[27]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[4]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[6]_i_1 
       (.I0(mantProd_reg__0[29]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[28]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[5]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[7]_i_1 
       (.I0(mantProd_reg__0[30]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[29]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[6]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[8]_i_1 
       (.I0(mantProd_reg__0[31]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[30]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[7]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mantNorm_temp[9]_i_1 
       (.I0(mantProd_reg__0[32]),
        .I1(mantProd_reg__0[47]),
        .I2(mantProd_reg__0[31]),
        .I3(\state_reg_n_0_[0] ),
        .I4(plusOp[8]),
        .O(p_1_in[9]));
  FDRE \mantNorm_temp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\mantNorm_temp[0]_i_1_n_0 ),
        .Q(\mantNorm_temp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[10] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(L[10]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[11] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(L[11]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[12] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(L[12]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[13] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(L[13]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[14] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(L[14]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[15] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(L[15]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[16] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(L[16]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[17] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(L[17]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[18] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(L[18]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[19] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[19]),
        .Q(L[19]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[1] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(L[1]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[20] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[20]),
        .Q(L[20]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[21] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[21]),
        .Q(L[21]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[22] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[22]),
        .Q(L[22]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[23] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[23]),
        .Q(L[23]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[2] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(L[2]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[3] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(L[3]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[4] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(L[4]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[5] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(L[5]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[6] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(L[6]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[7] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(L[7]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[8] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(L[8]),
        .R(1'b0));
  FDRE \mantNorm_temp_reg[9] 
       (.C(clk),
        .CE(\mantNorm_temp[23]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(L[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mantProd0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mantB1,Q[22:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mantProd0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,D}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mantProd0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mantProd0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mantProd0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(\expB[7]_i_1_n_0 ),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(E),
        .CEB2(\expB[7]_i_1_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mantProd0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mantProd0_OVERFLOW_UNCONNECTED),
        .P({mantProd0_n_58,mantProd0_n_59,mantProd0_n_60,mantProd0_n_61,mantProd0_n_62,mantProd0_n_63,mantProd0_n_64,mantProd0_n_65,mantProd0_n_66,mantProd0_n_67,mantProd0_n_68,mantProd0_n_69,mantProd0_n_70,mantProd0_n_71,mantProd0_n_72,mantProd0_n_73,mantProd0_n_74,mantProd0_n_75,mantProd0_n_76,mantProd0_n_77,mantProd0_n_78,mantProd0_n_79,mantProd0_n_80,mantProd0_n_81,mantProd0_n_82,mantProd0_n_83,mantProd0_n_84,mantProd0_n_85,mantProd0_n_86,mantProd0_n_87,mantProd0_n_88,mantProd0_n_89,mantProd0_n_90,mantProd0_n_91,mantProd0_n_92,mantProd0_n_93,mantProd0_n_94,mantProd0_n_95,mantProd0_n_96,mantProd0_n_97,mantProd0_n_98,mantProd0_n_99,mantProd0_n_100,mantProd0_n_101,mantProd0_n_102,mantProd0_n_103,mantProd0_n_104,mantProd0_n_105}),
        .PATTERNBDETECT(NLW_mantProd0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mantProd0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({mantProd0_n_106,mantProd0_n_107,mantProd0_n_108,mantProd0_n_109,mantProd0_n_110,mantProd0_n_111,mantProd0_n_112,mantProd0_n_113,mantProd0_n_114,mantProd0_n_115,mantProd0_n_116,mantProd0_n_117,mantProd0_n_118,mantProd0_n_119,mantProd0_n_120,mantProd0_n_121,mantProd0_n_122,mantProd0_n_123,mantProd0_n_124,mantProd0_n_125,mantProd0_n_126,mantProd0_n_127,mantProd0_n_128,mantProd0_n_129,mantProd0_n_130,mantProd0_n_131,mantProd0_n_132,mantProd0_n_133,mantProd0_n_134,mantProd0_n_135,mantProd0_n_136,mantProd0_n_137,mantProd0_n_138,mantProd0_n_139,mantProd0_n_140,mantProd0_n_141,mantProd0_n_142,mantProd0_n_143,mantProd0_n_144,mantProd0_n_145,mantProd0_n_146,mantProd0_n_147,mantProd0_n_148,mantProd0_n_149,mantProd0_n_150,mantProd0_n_151,mantProd0_n_152,mantProd0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mantProd0_UNDERFLOW_UNCONNECTED));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    mantProd0_i_1
       (.I0(\expB_reg_n_0_[4] ),
        .I1(\expB_reg_n_0_[5] ),
        .I2(\expB_reg_n_0_[0] ),
        .I3(\expB_reg_n_0_[1] ),
        .I4(mantProd0_i_2_n_0),
        .O(mantB1));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    mantProd0_i_2
       (.I0(\expB_reg_n_0_[3] ),
        .I1(\expB_reg_n_0_[2] ),
        .I2(\expB_reg_n_0_[6] ),
        .I3(\expB_reg_n_0_[7] ),
        .O(mantProd0_i_2_n_0));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mantProd_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mantB1,Q[22:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mantProd_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mantA1,signA_reg_0[22:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mantProd_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mantProd_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mantProd_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(\expB[7]_i_1_n_0 ),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\expB[7]_i_1_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mantProd_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mantProd_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_mantProd_reg_P_UNCONNECTED[47:31],mantProd_reg__0,mantProd_reg_n_101,mantProd_reg_n_102,mantProd_reg_n_103,mantProd_reg_n_104,mantProd_reg_n_105}),
        .PATTERNBDETECT(NLW_mantProd_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mantProd_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mantProd0_n_106,mantProd0_n_107,mantProd0_n_108,mantProd0_n_109,mantProd0_n_110,mantProd0_n_111,mantProd0_n_112,mantProd0_n_113,mantProd0_n_114,mantProd0_n_115,mantProd0_n_116,mantProd0_n_117,mantProd0_n_118,mantProd0_n_119,mantProd0_n_120,mantProd0_n_121,mantProd0_n_122,mantProd0_n_123,mantProd0_n_124,mantProd0_n_125,mantProd0_n_126,mantProd0_n_127,mantProd0_n_128,mantProd0_n_129,mantProd0_n_130,mantProd0_n_131,mantProd0_n_132,mantProd0_n_133,mantProd0_n_134,mantProd0_n_135,mantProd0_n_136,mantProd0_n_137,mantProd0_n_138,mantProd0_n_139,mantProd0_n_140,mantProd0_n_141,mantProd0_n_142,mantProd0_n_143,mantProd0_n_144,mantProd0_n_145,mantProd0_n_146,mantProd0_n_147,mantProd0_n_148,mantProd0_n_149,mantProd0_n_150,mantProd0_n_151,mantProd0_n_152,mantProd0_n_153}),
        .PCOUT(NLW_mantProd_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mantProd_reg_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'h08)) 
    mantProd_reg_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .O(CEP));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    mantProd_reg_i_2
       (.I0(mantProd_reg_i_3_n_0),
        .I1(\expA_reg_n_0_[1] ),
        .I2(\expA_reg_n_0_[0] ),
        .I3(\expA_reg_n_0_[3] ),
        .I4(\expA_reg_n_0_[2] ),
        .O(mantA1));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    mantProd_reg_i_3
       (.I0(\expA_reg_n_0_[5] ),
        .I1(\expA_reg_n_0_[4] ),
        .I2(\expA_reg_n_0_[6] ),
        .I3(\expA_reg_n_0_[7] ),
        .O(mantProd_reg_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(L[1]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(L[5:2]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(L[9:6]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(L[13:10]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S(L[17:14]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[20:17]),
        .S(L[21:18]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({NLW_plusOp_carry__4_CO_UNCONNECTED[3:1],plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__4_O_UNCONNECTED[3:2],plusOp[22:21]}),
        .S({1'b0,1'b0,L[23:22]}));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[0]_i_1 
       (.I0(mantNorm[0]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[10]_i_1 
       (.I0(mantNorm[10]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[11]_i_1 
       (.I0(mantNorm[11]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[12]_i_1 
       (.I0(mantNorm[12]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[13]_i_1 
       (.I0(mantNorm[13]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[14]_i_1 
       (.I0(mantNorm[14]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[15]_i_1 
       (.I0(mantNorm[15]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[16]_i_1 
       (.I0(mantNorm[16]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[17]_i_1 
       (.I0(mantNorm[17]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[18]_i_1 
       (.I0(mantNorm[18]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[19]_i_1 
       (.I0(mantNorm[19]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[1]_i_1 
       (.I0(mantNorm[1]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[20]_i_1 
       (.I0(mantNorm[20]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000B111)) 
    \result[21]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\result[31]_i_3_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\result[30]_i_2_n_0 ),
        .O(\result[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[21]_i_2 
       (.I0(mantNorm[21]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAAAAAAAAAAAA)) 
    \result[22]_i_1 
       (.I0(\result[31]_i_4_n_0 ),
        .I1(\expSum_reg_n_0_[9] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(mantNorm[22]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\result[30]_i_2_n_0 ),
        .O(\result[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444FFFFF4440000)) 
    \result[23]_i_1__0 
       (.I0(\expSum_reg_n_0_[9] ),
        .I1(\expSum_reg_n_0_[8] ),
        .I2(\result[30]_i_2_n_0 ),
        .I3(expFinal[0]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\result[30]_i_3_n_0 ),
        .O(\result[23]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF444FFFFF4440000)) 
    \result[24]_i_1 
       (.I0(\expSum_reg_n_0_[9] ),
        .I1(\expSum_reg_n_0_[8] ),
        .I2(\result[30]_i_2_n_0 ),
        .I3(expFinal[1]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\result[30]_i_3_n_0 ),
        .O(\result[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444FFFFF4440000)) 
    \result[25]_i_1__0 
       (.I0(\expSum_reg_n_0_[9] ),
        .I1(\expSum_reg_n_0_[8] ),
        .I2(\result[30]_i_2_n_0 ),
        .I3(expFinal[2]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\result[30]_i_3_n_0 ),
        .O(\result[25]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF444FFFFF4440000)) 
    \result[26]_i_1 
       (.I0(\expSum_reg_n_0_[9] ),
        .I1(\expSum_reg_n_0_[8] ),
        .I2(\result[30]_i_2_n_0 ),
        .I3(expFinal[3]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\result[30]_i_3_n_0 ),
        .O(\result[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444FFFFF4440000)) 
    \result[27]_i_1 
       (.I0(\expSum_reg_n_0_[9] ),
        .I1(\expSum_reg_n_0_[8] ),
        .I2(\result[30]_i_2_n_0 ),
        .I3(expFinal[4]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\result[30]_i_3_n_0 ),
        .O(\result[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444FFFFF4440000)) 
    \result[28]_i_1 
       (.I0(\expSum_reg_n_0_[9] ),
        .I1(\expSum_reg_n_0_[8] ),
        .I2(\result[30]_i_2_n_0 ),
        .I3(expFinal[5]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\result[30]_i_3_n_0 ),
        .O(\result[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444FFFFF4440000)) 
    \result[29]_i_1__0 
       (.I0(\expSum_reg_n_0_[9] ),
        .I1(\expSum_reg_n_0_[8] ),
        .I2(\result[30]_i_2_n_0 ),
        .I3(expFinal[6]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\result[30]_i_3_n_0 ),
        .O(\result[29]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[2]_i_1 
       (.I0(mantNorm[2]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444FFFFF4440000)) 
    \result[30]_i_1__0 
       (.I0(\expSum_reg_n_0_[9] ),
        .I1(\expSum_reg_n_0_[8] ),
        .I2(\result[30]_i_2_n_0 ),
        .I3(expFinal[7]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\result[30]_i_3_n_0 ),
        .O(\result[30]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h55555554)) 
    \result[30]_i_2 
       (.I0(\expSum_reg_n_0_[9] ),
        .I1(\result[30]_i_4_n_0 ),
        .I2(\expSum_reg_n_0_[5] ),
        .I3(\expSum_reg_n_0_[8] ),
        .I4(\expSum_reg_n_0_[7] ),
        .O(\result[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \result[30]_i_3 
       (.I0(\result[31]_i_5_n_0 ),
        .I1(\result[31]_i_8_n_0 ),
        .I2(\result[31]_i_6_n_0 ),
        .I3(\result[31]_i_9_n_0 ),
        .I4(\result[31]_i_7_n_0 ),
        .O(\result[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result[30]_i_4 
       (.I0(\expSum_reg_n_0_[1] ),
        .I1(\expSum_reg_n_0_[0] ),
        .I2(\expSum_reg_n_0_[2] ),
        .I3(\expSum_reg_n_0_[6] ),
        .I4(\expSum_reg_n_0_[3] ),
        .I5(\expSum_reg_n_0_[4] ),
        .O(\result[30]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \result[31]_i_10 
       (.I0(\expB_reg_n_0_[3] ),
        .I1(\expB_reg_n_0_[2] ),
        .I2(\expB_reg_n_0_[0] ),
        .I3(\expB_reg_n_0_[7] ),
        .O(\result[31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \result[31]_i_11 
       (.I0(\expA_reg_n_0_[5] ),
        .I1(\expA_reg_n_0_[4] ),
        .I2(\expA_reg_n_0_[6] ),
        .I3(\expA_reg_n_0_[7] ),
        .O(\result[31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \result[31]_i_12 
       (.I0(\expA_reg_n_0_[2] ),
        .I1(\expA_reg_n_0_[3] ),
        .I2(\expA_reg_n_0_[0] ),
        .I3(\expA_reg_n_0_[1] ),
        .I4(mantProd_reg_i_3_n_0),
        .O(\result[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result[31]_i_13 
       (.I0(Q[20]),
        .I1(Q[18]),
        .I2(Q[22]),
        .I3(Q[9]),
        .O(\result[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result[31]_i_14 
       (.I0(\result[31]_i_17_n_0 ),
        .I1(\result[31]_i_18_n_0 ),
        .I2(\result[31]_i_19_n_0 ),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(Q[2]),
        .O(\result[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result[31]_i_15 
       (.I0(signA_reg_0[20]),
        .I1(signA_reg_0[18]),
        .I2(signA_reg_0[22]),
        .I3(signA_reg_0[9]),
        .O(\result[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result[31]_i_16 
       (.I0(\result[31]_i_20_n_0 ),
        .I1(\result[31]_i_21_n_0 ),
        .I2(\result[31]_i_22_n_0 ),
        .I3(signA_reg_0[12]),
        .I4(signA_reg_0[13]),
        .I5(signA_reg_0[2]),
        .O(\result[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result[31]_i_17 
       (.I0(Q[16]),
        .I1(Q[5]),
        .I2(Q[19]),
        .I3(Q[1]),
        .O(\result[31]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result[31]_i_18 
       (.I0(Q[14]),
        .I1(Q[11]),
        .I2(Q[17]),
        .I3(Q[10]),
        .O(\result[31]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result[31]_i_19 
       (.I0(Q[15]),
        .I1(Q[6]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\result[31]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h880F)) 
    \result[31]_i_1__0 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\result[31]_i_3_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .O(\result[31]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[31]_i_2 
       (.I0(signZ),
        .I1(\result[31]_i_4_n_0 ),
        .O(\result[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result[31]_i_20 
       (.I0(signA_reg_0[16]),
        .I1(signA_reg_0[5]),
        .I2(signA_reg_0[19]),
        .I3(signA_reg_0[1]),
        .O(\result[31]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result[31]_i_21 
       (.I0(signA_reg_0[14]),
        .I1(signA_reg_0[11]),
        .I2(signA_reg_0[17]),
        .I3(signA_reg_0[10]),
        .O(\result[31]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result[31]_i_22 
       (.I0(signA_reg_0[15]),
        .I1(signA_reg_0[6]),
        .I2(signA_reg_0[3]),
        .I3(signA_reg_0[0]),
        .O(\result[31]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF10FF)) 
    \result[31]_i_3 
       (.I0(\result[31]_i_5_n_0 ),
        .I1(\result[31]_i_6_n_0 ),
        .I2(\result[31]_i_7_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\result[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000F888)) 
    \result[31]_i_4 
       (.I0(\result[31]_i_5_n_0 ),
        .I1(\result[31]_i_8_n_0 ),
        .I2(\result[31]_i_6_n_0 ),
        .I3(\result[31]_i_9_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .O(\result[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \result[31]_i_5 
       (.I0(\expB_reg_n_0_[1] ),
        .I1(\expB_reg_n_0_[6] ),
        .I2(\expB_reg_n_0_[4] ),
        .I3(\expB_reg_n_0_[5] ),
        .I4(\result[31]_i_10_n_0 ),
        .O(\result[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \result[31]_i_6 
       (.I0(\expA_reg_n_0_[2] ),
        .I1(\expA_reg_n_0_[3] ),
        .I2(\expA_reg_n_0_[0] ),
        .I3(\expA_reg_n_0_[1] ),
        .I4(\result[31]_i_11_n_0 ),
        .O(\result[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE0EE)) 
    \result[31]_i_7 
       (.I0(\result[31]_i_8_n_0 ),
        .I1(mantB1),
        .I2(\result[31]_i_9_n_0 ),
        .I3(\result[31]_i_12_n_0 ),
        .O(\result[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result[31]_i_8 
       (.I0(\result[31]_i_13_n_0 ),
        .I1(Q[21]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(Q[4]),
        .I5(\result[31]_i_14_n_0 ),
        .O(\result[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result[31]_i_9 
       (.I0(\result[31]_i_15_n_0 ),
        .I1(signA_reg_0[21]),
        .I2(signA_reg_0[7]),
        .I3(signA_reg_0[8]),
        .I4(signA_reg_0[4]),
        .I5(\result[31]_i_16_n_0 ),
        .O(\result[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[3]_i_1 
       (.I0(mantNorm[3]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[4]_i_1 
       (.I0(mantNorm[4]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[5]_i_1 
       (.I0(mantNorm[5]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[6]_i_1 
       (.I0(mantNorm[6]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[7]_i_1 
       (.I0(mantNorm[7]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[8]_i_1 
       (.I0(mantNorm[8]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \result[9]_i_1 
       (.I0(mantNorm[9]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\expSum_reg_n_0_[8] ),
        .I3(\expSum_reg_n_0_[9] ),
        .O(\result[9]_i_1_n_0 ));
  FDRE \result_reg[0] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[0]_i_1_n_0 ),
        .Q(fp_result[0]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[10] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[10]_i_1_n_0 ),
        .Q(fp_result[10]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[11] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[11]_i_1_n_0 ),
        .Q(fp_result[11]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[12] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[12]_i_1_n_0 ),
        .Q(fp_result[12]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[13] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[13]_i_1_n_0 ),
        .Q(fp_result[13]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[14] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[14]_i_1_n_0 ),
        .Q(fp_result[14]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[15] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[15]_i_1_n_0 ),
        .Q(fp_result[15]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[16] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[16]_i_1_n_0 ),
        .Q(fp_result[16]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[17] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[17]_i_1_n_0 ),
        .Q(fp_result[17]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[18] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[18]_i_1_n_0 ),
        .Q(fp_result[18]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[19] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[19]_i_1_n_0 ),
        .Q(fp_result[19]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[1] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[1]_i_1_n_0 ),
        .Q(fp_result[1]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[20] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[20]_i_1_n_0 ),
        .Q(fp_result[20]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[21] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[21]_i_2_n_0 ),
        .Q(fp_result[21]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[22] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[22]_i_1_n_0 ),
        .Q(fp_result[22]),
        .R(1'b0));
  FDRE \result_reg[23] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[23]_i_1__0_n_0 ),
        .Q(fp_result[23]),
        .R(1'b0));
  FDRE \result_reg[24] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[24]_i_1_n_0 ),
        .Q(fp_result[24]),
        .R(1'b0));
  FDRE \result_reg[25] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[25]_i_1__0_n_0 ),
        .Q(fp_result[25]),
        .R(1'b0));
  FDRE \result_reg[26] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[26]_i_1_n_0 ),
        .Q(fp_result[26]),
        .R(1'b0));
  FDRE \result_reg[27] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[27]_i_1_n_0 ),
        .Q(fp_result[27]),
        .R(1'b0));
  FDRE \result_reg[28] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[28]_i_1_n_0 ),
        .Q(fp_result[28]),
        .R(1'b0));
  FDRE \result_reg[29] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[29]_i_1__0_n_0 ),
        .Q(fp_result[29]),
        .R(1'b0));
  FDRE \result_reg[2] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[2]_i_1_n_0 ),
        .Q(fp_result[2]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[30] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[30]_i_1__0_n_0 ),
        .Q(fp_result[30]),
        .R(1'b0));
  FDRE \result_reg[31] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[31]_i_2_n_0 ),
        .Q(fp_result[31]),
        .R(1'b0));
  FDRE \result_reg[3] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[3]_i_1_n_0 ),
        .Q(fp_result[3]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[4] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[4]_i_1_n_0 ),
        .Q(fp_result[4]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[5] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[5]_i_1_n_0 ),
        .Q(fp_result[5]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[6] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[6]_i_1_n_0 ),
        .Q(fp_result[6]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[7] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[7]_i_1_n_0 ),
        .Q(fp_result[7]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[8] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[8]_i_1_n_0 ),
        .Q(fp_result[8]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[9] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\result[9]_i_1_n_0 ),
        .Q(fp_result[9]),
        .R(\result[21]_i_1_n_0 ));
  FDRE signA_reg
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(signA_reg_0[31]),
        .Q(signA),
        .R(1'b0));
  FDRE signB_reg
       (.C(clk),
        .CE(\expB[7]_i_1_n_0 ),
        .D(Q[31]),
        .Q(signB),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF6FF00000600)) 
    signZ_i_1
       (.I0(signB),
        .I1(signA),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(signZ),
        .O(signZ_i_1_n_0));
  FDRE signZ_reg
       (.C(clk),
        .CE(1'b1),
        .D(signZ_i_1_n_0),
        .Q(signZ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hA3A0)) 
    \state[0]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\result[31]_i_3_n_0 ),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h8BB88888)) 
    \state[1]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\result[31]_i_3_n_0 ),
        .O(state[1]));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \state[2]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(state[2]));
  LUT5 #(
    .INIT(32'hFEFFFFFE)) 
    \state[3]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg[0]_0 ),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8888888BBBB)) 
    \state[3]_i_2 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\result[31]_i_3_n_0 ),
        .I5(\state_reg_n_0_[0] ),
        .O(state[3]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(state[0]),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(state[1]),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(state[3]),
        .Q(\state_reg_n_0_[3] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000800)) 
    \term_D[31]_i_1 
       (.I0(\term_P_reg[0] [2]),
        .I1(\term_P_reg[0] [1]),
        .I2(rst_fp),
        .I3(mul_done),
        .I4(\term_P_reg[0] [0]),
        .O(\FSM_sequential_state_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \term_P[31]_i_1 
       (.I0(\term_P_reg[0] [2]),
        .I1(\term_P_reg[0] [1]),
        .I2(\term_P_reg[0] [3]),
        .I3(rst_fp),
        .I4(mul_done),
        .I5(\term_P_reg[0] [0]),
        .O(\FSM_sequential_state_reg[2]_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Jan 21 10:39:47 2026
-- Host        : Zbook running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Facultate/Anul3/SSC/Proiect/rear_and_avoidance/rear_and_avoidance.gen/sources_1/bd/design_1/ip/design_1_pid_controller_0_0/design_1_pid_controller_0_0_stub.vhdl
-- Design      : design_1_pid_controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_pid_controller_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_conv : in STD_LOGIC;
    rst_fp : in STD_LOGIC;
    start : in STD_LOGIC;
    pot_val : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    servo_pwm_out : out STD_LOGIC;
    done : out STD_LOGIC
  );

end design_1_pid_controller_0_0;

architecture stub of design_1_pid_controller_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_conv,rst_fp,start,pot_val[11:0],pwm_val[7:0],servo_pwm_out,done";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "pid_controller,Vivado 2024.1";
begin
end;

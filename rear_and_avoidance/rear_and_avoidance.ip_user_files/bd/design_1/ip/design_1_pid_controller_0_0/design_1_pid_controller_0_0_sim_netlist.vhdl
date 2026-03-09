-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Dec  3 15:19:26 2025
-- Host        : Zbook running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Facultate/Anul3/SSC/Proiect/rear_and_avoidance/rear_and_avoidance.gen/sources_1/bd/design_1/ip/design_1_pid_controller_0_0/design_1_pid_controller_0_0_sim_netlist.vhdl
-- Design      : design_1_pid_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pid_controller_0_0_RestoringDivision is
  port (
    pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_conv : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 24 downto 0 );
    mult_gata : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pid_controller_0_0_RestoringDivision : entity is "RestoringDivision";
end design_1_pid_controller_0_0_RestoringDivision;

architecture STRUCTURE of design_1_pid_controller_0_0_RestoringDivision is
  signal \A[0]_i_1_n_0\ : STD_LOGIC;
  signal \A[10]_i_1_n_0\ : STD_LOGIC;
  signal \A[11]_i_1_n_0\ : STD_LOGIC;
  signal \A[1]_i_1_n_0\ : STD_LOGIC;
  signal \A[2]_i_1_n_0\ : STD_LOGIC;
  signal \A[3]_i_1_n_0\ : STD_LOGIC;
  signal \A[4]_i_1_n_0\ : STD_LOGIC;
  signal \A[5]_i_1_n_0\ : STD_LOGIC;
  signal \A[6]_i_1_n_0\ : STD_LOGIC;
  signal \A[7]_i_1_n_0\ : STD_LOGIC;
  signal \A[8]_i_1_n_0\ : STD_LOGIC;
  signal \A[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal L : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \R[0]_i_1_n_0\ : STD_LOGIC;
  signal \R[10]_i_1_n_0\ : STD_LOGIC;
  signal \R[11]_i_1_n_0\ : STD_LOGIC;
  signal \R[12]_i_1_n_0\ : STD_LOGIC;
  signal \R[13]_i_1_n_0\ : STD_LOGIC;
  signal \R[14]_i_1_n_0\ : STD_LOGIC;
  signal \R[15]_i_1_n_0\ : STD_LOGIC;
  signal \R[16]_i_1_n_0\ : STD_LOGIC;
  signal \R[17]_i_1_n_0\ : STD_LOGIC;
  signal \R[18]_i_1_n_0\ : STD_LOGIC;
  signal \R[19]_i_1_n_0\ : STD_LOGIC;
  signal \R[1]_i_1_n_0\ : STD_LOGIC;
  signal \R[20]_i_1_n_0\ : STD_LOGIC;
  signal \R[21]_i_1_n_0\ : STD_LOGIC;
  signal \R[22]_i_1_n_0\ : STD_LOGIC;
  signal \R[23]_i_1_n_0\ : STD_LOGIC;
  signal \R[24]_i_1_n_0\ : STD_LOGIC;
  signal \R[24]_i_2_n_0\ : STD_LOGIC;
  signal \R[2]_i_1_n_0\ : STD_LOGIC;
  signal \R[3]_i_1_n_0\ : STD_LOGIC;
  signal \R[4]_i_1_n_0\ : STD_LOGIC;
  signal \R[5]_i_1_n_0\ : STD_LOGIC;
  signal \R[6]_i_1_n_0\ : STD_LOGIC;
  signal \R[7]_i_1_n_0\ : STD_LOGIC;
  signal \R[8]_i_1_n_0\ : STD_LOGIC;
  signal \R[9]_i_1_n_0\ : STD_LOGIC;
  signal contor : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \contor[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \contor_reg_n_0_[0]\ : STD_LOGIC;
  signal \contor_reg_n_0_[1]\ : STD_LOGIC;
  signal \contor_reg_n_0_[2]\ : STD_LOGIC;
  signal \contor_reg_n_0_[3]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 24 downto 1 );
  signal quotient0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A[0]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \A[10]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \A[11]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \A[1]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \A[2]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \A[3]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \A[4]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \A[5]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \A[6]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \A[7]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \A[8]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \A[9]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_2\ : label is "soft_lutpair80";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "s_asteptare:001,s_calcul:010,s_final:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "s_asteptare:001,s_calcul:010,s_final:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "s_asteptare:001,s_calcul:010,s_final:100,";
  attribute SOFT_HLUTNM of \R[10]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \R[11]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \R[12]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \R[1]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \R[2]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \R[3]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \R[4]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \R[5]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \R[6]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \R[7]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \R[8]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \R[9]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \contor[0]_i_1__0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \contor[1]_i_1__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \contor[2]_i_1__0\ : label is "soft_lutpair79";
begin
\A[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => L(0),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \A[0]_i_1_n_0\
    );
\A[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => L(10),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \A[10]_i_1_n_0\
    );
\A[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => L(11),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \A[11]_i_1_n_0\
    );
\A[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => L(1),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \A[1]_i_1_n_0\
    );
\A[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => L(2),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \A[2]_i_1_n_0\
    );
\A[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => L(3),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \A[3]_i_1_n_0\
    );
\A[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => L(4),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \A[4]_i_1_n_0\
    );
\A[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => L(5),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \A[5]_i_1_n_0\
    );
\A[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => L(6),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \A[6]_i_1_n_0\
    );
\A[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => L(7),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \A[7]_i_1_n_0\
    );
\A[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => L(8),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \A[8]_i_1_n_0\
    );
\A[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => L(9),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \A[9]_i_1_n_0\
    );
\A_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \A[0]_i_1_n_0\,
      Q => L(1)
    );
\A_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \A[10]_i_1_n_0\,
      Q => L(11)
    );
\A_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \A[11]_i_1_n_0\,
      Q => L(12)
    );
\A_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \A[1]_i_1_n_0\,
      Q => L(2)
    );
\A_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \A[2]_i_1_n_0\,
      Q => L(3)
    );
\A_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \A[3]_i_1_n_0\,
      Q => L(4)
    );
\A_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \A[4]_i_1_n_0\,
      Q => L(5)
    );
\A_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \A[5]_i_1_n_0\,
      Q => L(6)
    );
\A_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \A[6]_i_1_n_0\,
      Q => L(7)
    );
\A_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \A[7]_i_1_n_0\,
      Q => L(8)
    );
\A_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \A[8]_i_1_n_0\,
      Q => L(9)
    );
\A_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \A[9]_i_1_n_0\,
      Q => L(10)
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => mult_gata,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F5F0E0"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => mult_gata,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => mult_gata,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \contor_reg_n_0_[3]\,
      I1 => \contor_reg_n_0_[1]\,
      I2 => \contor_reg_n_0_[0]\,
      I3 => \contor_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => rst_conv,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst_conv,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst_conv,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
\R[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => L(12),
      O => \R[0]_i_1_n_0\
    );
\R[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(10),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(10),
      O => \R[10]_i_1_n_0\
    );
\R[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(11),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(11),
      O => \R[11]_i_1_n_0\
    );
\R[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(12),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(12),
      O => \R[12]_i_1_n_0\
    );
\R[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(13),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(13),
      O => \R[13]_i_1_n_0\
    );
\R[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(14),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(14),
      O => \R[14]_i_1_n_0\
    );
\R[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(15),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(15),
      O => \R[15]_i_1_n_0\
    );
\R[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(16),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(16),
      O => \R[16]_i_1_n_0\
    );
\R[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(17),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(17),
      O => \R[17]_i_1_n_0\
    );
\R[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(18),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(18),
      O => \R[18]_i_1_n_0\
    );
\R[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(19),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(19),
      O => \R[19]_i_1_n_0\
    );
\R[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(1),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(1),
      O => \R[1]_i_1_n_0\
    );
\R[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(20),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(20),
      O => \R[20]_i_1_n_0\
    );
\R[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(21),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(21),
      O => \R[21]_i_1_n_0\
    );
\R[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(22),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(22),
      O => \R[22]_i_1_n_0\
    );
\R[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(23),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(23),
      O => \R[23]_i_1_n_0\
    );
\R[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => mult_gata,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \R[24]_i_1_n_0\
    );
\R[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(24),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(24),
      O => \R[24]_i_2_n_0\
    );
\R[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(2),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(2),
      O => \R[2]_i_1_n_0\
    );
\R[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(3),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(3),
      O => \R[3]_i_1_n_0\
    );
\R[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(4),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(4),
      O => \R[4]_i_1_n_0\
    );
\R[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(5),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(5),
      O => \R[5]_i_1_n_0\
    );
\R[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(6),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(6),
      O => \R[6]_i_1_n_0\
    );
\R[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(7),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(7),
      O => \R[7]_i_1_n_0\
    );
\R[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(8),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(8),
      O => \R[8]_i_1_n_0\
    );
\R[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => p_1_in(9),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => Q(9),
      O => \R[9]_i_1_n_0\
    );
\R_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[0]_i_1_n_0\,
      Q => p_1_in(1)
    );
\R_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[10]_i_1_n_0\,
      Q => p_1_in(11)
    );
\R_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[11]_i_1_n_0\,
      Q => p_1_in(12)
    );
\R_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[12]_i_1_n_0\,
      Q => p_1_in(13)
    );
\R_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[13]_i_1_n_0\,
      Q => p_1_in(14)
    );
\R_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[14]_i_1_n_0\,
      Q => p_1_in(15)
    );
\R_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[15]_i_1_n_0\,
      Q => p_1_in(16)
    );
\R_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[16]_i_1_n_0\,
      Q => p_1_in(17)
    );
\R_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[17]_i_1_n_0\,
      Q => p_1_in(18)
    );
\R_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[18]_i_1_n_0\,
      Q => p_1_in(19)
    );
\R_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[19]_i_1_n_0\,
      Q => p_1_in(20)
    );
\R_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[1]_i_1_n_0\,
      Q => p_1_in(2)
    );
\R_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[20]_i_1_n_0\,
      Q => p_1_in(21)
    );
\R_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[21]_i_1_n_0\,
      Q => p_1_in(22)
    );
\R_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[22]_i_1_n_0\,
      Q => p_1_in(23)
    );
\R_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[23]_i_1_n_0\,
      Q => p_1_in(24)
    );
\R_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[24]_i_2_n_0\,
      Q => L(0)
    );
\R_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[2]_i_1_n_0\,
      Q => p_1_in(3)
    );
\R_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[3]_i_1_n_0\,
      Q => p_1_in(4)
    );
\R_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[4]_i_1_n_0\,
      Q => p_1_in(5)
    );
\R_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[5]_i_1_n_0\,
      Q => p_1_in(6)
    );
\R_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[6]_i_1_n_0\,
      Q => p_1_in(7)
    );
\R_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[7]_i_1_n_0\,
      Q => p_1_in(8)
    );
\R_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[8]_i_1_n_0\,
      Q => p_1_in(9)
    );
\R_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \R[9]_i_1_n_0\,
      Q => p_1_in(10)
    );
\contor[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[0]\,
      O => \contor[0]_i_1__0_n_0\
    );
\contor[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \contor_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => contor(1)
    );
\contor[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8882"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[2]\,
      I2 => \contor_reg_n_0_[0]\,
      I3 => \contor_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => contor(2)
    );
\contor[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88888882"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[3]\,
      I2 => \contor_reg_n_0_[0]\,
      I3 => \contor_reg_n_0_[1]\,
      I4 => \contor_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => contor(3)
    );
\contor_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \contor[0]_i_1__0_n_0\,
      Q => \contor_reg_n_0_[0]\
    );
\contor_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => contor(1),
      Q => \contor_reg_n_0_[1]\
    );
\contor_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => contor(2),
      Q => \contor_reg_n_0_[2]\
    );
\contor_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \R[24]_i_1_n_0\,
      CLR => rst_conv,
      D => contor(3),
      Q => \contor_reg_n_0_[3]\
    );
\quotient[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => rst_conv,
      O => quotient0
    );
\quotient_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => p_1_in(1),
      Q => pwm_val(0),
      R => '0'
    );
\quotient_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => p_1_in(2),
      Q => pwm_val(1),
      R => '0'
    );
\quotient_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => p_1_in(3),
      Q => pwm_val(2),
      R => '0'
    );
\quotient_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => p_1_in(4),
      Q => pwm_val(3),
      R => '0'
    );
\quotient_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => p_1_in(5),
      Q => pwm_val(4),
      R => '0'
    );
\quotient_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => p_1_in(6),
      Q => pwm_val(5),
      R => '0'
    );
\quotient_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => p_1_in(7),
      Q => pwm_val(6),
      R => '0'
    );
\quotient_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => p_1_in(8),
      Q => pwm_val(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pid_controller_0_0_fp_converter is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fp_sign_reg_0 : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : out STD_LOGIC;
    start_pid : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    start_pwm : out STD_LOGIC;
    \out_fp_reg[31]_0\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    \out_int_reg[11]_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    rst_fp : in STD_LOGIC;
    fp_sign_reg_1 : in STD_LOGIC;
    fp_sign_reg_2 : in STD_LOGIC;
    \temp_int_v_reg[7]_0\ : in STD_LOGIC;
    \temp_int_v_reg[7]_1\ : in STD_LOGIC;
    \temp_int_v_reg[8]_0\ : in STD_LOGIC;
    pot_val : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \temp_int_v_reg[8]_1\ : in STD_LOGIC;
    \temp_int_v_reg[11]_0\ : in STD_LOGIC;
    control_output_u : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_secv_reg[0]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    start : in STD_LOGIC;
    done : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pid_controller_0_0_fp_converter : entity is "fp_converter";
end design_1_pid_controller_0_0_fp_converter;

architecture STRUCTURE of design_1_pid_controller_0_0_fp_converter is
  signal \FSM_onehot_secv[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal done_f2i : STD_LOGIC;
  signal done_i2f : STD_LOGIC;
  signal \fp_exp_u[0]_i_1_n_0\ : STD_LOGIC;
  signal \fp_exp_u[1]_i_1_n_0\ : STD_LOGIC;
  signal \fp_exp_u[2]_i_1_n_0\ : STD_LOGIC;
  signal \fp_exp_u[2]_i_2_n_0\ : STD_LOGIC;
  signal \fp_exp_u[3]_i_1_n_0\ : STD_LOGIC;
  signal \fp_exp_u[6]_i_1_n_0\ : STD_LOGIC;
  signal \fp_exp_u[6]_i_2_n_0\ : STD_LOGIC;
  signal \fp_exp_u[6]_i_3_n_0\ : STD_LOGIC;
  signal \fp_exp_u[6]_i_4_n_0\ : STD_LOGIC;
  signal \fp_exp_u[6]_i_5_n_0\ : STD_LOGIC;
  signal \fp_exp_u[7]_i_1_n_0\ : STD_LOGIC;
  signal \fp_exp_u[7]_i_2_n_0\ : STD_LOGIC;
  signal \fp_exp_u__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fp_mant_u : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \fp_mant_u[0]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[0]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[10]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[10]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[11]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[11]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[12]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[12]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[13]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[13]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[14]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[14]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[15]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[15]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[16]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[16]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[16]_i_3_n_0\ : STD_LOGIC;
  signal \fp_mant_u[17]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[17]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[18]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[18]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[19]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[19]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[1]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[20]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[20]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[21]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[21]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[22]_i_10_n_0\ : STD_LOGIC;
  signal \fp_mant_u[22]_i_11_n_0\ : STD_LOGIC;
  signal \fp_mant_u[22]_i_12_n_0\ : STD_LOGIC;
  signal \fp_mant_u[22]_i_13_n_0\ : STD_LOGIC;
  signal \fp_mant_u[22]_i_14_n_0\ : STD_LOGIC;
  signal \fp_mant_u[22]_i_15_n_0\ : STD_LOGIC;
  signal \fp_mant_u[22]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[22]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[22]_i_3_n_0\ : STD_LOGIC;
  signal \fp_mant_u[22]_i_4_n_0\ : STD_LOGIC;
  signal \fp_mant_u[22]_i_5_n_0\ : STD_LOGIC;
  signal \fp_mant_u[22]_i_6_n_0\ : STD_LOGIC;
  signal \fp_mant_u[22]_i_7_n_0\ : STD_LOGIC;
  signal \fp_mant_u[22]_i_8_n_0\ : STD_LOGIC;
  signal \fp_mant_u[22]_i_9_n_0\ : STD_LOGIC;
  signal \fp_mant_u[2]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[2]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[3]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[4]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[4]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[5]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[5]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[6]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[6]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[7]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[7]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[8]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[8]_i_2_n_0\ : STD_LOGIC;
  signal \fp_mant_u[9]_i_1_n_0\ : STD_LOGIC;
  signal \fp_mant_u[9]_i_2_n_0\ : STD_LOGIC;
  signal fp_sign_i_1_n_0 : STD_LOGIC;
  signal \^fp_sign_reg_0\ : STD_LOGIC;
  signal \out_fp[31]_i_1_n_0\ : STD_LOGIC;
  signal \out_int[11]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal \^start_pwm\ : STD_LOGIC;
  signal temp_int_v0 : STD_LOGIC;
  signal \temp_int_v[11]_i_2_n_0\ : STD_LOGIC;
  signal \temp_int_v[7]_i_1_n_0\ : STD_LOGIC;
  signal \temp_int_v[8]_i_1_n_0\ : STD_LOGIC;
  signal \temp_int_v_reg_n_0_[0]\ : STD_LOGIC;
  signal \temp_int_v_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "c_idle:00001,c_i2f_pack:00100,c_f2i_finish:10000,c_f2i_unpack:01000,c_i2f_find_msb:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "c_idle:00001,c_i2f_pack:00100,c_f2i_finish:10000,c_f2i_unpack:01000,c_i2f_find_msb:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "c_idle:00001,c_i2f_pack:00100,c_f2i_finish:10000,c_f2i_unpack:01000,c_i2f_find_msb:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "c_idle:00001,c_i2f_pack:00100,c_f2i_finish:10000,c_f2i_unpack:01000,c_i2f_find_msb:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "c_idle:00001,c_i2f_pack:00100,c_f2i_finish:10000,c_f2i_unpack:01000,c_i2f_find_msb:00010";
  attribute SOFT_HLUTNM of \fp_exp_u[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fp_exp_u[6]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fp_exp_u[6]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \fp_exp_u[6]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \fp_exp_u[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \fp_mant_u[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \fp_mant_u[22]_i_13\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \fp_mant_u[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \temp_int_v[11]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \temp_int_v[9]_i_2\ : label is "soft_lutpair4";
begin
  \FSM_onehot_state_reg[1]_0\ <= \^fsm_onehot_state_reg[1]_0\;
  Q(3 downto 0) <= \^q\(3 downto 0);
  fp_sign_reg_0 <= \^fp_sign_reg_0\;
  start_pwm <= \^start_pwm\;
\FSM_onehot_secv[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => \FSM_onehot_secv_reg[0]\(0),
      I1 => start,
      I2 => \FSM_onehot_secv[5]_i_2_n_0\,
      I3 => \FSM_onehot_secv_reg[0]\(5),
      O => E(0)
    );
\FSM_onehot_secv[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \^start_pwm\,
      I1 => done,
      I2 => \FSM_onehot_secv_reg[0]\(2),
      I3 => done_i2f,
      I4 => \FSM_onehot_secv_reg[0]\(1),
      I5 => \FSM_onehot_secv_reg[0]\(4),
      O => \FSM_onehot_secv[5]_i_2_n_0\
    );
\FSM_onehot_state[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(2),
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[0]_i_1__0_n_0\
    );
\FSM_onehot_state[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => fp_sign_reg_2,
      O => \FSM_onehot_state[1]_i_1__0_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => fp_sign_reg_2,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFEFEFE"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \^q\(3),
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => \^q\(0),
      I4 => fp_sign_reg_1,
      I5 => fp_sign_reg_2,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => \^fsm_onehot_state_reg[1]_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      D => \FSM_onehot_state[0]_i_1__0_n_0\,
      PRE => rst_fp,
      Q => \^q\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      CLR => rst_fp,
      D => \FSM_onehot_state[1]_i_1__0_n_0\,
      Q => \^q\(1)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      CLR => rst_fp,
      D => \^q\(1),
      Q => \^q\(2)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      CLR => rst_fp,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \^q\(3)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      CLR => rst_fp,
      D => \^q\(3),
      Q => \FSM_onehot_state_reg_n_0_[4]\
    );
done_f2i_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst_fp,
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => done_f2i
    );
done_i2f_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst_fp,
      D => \^q\(2),
      Q => done_i2f
    );
\fp_exp_u[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFDFF"
    )
        port map (
      I0 => \fp_exp_u[6]_i_3_n_0\,
      I1 => \temp_int_v_reg_n_0_[0]\,
      I2 => p_1_in,
      I3 => \fp_exp_u[6]_i_4_n_0\,
      I4 => \fp_exp_u[6]_i_5_n_0\,
      I5 => \fp_mant_u[22]_i_5_n_0\,
      O => \fp_exp_u[0]_i_1_n_0\
    );
\fp_exp_u[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFDFF"
    )
        port map (
      I0 => \fp_exp_u[6]_i_3_n_0\,
      I1 => \temp_int_v_reg_n_0_[0]\,
      I2 => p_1_in,
      I3 => \fp_exp_u[6]_i_4_n_0\,
      I4 => \fp_exp_u[6]_i_5_n_0\,
      I5 => \fp_mant_u[22]_i_7_n_0\,
      O => \fp_exp_u[1]_i_1_n_0\
    );
\fp_exp_u[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAB55555554"
    )
        port map (
      I0 => \fp_exp_u[6]_i_5_n_0\,
      I1 => p_4_in,
      I2 => \temp_int_v_reg_n_0_[4]\,
      I3 => p_6_in,
      I4 => p_5_in,
      I5 => \fp_exp_u[2]_i_2_n_0\,
      O => \fp_exp_u[2]_i_1_n_0\
    );
\fp_exp_u[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011111110"
    )
        port map (
      I0 => p_10_in,
      I1 => p_9_in,
      I2 => \fp_mant_u[22]_i_14_n_0\,
      I3 => p_7_in,
      I4 => p_8_in,
      I5 => \fp_mant_u[22]_i_5_n_0\,
      O => \fp_exp_u[2]_i_2_n_0\
    );
\fp_exp_u[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => p_7_in,
      I1 => p_8_in,
      I2 => p_9_in,
      I3 => p_10_in,
      I4 => \fp_exp_u[7]_i_2_n_0\,
      O => \fp_exp_u[3]_i_1_n_0\
    );
\fp_exp_u[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \fp_mant_u[22]_i_1_n_0\,
      I1 => \fp_exp_u[6]_i_3_n_0\,
      I2 => \temp_int_v_reg_n_0_[0]\,
      I3 => p_1_in,
      I4 => \fp_exp_u[6]_i_4_n_0\,
      I5 => \fp_exp_u[6]_i_5_n_0\,
      O => \fp_exp_u[6]_i_1_n_0\
    );
\fp_exp_u[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \fp_exp_u[7]_i_2_n_0\,
      I1 => p_7_in,
      I2 => p_8_in,
      I3 => p_9_in,
      I4 => p_10_in,
      O => \fp_exp_u[6]_i_2_n_0\
    );
\fp_exp_u[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_4_in,
      I1 => \temp_int_v_reg_n_0_[4]\,
      I2 => p_6_in,
      I3 => p_5_in,
      O => \fp_exp_u[6]_i_3_n_0\
    );
\fp_exp_u[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in,
      I1 => p_2_in,
      O => \fp_exp_u[6]_i_4_n_0\
    );
\fp_exp_u[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_10_in,
      I1 => p_9_in,
      I2 => p_8_in,
      I3 => p_7_in,
      O => \fp_exp_u[6]_i_5_n_0\
    );
\fp_exp_u[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \fp_exp_u[7]_i_2_n_0\,
      I1 => p_7_in,
      I2 => p_8_in,
      I3 => p_9_in,
      I4 => p_10_in,
      O => \fp_exp_u[7]_i_1_n_0\
    );
\fp_exp_u[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAB00000000"
    )
        port map (
      I0 => \fp_exp_u[6]_i_5_n_0\,
      I1 => p_4_in,
      I2 => \temp_int_v_reg_n_0_[4]\,
      I3 => p_6_in,
      I4 => p_5_in,
      I5 => \fp_exp_u[2]_i_2_n_0\,
      O => \fp_exp_u[7]_i_2_n_0\
    );
\fp_exp_u_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_exp_u[0]_i_1_n_0\,
      Q => \fp_exp_u__0\(0),
      R => '0'
    );
\fp_exp_u_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_exp_u[1]_i_1_n_0\,
      Q => \fp_exp_u__0\(1),
      R => '0'
    );
\fp_exp_u_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_exp_u[2]_i_1_n_0\,
      Q => \fp_exp_u__0\(2),
      R => \fp_exp_u[6]_i_1_n_0\
    );
\fp_exp_u_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_exp_u[3]_i_1_n_0\,
      Q => \fp_exp_u__0\(3),
      R => \fp_exp_u[6]_i_1_n_0\
    );
\fp_exp_u_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_exp_u[6]_i_2_n_0\,
      Q => \fp_exp_u__0\(6),
      R => \fp_exp_u[6]_i_1_n_0\
    );
\fp_exp_u_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_exp_u[7]_i_1_n_0\,
      Q => \fp_exp_u__0\(7),
      R => '0'
    );
\fp_mant_u[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \fp_mant_u[2]_i_2_n_0\,
      I1 => \fp_mant_u[22]_i_7_n_0\,
      I2 => \fp_mant_u[0]_i_2_n_0\,
      I3 => \fp_mant_u[22]_i_5_n_0\,
      O => \fp_mant_u[0]_i_1_n_0\
    );
\fp_mant_u[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B080"
    )
        port map (
      I0 => \temp_int_v_reg_n_0_[4]\,
      I1 => \fp_mant_u[22]_i_9_n_0\,
      I2 => \fp_mant_u[22]_i_11_n_0\,
      I3 => \temp_int_v_reg_n_0_[0]\,
      I4 => \fp_mant_u[22]_i_10_n_0\,
      O => \fp_mant_u[0]_i_2_n_0\
    );
\fp_mant_u[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[12]_i_2_n_0\,
      I1 => \fp_mant_u[10]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[13]_i_2_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[11]_i_2_n_0\,
      O => \fp_mant_u[10]_i_1_n_0\
    );
\fp_mant_u[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => p_5_in,
      I1 => \fp_mant_u[22]_i_9_n_0\,
      I2 => p_9_in,
      I3 => \fp_mant_u[16]_i_3_n_0\,
      I4 => p_0_in,
      I5 => \fp_mant_u[22]_i_11_n_0\,
      O => \fp_mant_u[10]_i_2_n_0\
    );
\fp_mant_u[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[13]_i_2_n_0\,
      I1 => \fp_mant_u[11]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[14]_i_2_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[12]_i_2_n_0\,
      O => \fp_mant_u[11]_i_1_n_0\
    );
\fp_mant_u[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00300030BB308830"
    )
        port map (
      I0 => p_6_in,
      I1 => \fp_mant_u[22]_i_9_n_0\,
      I2 => p_10_in,
      I3 => \fp_mant_u[22]_i_10_n_0\,
      I4 => p_2_in,
      I5 => \fp_mant_u[22]_i_11_n_0\,
      O => \fp_mant_u[11]_i_2_n_0\
    );
\fp_mant_u[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[14]_i_2_n_0\,
      I1 => \fp_mant_u[12]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[15]_i_2_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[13]_i_2_n_0\,
      O => \fp_mant_u[12]_i_1_n_0\
    );
\fp_mant_u[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AFC0A0"
    )
        port map (
      I0 => p_7_in,
      I1 => \temp_int_v_reg_n_0_[0]\,
      I2 => \fp_mant_u[22]_i_9_n_0\,
      I3 => \fp_mant_u[22]_i_11_n_0\,
      I4 => \temp_int_v_reg_n_0_[4]\,
      I5 => \fp_mant_u[16]_i_3_n_0\,
      O => \fp_mant_u[12]_i_2_n_0\
    );
\fp_mant_u[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[15]_i_2_n_0\,
      I1 => \fp_mant_u[13]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[16]_i_2_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[14]_i_2_n_0\,
      O => \fp_mant_u[13]_i_1_n_0\
    );
\fp_mant_u[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0AFC0A000000000"
    )
        port map (
      I0 => p_8_in,
      I1 => p_1_in,
      I2 => \fp_mant_u[22]_i_9_n_0\,
      I3 => \fp_mant_u[22]_i_11_n_0\,
      I4 => p_4_in,
      I5 => \fp_mant_u[22]_i_10_n_0\,
      O => \fp_mant_u[13]_i_2_n_0\
    );
\fp_mant_u[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[16]_i_2_n_0\,
      I1 => \fp_mant_u[14]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[17]_i_2_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[15]_i_2_n_0\,
      O => \fp_mant_u[14]_i_1_n_0\
    );
\fp_mant_u[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0AFC0A000000000"
    )
        port map (
      I0 => p_9_in,
      I1 => p_0_in,
      I2 => \fp_mant_u[22]_i_9_n_0\,
      I3 => \fp_mant_u[22]_i_11_n_0\,
      I4 => p_5_in,
      I5 => \fp_mant_u[22]_i_10_n_0\,
      O => \fp_mant_u[14]_i_2_n_0\
    );
\fp_mant_u[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[17]_i_2_n_0\,
      I1 => \fp_mant_u[15]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[18]_i_2_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[16]_i_2_n_0\,
      O => \fp_mant_u[15]_i_1_n_0\
    );
\fp_mant_u[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C000AF00A000"
    )
        port map (
      I0 => p_10_in,
      I1 => p_2_in,
      I2 => \fp_mant_u[22]_i_9_n_0\,
      I3 => \fp_mant_u[22]_i_10_n_0\,
      I4 => p_6_in,
      I5 => \fp_mant_u[22]_i_11_n_0\,
      O => \fp_mant_u[15]_i_2_n_0\
    );
\fp_mant_u[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[18]_i_2_n_0\,
      I1 => \fp_mant_u[16]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[19]_i_2_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[17]_i_2_n_0\,
      O => \fp_mant_u[16]_i_1_n_0\
    );
\fp_mant_u[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BB008800300030"
    )
        port map (
      I0 => \temp_int_v_reg_n_0_[4]\,
      I1 => \fp_mant_u[22]_i_9_n_0\,
      I2 => p_7_in,
      I3 => \fp_mant_u[16]_i_3_n_0\,
      I4 => \temp_int_v_reg_n_0_[0]\,
      I5 => \fp_mant_u[22]_i_11_n_0\,
      O => \fp_mant_u[16]_i_2_n_0\
    );
\fp_mant_u[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222222222223"
    )
        port map (
      I0 => \fp_mant_u[22]_i_15_n_0\,
      I1 => \fp_exp_u[6]_i_5_n_0\,
      I2 => p_4_in,
      I3 => \temp_int_v_reg_n_0_[4]\,
      I4 => p_6_in,
      I5 => p_5_in,
      O => \fp_mant_u[16]_i_3_n_0\
    );
\fp_mant_u[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[19]_i_2_n_0\,
      I1 => \fp_mant_u[17]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[20]_i_2_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[18]_i_2_n_0\,
      O => \fp_mant_u[17]_i_1_n_0\
    );
\fp_mant_u[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB00880030003000"
    )
        port map (
      I0 => p_4_in,
      I1 => \fp_mant_u[22]_i_9_n_0\,
      I2 => p_8_in,
      I3 => \fp_mant_u[22]_i_10_n_0\,
      I4 => p_1_in,
      I5 => \fp_mant_u[22]_i_11_n_0\,
      O => \fp_mant_u[17]_i_2_n_0\
    );
\fp_mant_u[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[20]_i_2_n_0\,
      I1 => \fp_mant_u[18]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[21]_i_2_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[19]_i_2_n_0\,
      O => \fp_mant_u[18]_i_1_n_0\
    );
\fp_mant_u[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB00880030003000"
    )
        port map (
      I0 => p_5_in,
      I1 => \fp_mant_u[22]_i_9_n_0\,
      I2 => p_9_in,
      I3 => \fp_mant_u[22]_i_10_n_0\,
      I4 => p_0_in,
      I5 => \fp_mant_u[22]_i_11_n_0\,
      O => \fp_mant_u[18]_i_2_n_0\
    );
\fp_mant_u[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[21]_i_2_n_0\,
      I1 => \fp_mant_u[19]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[22]_i_4_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[20]_i_2_n_0\,
      O => \fp_mant_u[19]_i_1_n_0\
    );
\fp_mant_u[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB00880030003000"
    )
        port map (
      I0 => p_6_in,
      I1 => \fp_mant_u[22]_i_9_n_0\,
      I2 => p_10_in,
      I3 => \fp_mant_u[22]_i_10_n_0\,
      I4 => p_2_in,
      I5 => \fp_mant_u[22]_i_11_n_0\,
      O => \fp_mant_u[19]_i_2_n_0\
    );
\fp_mant_u[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4540"
    )
        port map (
      I0 => \fp_mant_u[22]_i_5_n_0\,
      I1 => \fp_mant_u[4]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_7_n_0\,
      I3 => \fp_mant_u[2]_i_2_n_0\,
      O => \fp_mant_u[1]_i_1_n_0\
    );
\fp_mant_u[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[22]_i_4_n_0\,
      I1 => \fp_mant_u[20]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[22]_i_8_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[21]_i_2_n_0\,
      O => \fp_mant_u[20]_i_1_n_0\
    );
\fp_mant_u[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF00C00000A000A0"
    )
        port map (
      I0 => \temp_int_v_reg_n_0_[0]\,
      I1 => p_7_in,
      I2 => \fp_mant_u[22]_i_9_n_0\,
      I3 => \fp_mant_u[22]_i_11_n_0\,
      I4 => \temp_int_v_reg_n_0_[4]\,
      I5 => \fp_mant_u[22]_i_10_n_0\,
      O => \fp_mant_u[20]_i_2_n_0\
    );
\fp_mant_u[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[22]_i_8_n_0\,
      I1 => \fp_mant_u[21]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[22]_i_3_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[22]_i_4_n_0\,
      O => \fp_mant_u[21]_i_1_n_0\
    );
\fp_mant_u[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF00C00000A000A0"
    )
        port map (
      I0 => p_1_in,
      I1 => p_8_in,
      I2 => \fp_mant_u[22]_i_9_n_0\,
      I3 => \fp_mant_u[22]_i_11_n_0\,
      I4 => p_4_in,
      I5 => \fp_mant_u[22]_i_10_n_0\,
      O => \fp_mant_u[21]_i_2_n_0\
    );
\fp_mant_u[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => rst_fp,
      O => \fp_mant_u[22]_i_1_n_0\
    );
\fp_mant_u[22]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFFFFFE"
    )
        port map (
      I0 => p_5_in,
      I1 => p_6_in,
      I2 => \temp_int_v_reg_n_0_[4]\,
      I3 => p_4_in,
      I4 => \fp_exp_u[6]_i_5_n_0\,
      I5 => \fp_mant_u[22]_i_15_n_0\,
      O => \fp_mant_u[22]_i_10_n_0\
    );
\fp_mant_u[22]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000FFFE"
    )
        port map (
      I0 => p_5_in,
      I1 => p_6_in,
      I2 => \temp_int_v_reg_n_0_[4]\,
      I3 => p_4_in,
      I4 => \fp_mant_u[22]_i_15_n_0\,
      I5 => \fp_exp_u[6]_i_5_n_0\,
      O => \fp_mant_u[22]_i_11_n_0\
    );
\fp_mant_u[22]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF0D"
    )
        port map (
      I0 => p_1_in,
      I1 => p_0_in,
      I2 => p_2_in,
      I3 => \temp_int_v_reg_n_0_[4]\,
      I4 => p_4_in,
      I5 => p_5_in,
      O => \fp_mant_u[22]_i_12_n_0\
    );
\fp_mant_u[22]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_6_in,
      I1 => p_5_in,
      I2 => p_4_in,
      O => \fp_mant_u[22]_i_13_n_0\
    );
\fp_mant_u[22]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFF1"
    )
        port map (
      I0 => p_0_in,
      I1 => p_2_in,
      I2 => \temp_int_v_reg_n_0_[4]\,
      I3 => p_4_in,
      I4 => p_6_in,
      I5 => p_5_in,
      O => \fp_mant_u[22]_i_14_n_0\
    );
\fp_mant_u[22]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11111110FFFFFFFF"
    )
        port map (
      I0 => p_10_in,
      I1 => p_9_in,
      I2 => \fp_mant_u[22]_i_14_n_0\,
      I3 => p_7_in,
      I4 => p_8_in,
      I5 => \fp_mant_u[22]_i_5_n_0\,
      O => \fp_mant_u[22]_i_15_n_0\
    );
\fp_mant_u[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0CFC0"
    )
        port map (
      I0 => \fp_mant_u[22]_i_3_n_0\,
      I1 => \fp_mant_u[22]_i_4_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[22]_i_6_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[22]_i_8_n_0\,
      O => \fp_mant_u[22]_i_2_n_0\
    );
\fp_mant_u[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5000500000FF0044"
    )
        port map (
      I0 => \fp_mant_u[22]_i_9_n_0\,
      I1 => \temp_int_v_reg_n_0_[0]\,
      I2 => p_7_in,
      I3 => \fp_mant_u[22]_i_10_n_0\,
      I4 => \temp_int_v_reg_n_0_[4]\,
      I5 => \fp_mant_u[22]_i_11_n_0\,
      O => \fp_mant_u[22]_i_3_n_0\
    );
\fp_mant_u[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF00C00000A000A0"
    )
        port map (
      I0 => p_0_in,
      I1 => p_9_in,
      I2 => \fp_mant_u[22]_i_9_n_0\,
      I3 => \fp_mant_u[22]_i_11_n_0\,
      I4 => p_5_in,
      I5 => \fp_mant_u[22]_i_10_n_0\,
      O => \fp_mant_u[22]_i_4_n_0\
    );
\fp_mant_u[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFFAAFB"
    )
        port map (
      I0 => p_8_in,
      I1 => \fp_mant_u[22]_i_12_n_0\,
      I2 => \fp_mant_u[22]_i_13_n_0\,
      I3 => p_7_in,
      I4 => p_10_in,
      I5 => p_9_in,
      O => \fp_mant_u[22]_i_5_n_0\
    );
\fp_mant_u[22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5000500000FF0044"
    )
        port map (
      I0 => \fp_mant_u[22]_i_9_n_0\,
      I1 => p_1_in,
      I2 => p_8_in,
      I3 => \fp_mant_u[22]_i_10_n_0\,
      I4 => p_4_in,
      I5 => \fp_mant_u[22]_i_11_n_0\,
      O => \fp_mant_u[22]_i_6_n_0\
    );
\fp_mant_u[22]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11111110EEEEEEEF"
    )
        port map (
      I0 => p_10_in,
      I1 => p_9_in,
      I2 => \fp_mant_u[22]_i_14_n_0\,
      I3 => p_7_in,
      I4 => p_8_in,
      I5 => \fp_mant_u[22]_i_5_n_0\,
      O => \fp_mant_u[22]_i_7_n_0\
    );
\fp_mant_u[22]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0200F0FF0200000"
    )
        port map (
      I0 => p_6_in,
      I1 => \fp_mant_u[22]_i_9_n_0\,
      I2 => \fp_mant_u[22]_i_10_n_0\,
      I3 => p_10_in,
      I4 => \fp_mant_u[22]_i_11_n_0\,
      I5 => p_2_in,
      O => \fp_mant_u[22]_i_8_n_0\
    );
\fp_mant_u[22]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666666666665"
    )
        port map (
      I0 => \fp_mant_u[22]_i_15_n_0\,
      I1 => \fp_exp_u[6]_i_5_n_0\,
      I2 => p_4_in,
      I3 => \temp_int_v_reg_n_0_[4]\,
      I4 => p_6_in,
      I5 => p_5_in,
      O => \fp_mant_u[22]_i_9_n_0\
    );
\fp_mant_u[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[4]_i_2_n_0\,
      I1 => \fp_mant_u[2]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[5]_i_2_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      O => \fp_mant_u[2]_i_1_n_0\
    );
\fp_mant_u[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B080"
    )
        port map (
      I0 => p_5_in,
      I1 => \fp_mant_u[22]_i_9_n_0\,
      I2 => \fp_mant_u[22]_i_11_n_0\,
      I3 => p_0_in,
      I4 => \fp_mant_u[22]_i_10_n_0\,
      O => \fp_mant_u[2]_i_2_n_0\
    );
\fp_mant_u[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \fp_mant_u[5]_i_2_n_0\,
      I1 => \fp_mant_u[22]_i_5_n_0\,
      I2 => \fp_mant_u[6]_i_2_n_0\,
      I3 => \fp_mant_u[22]_i_7_n_0\,
      I4 => \fp_mant_u[4]_i_2_n_0\,
      O => \fp_mant_u[3]_i_1_n_0\
    );
\fp_mant_u[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[6]_i_2_n_0\,
      I1 => \fp_mant_u[4]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[7]_i_2_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[5]_i_2_n_0\,
      O => \fp_mant_u[4]_i_1_n_0\
    );
\fp_mant_u[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C000C0AFA0A0A0"
    )
        port map (
      I0 => p_7_in,
      I1 => \temp_int_v_reg_n_0_[0]\,
      I2 => \fp_mant_u[22]_i_9_n_0\,
      I3 => \fp_mant_u[22]_i_11_n_0\,
      I4 => \temp_int_v_reg_n_0_[4]\,
      I5 => \fp_mant_u[22]_i_10_n_0\,
      O => \fp_mant_u[4]_i_2_n_0\
    );
\fp_mant_u[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[7]_i_2_n_0\,
      I1 => \fp_mant_u[5]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[8]_i_2_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[6]_i_2_n_0\,
      O => \fp_mant_u[5]_i_1_n_0\
    );
\fp_mant_u[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C000C0AFA0A0A0"
    )
        port map (
      I0 => p_8_in,
      I1 => p_1_in,
      I2 => \fp_mant_u[22]_i_9_n_0\,
      I3 => \fp_mant_u[22]_i_11_n_0\,
      I4 => p_4_in,
      I5 => \fp_mant_u[22]_i_10_n_0\,
      O => \fp_mant_u[5]_i_2_n_0\
    );
\fp_mant_u[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[8]_i_2_n_0\,
      I1 => \fp_mant_u[6]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[9]_i_2_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[7]_i_2_n_0\,
      O => \fp_mant_u[6]_i_1_n_0\
    );
\fp_mant_u[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA000C0A0A000C0"
    )
        port map (
      I0 => p_9_in,
      I1 => p_0_in,
      I2 => \fp_mant_u[22]_i_9_n_0\,
      I3 => \fp_mant_u[22]_i_11_n_0\,
      I4 => \fp_mant_u[16]_i_3_n_0\,
      I5 => p_5_in,
      O => \fp_mant_u[6]_i_2_n_0\
    );
\fp_mant_u[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[9]_i_2_n_0\,
      I1 => \fp_mant_u[7]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[10]_i_2_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[8]_i_2_n_0\,
      O => \fp_mant_u[7]_i_1_n_0\
    );
\fp_mant_u[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA000C0A0A000C0"
    )
        port map (
      I0 => p_10_in,
      I1 => p_2_in,
      I2 => \fp_mant_u[22]_i_9_n_0\,
      I3 => \fp_mant_u[22]_i_11_n_0\,
      I4 => \fp_mant_u[16]_i_3_n_0\,
      I5 => p_6_in,
      O => \fp_mant_u[7]_i_2_n_0\
    );
\fp_mant_u[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[10]_i_2_n_0\,
      I1 => \fp_mant_u[8]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[11]_i_2_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[9]_i_2_n_0\,
      O => \fp_mant_u[8]_i_1_n_0\
    );
\fp_mant_u[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => \temp_int_v_reg_n_0_[4]\,
      I1 => \fp_mant_u[22]_i_9_n_0\,
      I2 => p_7_in,
      I3 => \fp_mant_u[16]_i_3_n_0\,
      I4 => \temp_int_v_reg_n_0_[0]\,
      I5 => \fp_mant_u[22]_i_11_n_0\,
      O => \fp_mant_u[8]_i_2_n_0\
    );
\fp_mant_u[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fp_mant_u[11]_i_2_n_0\,
      I1 => \fp_mant_u[9]_i_2_n_0\,
      I2 => \fp_mant_u[22]_i_5_n_0\,
      I3 => \fp_mant_u[12]_i_2_n_0\,
      I4 => \fp_mant_u[22]_i_7_n_0\,
      I5 => \fp_mant_u[10]_i_2_n_0\,
      O => \fp_mant_u[9]_i_1_n_0\
    );
\fp_mant_u[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => p_4_in,
      I1 => \fp_mant_u[22]_i_9_n_0\,
      I2 => p_8_in,
      I3 => \fp_mant_u[16]_i_3_n_0\,
      I4 => p_1_in,
      I5 => \fp_mant_u[22]_i_11_n_0\,
      O => \fp_mant_u[9]_i_2_n_0\
    );
\fp_mant_u_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[0]_i_1_n_0\,
      Q => fp_mant_u(0),
      R => '0'
    );
\fp_mant_u_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[10]_i_1_n_0\,
      Q => fp_mant_u(10),
      R => '0'
    );
\fp_mant_u_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[11]_i_1_n_0\,
      Q => fp_mant_u(11),
      R => '0'
    );
\fp_mant_u_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[12]_i_1_n_0\,
      Q => fp_mant_u(12),
      R => '0'
    );
\fp_mant_u_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[13]_i_1_n_0\,
      Q => fp_mant_u(13),
      R => '0'
    );
\fp_mant_u_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[14]_i_1_n_0\,
      Q => fp_mant_u(14),
      R => '0'
    );
\fp_mant_u_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[15]_i_1_n_0\,
      Q => fp_mant_u(15),
      R => '0'
    );
\fp_mant_u_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[16]_i_1_n_0\,
      Q => fp_mant_u(16),
      R => '0'
    );
\fp_mant_u_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[17]_i_1_n_0\,
      Q => fp_mant_u(17),
      R => '0'
    );
\fp_mant_u_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[18]_i_1_n_0\,
      Q => fp_mant_u(18),
      R => '0'
    );
\fp_mant_u_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[19]_i_1_n_0\,
      Q => fp_mant_u(19),
      R => '0'
    );
\fp_mant_u_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[1]_i_1_n_0\,
      Q => fp_mant_u(1),
      R => '0'
    );
\fp_mant_u_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[20]_i_1_n_0\,
      Q => fp_mant_u(20),
      R => '0'
    );
\fp_mant_u_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[21]_i_1_n_0\,
      Q => fp_mant_u(21),
      R => '0'
    );
\fp_mant_u_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[22]_i_2_n_0\,
      Q => fp_mant_u(22),
      R => '0'
    );
\fp_mant_u_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[2]_i_1_n_0\,
      Q => fp_mant_u(2),
      R => '0'
    );
\fp_mant_u_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[3]_i_1_n_0\,
      Q => fp_mant_u(3),
      R => '0'
    );
\fp_mant_u_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[4]_i_1_n_0\,
      Q => fp_mant_u(4),
      R => '0'
    );
\fp_mant_u_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[5]_i_1_n_0\,
      Q => fp_mant_u(5),
      R => '0'
    );
\fp_mant_u_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[6]_i_1_n_0\,
      Q => fp_mant_u(6),
      R => '0'
    );
\fp_mant_u_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[7]_i_1_n_0\,
      Q => fp_mant_u(7),
      R => '0'
    );
\fp_mant_u_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[8]_i_1_n_0\,
      Q => fp_mant_u(8),
      R => '0'
    );
\fp_mant_u_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fp_mant_u[22]_i_1_n_0\,
      D => \fp_mant_u[9]_i_1_n_0\,
      Q => fp_mant_u(9),
      R => '0'
    );
fp_sign_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFEFCFFF00200000"
    )
        port map (
      I0 => control_output_u(0),
      I1 => rst_fp,
      I2 => \^q\(0),
      I3 => fp_sign_reg_2,
      I4 => fp_sign_reg_1,
      I5 => \^fp_sign_reg_0\,
      O => fp_sign_i_1_n_0
    );
fp_sign_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fp_sign_i_1_n_0,
      Q => \^fp_sign_reg_0\,
      R => '0'
    );
\out_fp[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => rst_fp,
      O => \out_fp[31]_i_1_n_0\
    );
\out_fp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(0),
      Q => \out_fp_reg[31]_0\(0),
      R => '0'
    );
\out_fp_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(10),
      Q => \out_fp_reg[31]_0\(10),
      R => '0'
    );
\out_fp_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(11),
      Q => \out_fp_reg[31]_0\(11),
      R => '0'
    );
\out_fp_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(12),
      Q => \out_fp_reg[31]_0\(12),
      R => '0'
    );
\out_fp_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(13),
      Q => \out_fp_reg[31]_0\(13),
      R => '0'
    );
\out_fp_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(14),
      Q => \out_fp_reg[31]_0\(14),
      R => '0'
    );
\out_fp_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(15),
      Q => \out_fp_reg[31]_0\(15),
      R => '0'
    );
\out_fp_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(16),
      Q => \out_fp_reg[31]_0\(16),
      R => '0'
    );
\out_fp_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(17),
      Q => \out_fp_reg[31]_0\(17),
      R => '0'
    );
\out_fp_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(18),
      Q => \out_fp_reg[31]_0\(18),
      R => '0'
    );
\out_fp_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(19),
      Q => \out_fp_reg[31]_0\(19),
      R => '0'
    );
\out_fp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(1),
      Q => \out_fp_reg[31]_0\(1),
      R => '0'
    );
\out_fp_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(20),
      Q => \out_fp_reg[31]_0\(20),
      R => '0'
    );
\out_fp_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(21),
      Q => \out_fp_reg[31]_0\(21),
      R => '0'
    );
\out_fp_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(22),
      Q => \out_fp_reg[31]_0\(22),
      R => '0'
    );
\out_fp_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => \fp_exp_u__0\(0),
      Q => \out_fp_reg[31]_0\(23),
      R => '0'
    );
\out_fp_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => \fp_exp_u__0\(1),
      Q => \out_fp_reg[31]_0\(24),
      R => '0'
    );
\out_fp_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => \fp_exp_u__0\(2),
      Q => \out_fp_reg[31]_0\(25),
      R => '0'
    );
\out_fp_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => \fp_exp_u__0\(3),
      Q => \out_fp_reg[31]_0\(26),
      R => '0'
    );
\out_fp_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => \fp_exp_u__0\(6),
      Q => \out_fp_reg[31]_0\(27),
      R => '0'
    );
\out_fp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(2),
      Q => \out_fp_reg[31]_0\(2),
      R => '0'
    );
\out_fp_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => \fp_exp_u__0\(7),
      Q => \out_fp_reg[31]_0\(28),
      R => '0'
    );
\out_fp_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => \^fp_sign_reg_0\,
      Q => \out_fp_reg[31]_0\(29),
      R => '0'
    );
\out_fp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(3),
      Q => \out_fp_reg[31]_0\(3),
      R => '0'
    );
\out_fp_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(4),
      Q => \out_fp_reg[31]_0\(4),
      R => '0'
    );
\out_fp_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(5),
      Q => \out_fp_reg[31]_0\(5),
      R => '0'
    );
\out_fp_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(6),
      Q => \out_fp_reg[31]_0\(6),
      R => '0'
    );
\out_fp_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(7),
      Q => \out_fp_reg[31]_0\(7),
      R => '0'
    );
\out_fp_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(8),
      Q => \out_fp_reg[31]_0\(8),
      R => '0'
    );
\out_fp_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_fp[31]_i_1_n_0\,
      D => fp_mant_u(9),
      Q => \out_fp_reg[31]_0\(9),
      R => '0'
    );
\out_int[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => rst_fp,
      O => \out_int[11]_i_1_n_0\
    );
\out_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_int[11]_i_1_n_0\,
      D => \temp_int_v_reg_n_0_[0]\,
      Q => \out_int_reg[11]_0\(0),
      R => '0'
    );
\out_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_int[11]_i_1_n_0\,
      D => p_9_in,
      Q => \out_int_reg[11]_0\(10),
      R => '0'
    );
\out_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_int[11]_i_1_n_0\,
      D => p_10_in,
      Q => \out_int_reg[11]_0\(11),
      R => '0'
    );
\out_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_int[11]_i_1_n_0\,
      D => p_1_in,
      Q => \out_int_reg[11]_0\(1),
      R => '0'
    );
\out_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_int[11]_i_1_n_0\,
      D => p_0_in,
      Q => \out_int_reg[11]_0\(2),
      R => '0'
    );
\out_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_int[11]_i_1_n_0\,
      D => p_2_in,
      Q => \out_int_reg[11]_0\(3),
      R => '0'
    );
\out_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_int[11]_i_1_n_0\,
      D => \temp_int_v_reg_n_0_[4]\,
      Q => \out_int_reg[11]_0\(4),
      R => '0'
    );
\out_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_int[11]_i_1_n_0\,
      D => p_4_in,
      Q => \out_int_reg[11]_0\(5),
      R => '0'
    );
\out_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_int[11]_i_1_n_0\,
      D => p_5_in,
      Q => \out_int_reg[11]_0\(6),
      R => '0'
    );
\out_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_int[11]_i_1_n_0\,
      D => p_6_in,
      Q => \out_int_reg[11]_0\(7),
      R => '0'
    );
\out_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_int[11]_i_1_n_0\,
      D => p_7_in,
      Q => \out_int_reg[11]_0\(8),
      R => '0'
    );
\out_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out_int[11]_i_1_n_0\,
      D => p_8_in,
      Q => \out_int_reg[11]_0\(9),
      R => '0'
    );
start_pid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_secv_reg[0]\(1),
      I1 => done_i2f,
      O => start_pid
    );
start_pwm_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_secv_reg[0]\(3),
      I1 => done_f2i,
      O => \^start_pwm\
    );
\temp_int_v[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3222"
    )
        port map (
      I0 => \^q\(3),
      I1 => rst_fp,
      I2 => \^q\(0),
      I3 => fp_sign_reg_2,
      O => temp_int_v0
    );
\temp_int_v[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => \temp_int_v_reg[11]_0\,
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => pot_val(2),
      O => \temp_int_v[11]_i_2_n_0\
    );
\temp_int_v[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \temp_int_v_reg[7]_0\,
      I3 => \temp_int_v_reg[7]_1\,
      O => \temp_int_v[7]_i_1_n_0\
    );
\temp_int_v[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => \temp_int_v_reg[8]_0\,
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => pot_val(0),
      I4 => \^q\(0),
      I5 => \temp_int_v_reg[8]_1\,
      O => \temp_int_v[8]_i_1_n_0\
    );
\temp_int_v[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \^q\(0),
      I1 => pot_val(1),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => \FSM_onehot_state_reg[0]_0\
    );
\temp_int_v_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp_int_v0,
      D => D(0),
      Q => \temp_int_v_reg_n_0_[0]\,
      R => '0'
    );
\temp_int_v_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp_int_v0,
      D => D(8),
      Q => p_9_in,
      R => '0'
    );
\temp_int_v_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp_int_v0,
      D => \temp_int_v[11]_i_2_n_0\,
      Q => p_10_in,
      R => '0'
    );
\temp_int_v_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp_int_v0,
      D => D(1),
      Q => p_1_in,
      R => '0'
    );
\temp_int_v_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp_int_v0,
      D => D(2),
      Q => p_0_in,
      R => '0'
    );
\temp_int_v_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp_int_v0,
      D => D(3),
      Q => p_2_in,
      R => '0'
    );
\temp_int_v_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp_int_v0,
      D => D(4),
      Q => \temp_int_v_reg_n_0_[4]\,
      R => '0'
    );
\temp_int_v_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp_int_v0,
      D => D(5),
      Q => p_4_in,
      R => '0'
    );
\temp_int_v_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp_int_v0,
      D => D(6),
      Q => p_5_in,
      R => '0'
    );
\temp_int_v_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp_int_v0,
      D => \temp_int_v[7]_i_1_n_0\,
      Q => p_6_in,
      R => '0'
    );
\temp_int_v_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp_int_v0,
      D => \temp_int_v[8]_i_1_n_0\,
      Q => p_7_in,
      R => '0'
    );
\temp_int_v_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp_int_v0,
      D => D(7),
      Q => p_8_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pid_controller_0_0_inmultitor_shift_add is
  port (
    mult_gata : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 24 downto 0 );
    clk : in STD_LOGIC;
    rst_conv : in STD_LOGIC;
    \multiplicand_reg[0]_0\ : in STD_LOGIC;
    \multiplicand_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pid_controller_0_0_inmultitor_shift_add : entity is "inmultitor_shift_add";
end design_1_pid_controller_0_0_inmultitor_shift_add;

architecture STRUCTURE of design_1_pid_controller_0_0_inmultitor_shift_add is
  signal \FSM_onehot_stare[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_stare[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_stare[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_stare[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_stare_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_stare_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_stare_reg_n_0_[2]\ : STD_LOGIC;
  signal contor : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \contor[0]_i_1_n_0\ : STD_LOGIC;
  signal \contor[3]_i_1_n_0\ : STD_LOGIC;
  signal \contor_reg_n_0_[0]\ : STD_LOGIC;
  signal \contor_reg_n_0_[1]\ : STD_LOGIC;
  signal \contor_reg_n_0_[2]\ : STD_LOGIC;
  signal \contor_reg_n_0_[3]\ : STD_LOGIC;
  signal gata_i_1_n_0 : STD_LOGIC;
  signal in4 : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal in7 : STD_LOGIC_VECTOR ( 24 downto 1 );
  signal \^mult_gata\ : STD_LOGIC;
  signal \multiplicand[0]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[10]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[11]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[12]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[13]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[14]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[15]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[16]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[17]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[18]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[19]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[1]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[20]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[21]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[22]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[23]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[24]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[2]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[3]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[4]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[5]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[6]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[7]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[8]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand[9]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicand_reg_n_0_[24]\ : STD_LOGIC;
  signal multiplicator : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \multiplicator[0]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicator[1]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicator[2]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicator[3]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicator[4]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicator[5]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicator[6]_i_1_n_0\ : STD_LOGIC;
  signal \multiplicator_reg_n_0_[0]\ : STD_LOGIC;
  signal produs : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \produs0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \produs0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \produs0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \produs0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \produs0_carry__0_n_0\ : STD_LOGIC;
  signal \produs0_carry__0_n_1\ : STD_LOGIC;
  signal \produs0_carry__0_n_2\ : STD_LOGIC;
  signal \produs0_carry__0_n_3\ : STD_LOGIC;
  signal \produs0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \produs0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \produs0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \produs0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \produs0_carry__1_n_0\ : STD_LOGIC;
  signal \produs0_carry__1_n_1\ : STD_LOGIC;
  signal \produs0_carry__1_n_2\ : STD_LOGIC;
  signal \produs0_carry__1_n_3\ : STD_LOGIC;
  signal \produs0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \produs0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \produs0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \produs0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \produs0_carry__2_n_0\ : STD_LOGIC;
  signal \produs0_carry__2_n_1\ : STD_LOGIC;
  signal \produs0_carry__2_n_2\ : STD_LOGIC;
  signal \produs0_carry__2_n_3\ : STD_LOGIC;
  signal \produs0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \produs0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \produs0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \produs0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \produs0_carry__3_n_0\ : STD_LOGIC;
  signal \produs0_carry__3_n_1\ : STD_LOGIC;
  signal \produs0_carry__3_n_2\ : STD_LOGIC;
  signal \produs0_carry__3_n_3\ : STD_LOGIC;
  signal \produs0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \produs0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \produs0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \produs0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \produs0_carry__4_n_0\ : STD_LOGIC;
  signal \produs0_carry__4_n_1\ : STD_LOGIC;
  signal \produs0_carry__4_n_2\ : STD_LOGIC;
  signal \produs0_carry__4_n_3\ : STD_LOGIC;
  signal \produs0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal produs0_carry_i_1_n_0 : STD_LOGIC;
  signal produs0_carry_i_2_n_0 : STD_LOGIC;
  signal produs0_carry_i_3_n_0 : STD_LOGIC;
  signal produs0_carry_i_4_n_0 : STD_LOGIC;
  signal produs0_carry_n_0 : STD_LOGIC;
  signal produs0_carry_n_1 : STD_LOGIC;
  signal produs0_carry_n_2 : STD_LOGIC;
  signal produs0_carry_n_3 : STD_LOGIC;
  signal \produs[0]_i_1_n_0\ : STD_LOGIC;
  signal \produs[10]_i_1_n_0\ : STD_LOGIC;
  signal \produs[11]_i_1_n_0\ : STD_LOGIC;
  signal \produs[12]_i_1_n_0\ : STD_LOGIC;
  signal \produs[13]_i_1_n_0\ : STD_LOGIC;
  signal \produs[14]_i_1_n_0\ : STD_LOGIC;
  signal \produs[15]_i_1_n_0\ : STD_LOGIC;
  signal \produs[16]_i_1_n_0\ : STD_LOGIC;
  signal \produs[17]_i_1_n_0\ : STD_LOGIC;
  signal \produs[18]_i_1_n_0\ : STD_LOGIC;
  signal \produs[19]_i_1_n_0\ : STD_LOGIC;
  signal \produs[1]_i_1_n_0\ : STD_LOGIC;
  signal \produs[20]_i_1_n_0\ : STD_LOGIC;
  signal \produs[21]_i_1_n_0\ : STD_LOGIC;
  signal \produs[22]_i_1_n_0\ : STD_LOGIC;
  signal \produs[23]_i_1_n_0\ : STD_LOGIC;
  signal \produs[24]_i_1_n_0\ : STD_LOGIC;
  signal \produs[24]_i_2_n_0\ : STD_LOGIC;
  signal \produs[2]_i_1_n_0\ : STD_LOGIC;
  signal \produs[3]_i_1_n_0\ : STD_LOGIC;
  signal \produs[4]_i_1_n_0\ : STD_LOGIC;
  signal \produs[5]_i_1_n_0\ : STD_LOGIC;
  signal \produs[6]_i_1_n_0\ : STD_LOGIC;
  signal \produs[7]_i_1_n_0\ : STD_LOGIC;
  signal \produs[8]_i_1_n_0\ : STD_LOGIC;
  signal \produs[9]_i_1_n_0\ : STD_LOGIC;
  signal rezultat0 : STD_LOGIC;
  signal \NLW_produs0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_produs0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_stare[1]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \FSM_onehot_stare[2]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \FSM_onehot_stare[2]_i_2\ : label is "soft_lutpair94";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_stare_reg[0]\ : label is "asteptare:001,calcul:010,finalizare:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_stare_reg[1]\ : label is "asteptare:001,calcul:010,finalizare:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_stare_reg[2]\ : label is "asteptare:001,calcul:010,finalizare:100,";
  attribute SOFT_HLUTNM of \contor[0]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \contor[1]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \contor[2]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \contor[3]_i_2\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \multiplicand[10]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \multiplicand[11]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \multiplicand[12]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \multiplicand[13]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \multiplicand[14]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \multiplicand[15]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \multiplicand[16]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \multiplicand[17]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \multiplicand[18]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \multiplicand[19]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \multiplicand[1]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \multiplicand[20]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \multiplicand[21]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \multiplicand[22]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \multiplicand[23]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \multiplicand[24]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \multiplicand[2]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \multiplicand[3]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \multiplicand[4]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \multiplicand[5]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \multiplicand[6]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \multiplicand[7]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \multiplicand[8]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \multiplicand[9]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \multiplicator[0]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \multiplicator[1]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \multiplicator[2]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \multiplicator[3]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \multiplicator[4]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \multiplicator[5]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \multiplicator[6]_i_1\ : label is "soft_lutpair97";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of produs0_carry : label is 35;
  attribute ADDER_THRESHOLD of \produs0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \produs0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \produs0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \produs0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \produs0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \produs0_carry__5\ : label is 35;
  attribute SOFT_HLUTNM of \produs[10]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \produs[11]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \produs[12]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \produs[13]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \produs[14]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \produs[15]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \produs[16]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \produs[17]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \produs[18]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \produs[19]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \produs[1]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \produs[20]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \produs[21]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \produs[22]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \produs[23]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \produs[24]_i_2\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \produs[2]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \produs[3]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \produs[4]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \produs[5]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \produs[6]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \produs[7]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \produs[8]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \produs[9]_i_1\ : label is "soft_lutpair120";
begin
  mult_gata <= \^mult_gata\;
\FSM_onehot_stare[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0222"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[0]\,
      I1 => \multiplicand_reg[0]_0\,
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => \FSM_onehot_stare[2]_i_2_n_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[2]\,
      O => \FSM_onehot_stare[0]_i_1_n_0\
    );
\FSM_onehot_stare[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8F8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[0]\,
      I1 => \multiplicand_reg[0]_0\,
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => \FSM_onehot_stare[2]_i_2_n_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[2]\,
      O => \FSM_onehot_stare[1]_i_1_n_0\
    );
\FSM_onehot_stare[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F080"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[0]\,
      I1 => \multiplicand_reg[0]_0\,
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => \FSM_onehot_stare[2]_i_2_n_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[2]\,
      O => \FSM_onehot_stare[2]_i_1_n_0\
    );
\FSM_onehot_stare[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \contor_reg_n_0_[2]\,
      I1 => \contor_reg_n_0_[0]\,
      I2 => \contor_reg_n_0_[1]\,
      I3 => \contor_reg_n_0_[3]\,
      O => \FSM_onehot_stare[2]_i_2_n_0\
    );
\FSM_onehot_stare_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_stare[0]_i_1_n_0\,
      PRE => rst_conv,
      Q => \FSM_onehot_stare_reg_n_0_[0]\
    );
\FSM_onehot_stare_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst_conv,
      D => \FSM_onehot_stare[1]_i_1_n_0\,
      Q => \FSM_onehot_stare_reg_n_0_[1]\
    );
\FSM_onehot_stare_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst_conv,
      D => \FSM_onehot_stare[2]_i_1_n_0\,
      Q => \FSM_onehot_stare_reg_n_0_[2]\
    );
\contor[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[0]\,
      O => \contor[0]_i_1_n_0\
    );
\contor[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \contor_reg_n_0_[0]\,
      I1 => \contor_reg_n_0_[1]\,
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => contor(1)
    );
\contor[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \contor_reg_n_0_[0]\,
      I1 => \contor_reg_n_0_[1]\,
      I2 => \contor_reg_n_0_[2]\,
      I3 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => contor(2)
    );
\contor[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[0]\,
      I1 => \multiplicand_reg[0]_0\,
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => \contor[3]_i_1_n_0\
    );
\contor[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F800000"
    )
        port map (
      I0 => \contor_reg_n_0_[2]\,
      I1 => \contor_reg_n_0_[0]\,
      I2 => \contor_reg_n_0_[1]\,
      I3 => \contor_reg_n_0_[3]\,
      I4 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => contor(3)
    );
\contor_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \contor[0]_i_1_n_0\,
      Q => \contor_reg_n_0_[0]\
    );
\contor_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => contor(1),
      Q => \contor_reg_n_0_[1]\
    );
\contor_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => contor(2),
      Q => \contor_reg_n_0_[2]\
    );
\contor_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => contor(3),
      Q => \contor_reg_n_0_[3]\
    );
gata_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7F0"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[0]\,
      I1 => \multiplicand_reg[0]_0\,
      I2 => \FSM_onehot_stare_reg_n_0_[2]\,
      I3 => \^mult_gata\,
      O => gata_i_1_n_0
    );
gata_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst_conv,
      D => gata_i_1_n_0,
      Q => \^mult_gata\
    );
\multiplicand[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[0]\,
      I1 => \multiplicand_reg[11]_0\(0),
      O => \multiplicand[0]_i_1_n_0\
    );
\multiplicand[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in7(10),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \multiplicand_reg[11]_0\(10),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => \multiplicand[10]_i_1_n_0\
    );
\multiplicand[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in7(11),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \multiplicand_reg[11]_0\(11),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => \multiplicand[11]_i_1_n_0\
    );
\multiplicand[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in7(12),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => \multiplicand[12]_i_1_n_0\
    );
\multiplicand[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in7(13),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => \multiplicand[13]_i_1_n_0\
    );
\multiplicand[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in7(14),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => \multiplicand[14]_i_1_n_0\
    );
\multiplicand[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in7(15),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => \multiplicand[15]_i_1_n_0\
    );
\multiplicand[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in7(16),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => \multiplicand[16]_i_1_n_0\
    );
\multiplicand[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in7(17),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => \multiplicand[17]_i_1_n_0\
    );
\multiplicand[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in7(18),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => \multiplicand[18]_i_1_n_0\
    );
\multiplicand[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in7(19),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => \multiplicand[19]_i_1_n_0\
    );
\multiplicand[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in7(1),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \FSM_onehot_stare_reg_n_0_[0]\,
      I3 => \multiplicand_reg[11]_0\(1),
      O => \multiplicand[1]_i_1_n_0\
    );
\multiplicand[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in7(20),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => \multiplicand[20]_i_1_n_0\
    );
\multiplicand[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in7(21),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => \multiplicand[21]_i_1_n_0\
    );
\multiplicand[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in7(22),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => \multiplicand[22]_i_1_n_0\
    );
\multiplicand[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in7(23),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => \multiplicand[23]_i_1_n_0\
    );
\multiplicand[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in7(24),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => \multiplicand[24]_i_1_n_0\
    );
\multiplicand[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in7(2),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \FSM_onehot_stare_reg_n_0_[0]\,
      I3 => \multiplicand_reg[11]_0\(2),
      O => \multiplicand[2]_i_1_n_0\
    );
\multiplicand[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in7(3),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \FSM_onehot_stare_reg_n_0_[0]\,
      I3 => \multiplicand_reg[11]_0\(3),
      O => \multiplicand[3]_i_1_n_0\
    );
\multiplicand[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in7(4),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \FSM_onehot_stare_reg_n_0_[0]\,
      I3 => \multiplicand_reg[11]_0\(4),
      O => \multiplicand[4]_i_1_n_0\
    );
\multiplicand[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in7(5),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \multiplicand_reg[11]_0\(5),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => \multiplicand[5]_i_1_n_0\
    );
\multiplicand[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in7(6),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \multiplicand_reg[11]_0\(6),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => \multiplicand[6]_i_1_n_0\
    );
\multiplicand[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in7(7),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \multiplicand_reg[11]_0\(7),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => \multiplicand[7]_i_1_n_0\
    );
\multiplicand[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in7(8),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \multiplicand_reg[11]_0\(8),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => \multiplicand[8]_i_1_n_0\
    );
\multiplicand[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in7(9),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \multiplicand_reg[11]_0\(9),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => \multiplicand[9]_i_1_n_0\
    );
\multiplicand_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[0]_i_1_n_0\,
      Q => in7(1)
    );
\multiplicand_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[10]_i_1_n_0\,
      Q => in7(11)
    );
\multiplicand_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[11]_i_1_n_0\,
      Q => in7(12)
    );
\multiplicand_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[12]_i_1_n_0\,
      Q => in7(13)
    );
\multiplicand_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[13]_i_1_n_0\,
      Q => in7(14)
    );
\multiplicand_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[14]_i_1_n_0\,
      Q => in7(15)
    );
\multiplicand_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[15]_i_1_n_0\,
      Q => in7(16)
    );
\multiplicand_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[16]_i_1_n_0\,
      Q => in7(17)
    );
\multiplicand_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[17]_i_1_n_0\,
      Q => in7(18)
    );
\multiplicand_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[18]_i_1_n_0\,
      Q => in7(19)
    );
\multiplicand_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[19]_i_1_n_0\,
      Q => in7(20)
    );
\multiplicand_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[1]_i_1_n_0\,
      Q => in7(2)
    );
\multiplicand_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[20]_i_1_n_0\,
      Q => in7(21)
    );
\multiplicand_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[21]_i_1_n_0\,
      Q => in7(22)
    );
\multiplicand_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[22]_i_1_n_0\,
      Q => in7(23)
    );
\multiplicand_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[23]_i_1_n_0\,
      Q => in7(24)
    );
\multiplicand_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[24]_i_1_n_0\,
      Q => \multiplicand_reg_n_0_[24]\
    );
\multiplicand_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[2]_i_1_n_0\,
      Q => in7(3)
    );
\multiplicand_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[3]_i_1_n_0\,
      Q => in7(4)
    );
\multiplicand_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[4]_i_1_n_0\,
      Q => in7(5)
    );
\multiplicand_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[5]_i_1_n_0\,
      Q => in7(6)
    );
\multiplicand_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[6]_i_1_n_0\,
      Q => in7(7)
    );
\multiplicand_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[7]_i_1_n_0\,
      Q => in7(8)
    );
\multiplicand_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[8]_i_1_n_0\,
      Q => in7(9)
    );
\multiplicand_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicand[9]_i_1_n_0\,
      Q => in7(10)
    );
\multiplicator[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => multiplicator(1),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => \multiplicator[0]_i_1_n_0\
    );
\multiplicator[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => multiplicator(2),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => \multiplicator[1]_i_1_n_0\
    );
\multiplicator[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => multiplicator(3),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => \multiplicator[2]_i_1_n_0\
    );
\multiplicator[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => multiplicator(4),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => \multiplicator[3]_i_1_n_0\
    );
\multiplicator[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => multiplicator(5),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => \multiplicator[4]_i_1_n_0\
    );
\multiplicator[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => multiplicator(6),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => \multiplicator[5]_i_1_n_0\
    );
\multiplicator[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => multiplicator(7),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => \multiplicator[6]_i_1_n_0\
    );
\multiplicator_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicator[0]_i_1_n_0\,
      Q => \multiplicator_reg_n_0_[0]\
    );
\multiplicator_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicator[1]_i_1_n_0\,
      Q => multiplicator(1)
    );
\multiplicator_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicator[2]_i_1_n_0\,
      Q => multiplicator(2)
    );
\multiplicator_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicator[3]_i_1_n_0\,
      Q => multiplicator(3)
    );
\multiplicator_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicator[4]_i_1_n_0\,
      Q => multiplicator(4)
    );
\multiplicator_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicator[5]_i_1_n_0\,
      Q => multiplicator(5)
    );
\multiplicator_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \multiplicator[6]_i_1_n_0\,
      Q => multiplicator(6)
    );
\multiplicator_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      CLR => rst_conv,
      D => \FSM_onehot_stare_reg_n_0_[0]\,
      Q => multiplicator(7)
    );
produs0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => produs0_carry_n_0,
      CO(2) => produs0_carry_n_1,
      CO(1) => produs0_carry_n_2,
      CO(0) => produs0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => produs(3 downto 0),
      O(3 downto 0) => in4(3 downto 0),
      S(3) => produs0_carry_i_1_n_0,
      S(2) => produs0_carry_i_2_n_0,
      S(1) => produs0_carry_i_3_n_0,
      S(0) => produs0_carry_i_4_n_0
    );
\produs0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => produs0_carry_n_0,
      CO(3) => \produs0_carry__0_n_0\,
      CO(2) => \produs0_carry__0_n_1\,
      CO(1) => \produs0_carry__0_n_2\,
      CO(0) => \produs0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => produs(7 downto 4),
      O(3 downto 0) => in4(7 downto 4),
      S(3) => \produs0_carry__0_i_1_n_0\,
      S(2) => \produs0_carry__0_i_2_n_0\,
      S(1) => \produs0_carry__0_i_3_n_0\,
      S(0) => \produs0_carry__0_i_4_n_0\
    );
\produs0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(7),
      I1 => in7(8),
      O => \produs0_carry__0_i_1_n_0\
    );
\produs0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(6),
      I1 => in7(7),
      O => \produs0_carry__0_i_2_n_0\
    );
\produs0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(5),
      I1 => in7(6),
      O => \produs0_carry__0_i_3_n_0\
    );
\produs0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(4),
      I1 => in7(5),
      O => \produs0_carry__0_i_4_n_0\
    );
\produs0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \produs0_carry__0_n_0\,
      CO(3) => \produs0_carry__1_n_0\,
      CO(2) => \produs0_carry__1_n_1\,
      CO(1) => \produs0_carry__1_n_2\,
      CO(0) => \produs0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => produs(11 downto 8),
      O(3 downto 0) => in4(11 downto 8),
      S(3) => \produs0_carry__1_i_1_n_0\,
      S(2) => \produs0_carry__1_i_2_n_0\,
      S(1) => \produs0_carry__1_i_3_n_0\,
      S(0) => \produs0_carry__1_i_4_n_0\
    );
\produs0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(11),
      I1 => in7(12),
      O => \produs0_carry__1_i_1_n_0\
    );
\produs0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(10),
      I1 => in7(11),
      O => \produs0_carry__1_i_2_n_0\
    );
\produs0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(9),
      I1 => in7(10),
      O => \produs0_carry__1_i_3_n_0\
    );
\produs0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(8),
      I1 => in7(9),
      O => \produs0_carry__1_i_4_n_0\
    );
\produs0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \produs0_carry__1_n_0\,
      CO(3) => \produs0_carry__2_n_0\,
      CO(2) => \produs0_carry__2_n_1\,
      CO(1) => \produs0_carry__2_n_2\,
      CO(0) => \produs0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => produs(15 downto 12),
      O(3 downto 0) => in4(15 downto 12),
      S(3) => \produs0_carry__2_i_1_n_0\,
      S(2) => \produs0_carry__2_i_2_n_0\,
      S(1) => \produs0_carry__2_i_3_n_0\,
      S(0) => \produs0_carry__2_i_4_n_0\
    );
\produs0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(15),
      I1 => in7(16),
      O => \produs0_carry__2_i_1_n_0\
    );
\produs0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(14),
      I1 => in7(15),
      O => \produs0_carry__2_i_2_n_0\
    );
\produs0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(13),
      I1 => in7(14),
      O => \produs0_carry__2_i_3_n_0\
    );
\produs0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(12),
      I1 => in7(13),
      O => \produs0_carry__2_i_4_n_0\
    );
\produs0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \produs0_carry__2_n_0\,
      CO(3) => \produs0_carry__3_n_0\,
      CO(2) => \produs0_carry__3_n_1\,
      CO(1) => \produs0_carry__3_n_2\,
      CO(0) => \produs0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => produs(19 downto 16),
      O(3 downto 0) => in4(19 downto 16),
      S(3) => \produs0_carry__3_i_1_n_0\,
      S(2) => \produs0_carry__3_i_2_n_0\,
      S(1) => \produs0_carry__3_i_3_n_0\,
      S(0) => \produs0_carry__3_i_4_n_0\
    );
\produs0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(19),
      I1 => in7(20),
      O => \produs0_carry__3_i_1_n_0\
    );
\produs0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(18),
      I1 => in7(19),
      O => \produs0_carry__3_i_2_n_0\
    );
\produs0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(17),
      I1 => in7(18),
      O => \produs0_carry__3_i_3_n_0\
    );
\produs0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(16),
      I1 => in7(17),
      O => \produs0_carry__3_i_4_n_0\
    );
\produs0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \produs0_carry__3_n_0\,
      CO(3) => \produs0_carry__4_n_0\,
      CO(2) => \produs0_carry__4_n_1\,
      CO(1) => \produs0_carry__4_n_2\,
      CO(0) => \produs0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => produs(23 downto 20),
      O(3 downto 0) => in4(23 downto 20),
      S(3) => \produs0_carry__4_i_1_n_0\,
      S(2) => \produs0_carry__4_i_2_n_0\,
      S(1) => \produs0_carry__4_i_3_n_0\,
      S(0) => \produs0_carry__4_i_4_n_0\
    );
\produs0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(23),
      I1 => in7(24),
      O => \produs0_carry__4_i_1_n_0\
    );
\produs0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(22),
      I1 => in7(23),
      O => \produs0_carry__4_i_2_n_0\
    );
\produs0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(21),
      I1 => in7(22),
      O => \produs0_carry__4_i_3_n_0\
    );
\produs0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(20),
      I1 => in7(21),
      O => \produs0_carry__4_i_4_n_0\
    );
\produs0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \produs0_carry__4_n_0\,
      CO(3 downto 0) => \NLW_produs0_carry__5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_produs0_carry__5_O_UNCONNECTED\(3 downto 1),
      O(0) => in4(24),
      S(3 downto 1) => B"000",
      S(0) => \produs0_carry__5_i_1_n_0\
    );
\produs0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multiplicand_reg_n_0_[24]\,
      I1 => produs(24),
      O => \produs0_carry__5_i_1_n_0\
    );
produs0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(3),
      I1 => in7(4),
      O => produs0_carry_i_1_n_0
    );
produs0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(2),
      I1 => in7(3),
      O => produs0_carry_i_2_n_0
    );
produs0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(1),
      I1 => in7(2),
      O => produs0_carry_i_3_n_0
    );
produs0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => produs(0),
      I1 => in7(1),
      O => produs0_carry_i_4_n_0
    );
\produs[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(0),
      O => \produs[0]_i_1_n_0\
    );
\produs[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(10),
      O => \produs[10]_i_1_n_0\
    );
\produs[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(11),
      O => \produs[11]_i_1_n_0\
    );
\produs[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(12),
      O => \produs[12]_i_1_n_0\
    );
\produs[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(13),
      O => \produs[13]_i_1_n_0\
    );
\produs[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(14),
      O => \produs[14]_i_1_n_0\
    );
\produs[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(15),
      O => \produs[15]_i_1_n_0\
    );
\produs[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(16),
      O => \produs[16]_i_1_n_0\
    );
\produs[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(17),
      O => \produs[17]_i_1_n_0\
    );
\produs[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(18),
      O => \produs[18]_i_1_n_0\
    );
\produs[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(19),
      O => \produs[19]_i_1_n_0\
    );
\produs[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(1),
      O => \produs[1]_i_1_n_0\
    );
\produs[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(20),
      O => \produs[20]_i_1_n_0\
    );
\produs[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(21),
      O => \produs[21]_i_1_n_0\
    );
\produs[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(22),
      O => \produs[22]_i_1_n_0\
    );
\produs[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(23),
      O => \produs[23]_i_1_n_0\
    );
\produs[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => \multiplicator_reg_n_0_[0]\,
      I2 => \multiplicand_reg[0]_0\,
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => \produs[24]_i_1_n_0\
    );
\produs[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(24),
      O => \produs[24]_i_2_n_0\
    );
\produs[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(2),
      O => \produs[2]_i_1_n_0\
    );
\produs[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(3),
      O => \produs[3]_i_1_n_0\
    );
\produs[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(4),
      O => \produs[4]_i_1_n_0\
    );
\produs[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(5),
      O => \produs[5]_i_1_n_0\
    );
\produs[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(6),
      O => \produs[6]_i_1_n_0\
    );
\produs[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(7),
      O => \produs[7]_i_1_n_0\
    );
\produs[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(8),
      O => \produs[8]_i_1_n_0\
    );
\produs[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in4(9),
      O => \produs[9]_i_1_n_0\
    );
\produs_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[0]_i_1_n_0\,
      Q => produs(0)
    );
\produs_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[10]_i_1_n_0\,
      Q => produs(10)
    );
\produs_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[11]_i_1_n_0\,
      Q => produs(11)
    );
\produs_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[12]_i_1_n_0\,
      Q => produs(12)
    );
\produs_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[13]_i_1_n_0\,
      Q => produs(13)
    );
\produs_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[14]_i_1_n_0\,
      Q => produs(14)
    );
\produs_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[15]_i_1_n_0\,
      Q => produs(15)
    );
\produs_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[16]_i_1_n_0\,
      Q => produs(16)
    );
\produs_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[17]_i_1_n_0\,
      Q => produs(17)
    );
\produs_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[18]_i_1_n_0\,
      Q => produs(18)
    );
\produs_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[19]_i_1_n_0\,
      Q => produs(19)
    );
\produs_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[1]_i_1_n_0\,
      Q => produs(1)
    );
\produs_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[20]_i_1_n_0\,
      Q => produs(20)
    );
\produs_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[21]_i_1_n_0\,
      Q => produs(21)
    );
\produs_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[22]_i_1_n_0\,
      Q => produs(22)
    );
\produs_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[23]_i_1_n_0\,
      Q => produs(23)
    );
\produs_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[24]_i_2_n_0\,
      Q => produs(24)
    );
\produs_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[2]_i_1_n_0\,
      Q => produs(2)
    );
\produs_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[3]_i_1_n_0\,
      Q => produs(3)
    );
\produs_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[4]_i_1_n_0\,
      Q => produs(4)
    );
\produs_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[5]_i_1_n_0\,
      Q => produs(5)
    );
\produs_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[6]_i_1_n_0\,
      Q => produs(6)
    );
\produs_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[7]_i_1_n_0\,
      Q => produs(7)
    );
\produs_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[8]_i_1_n_0\,
      Q => produs(8)
    );
\produs_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \produs[24]_i_1_n_0\,
      CLR => rst_conv,
      D => \produs[9]_i_1_n_0\,
      Q => produs(9)
    );
\rezultat[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[2]\,
      I1 => rst_conv,
      O => rezultat0
    );
\rezultat_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(0),
      Q => Q(0),
      R => '0'
    );
\rezultat_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(10),
      Q => Q(10),
      R => '0'
    );
\rezultat_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(11),
      Q => Q(11),
      R => '0'
    );
\rezultat_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(12),
      Q => Q(12),
      R => '0'
    );
\rezultat_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(13),
      Q => Q(13),
      R => '0'
    );
\rezultat_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(14),
      Q => Q(14),
      R => '0'
    );
\rezultat_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(15),
      Q => Q(15),
      R => '0'
    );
\rezultat_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(16),
      Q => Q(16),
      R => '0'
    );
\rezultat_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(17),
      Q => Q(17),
      R => '0'
    );
\rezultat_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(18),
      Q => Q(18),
      R => '0'
    );
\rezultat_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(19),
      Q => Q(19),
      R => '0'
    );
\rezultat_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(1),
      Q => Q(1),
      R => '0'
    );
\rezultat_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(20),
      Q => Q(20),
      R => '0'
    );
\rezultat_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(21),
      Q => Q(21),
      R => '0'
    );
\rezultat_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(22),
      Q => Q(22),
      R => '0'
    );
\rezultat_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(23),
      Q => Q(23),
      R => '0'
    );
\rezultat_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(24),
      Q => Q(24),
      R => '0'
    );
\rezultat_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(2),
      Q => Q(2),
      R => '0'
    );
\rezultat_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(3),
      Q => Q(3),
      R => '0'
    );
\rezultat_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(4),
      Q => Q(4),
      R => '0'
    );
\rezultat_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(5),
      Q => Q(5),
      R => '0'
    );
\rezultat_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(6),
      Q => Q(6),
      R => '0'
    );
\rezultat_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(7),
      Q => Q(7),
      R => '0'
    );
\rezultat_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(8),
      Q => Q(8),
      R => '0'
    );
\rezultat_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rezultat0,
      D => produs(9),
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pid_controller_0_0_vm_add_sub is
  port (
    add_done : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 26 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    start_pid_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    mul_start : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    done_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[0]_1\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    done_reg_1 : out STD_LOGIC;
    UNCONN_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    fp_result : inout STD_LOGIC_VECTOR ( 26 downto 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rst_fp : in STD_LOGIC;
    B_sgn_reg_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \fp_A_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \error_n_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_3\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_4\ : in STD_LOGIC;
    \fp_A_reg[25]\ : in STD_LOGIC;
    \fp_A_reg[26]\ : in STD_LOGIC;
    \fp_B_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \fp_B_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \fp_B_reg[31]_1\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \fp_B_reg[31]_2\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \fp_B_reg[31]_3\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \fp_B_reg[31]_4\ : in STD_LOGIC;
    \fp_B_reg[30]\ : in STD_LOGIC;
    \fp_B_reg[29]\ : in STD_LOGIC;
    \fp_B_reg[28]\ : in STD_LOGIC;
    \fp_B_reg[27]\ : in STD_LOGIC;
    \fp_B_reg[26]\ : in STD_LOGIC;
    \fp_B_reg[25]\ : in STD_LOGIC;
    \fp_B_reg[24]\ : in STD_LOGIC;
    \fp_B_reg[23]\ : in STD_LOGIC;
    \fp_B_reg[22]\ : in STD_LOGIC;
    \fp_B_reg[21]\ : in STD_LOGIC;
    \fp_B_reg[20]\ : in STD_LOGIC;
    \fp_B_reg[19]\ : in STD_LOGIC;
    \fp_B_reg[18]\ : in STD_LOGIC;
    \fp_B_reg[17]\ : in STD_LOGIC;
    \fp_B_reg[16]\ : in STD_LOGIC;
    \fp_B_reg[15]\ : in STD_LOGIC;
    \fp_B_reg[14]\ : in STD_LOGIC;
    \fp_B_reg[13]\ : in STD_LOGIC;
    \fp_B_reg[12]\ : in STD_LOGIC;
    \fp_B_reg[11]\ : in STD_LOGIC;
    \fp_B_reg[10]\ : in STD_LOGIC;
    \fp_B_reg[9]\ : in STD_LOGIC;
    \fp_B_reg[8]\ : in STD_LOGIC;
    \fp_B_reg[7]\ : in STD_LOGIC;
    \fp_B_reg[6]\ : in STD_LOGIC;
    \fp_B_reg[5]\ : in STD_LOGIC;
    \fp_B_reg[4]\ : in STD_LOGIC;
    \fp_B_reg[3]\ : in STD_LOGIC;
    \fp_B_reg[2]\ : in STD_LOGIC;
    \fp_B_reg[1]\ : in STD_LOGIC;
    \fp_B_reg[0]\ : in STD_LOGIC;
    \fp_A_reg[31]_0\ : in STD_LOGIC_VECTOR ( 24 downto 0 );
    mul_done : in STD_LOGIC;
    \fp_A_reg[31]_1\ : in STD_LOGIC_VECTOR ( 24 downto 0 );
    B_sgn_reg_1 : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pid_controller_0_0_vm_add_sub : entity is "vm_add_sub";
end design_1_pid_controller_0_0_vm_add_sub;

architecture STRUCTURE of design_1_pid_controller_0_0_vm_add_sub is
  signal A_exp_s : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal A_exp_s0 : STD_LOGIC;
  signal A_mantissa_ext : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal A_mantissa_ext0 : STD_LOGIC;
  signal \A_mantissa_ext[0]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[0]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[0]_i_4_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[10]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[10]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[10]_i_4_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[11]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[11]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[11]_i_4_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[12]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[12]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[12]_i_4_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[13]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[13]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[13]_i_4_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[14]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[14]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[14]_i_4_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[15]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[15]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[16]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[16]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[17]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[17]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[18]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[18]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[19]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[19]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[1]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[1]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[1]_i_4_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[20]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[20]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[21]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[21]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[22]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[22]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[23]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[24]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[24]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[25]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[26]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[26]_i_4_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[2]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[2]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[2]_i_4_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[3]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[3]_i_4_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[3]_i_5_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[4]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[4]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[5]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[5]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[6]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[6]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[6]_i_4_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[7]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[7]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[7]_i_4_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[8]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[8]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[8]_i_4_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[9]_i_2_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[9]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext[9]_i_4_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[0]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[10]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[11]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[12]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[13]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[14]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[15]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[16]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[17]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[18]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[19]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[1]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[20]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[21]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[22]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[23]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[24]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[25]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[26]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[2]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[3]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[4]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[5]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[6]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[7]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[8]\ : STD_LOGIC;
  signal \A_mantissa_ext_reg_n_0_[9]\ : STD_LOGIC;
  signal \A_sgn__0\ : STD_LOGIC;
  signal B_exp_s : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal B_mantissa_ext : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal B_mantissa_ext0 : STD_LOGIC;
  signal \B_mantissa_ext[0]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[0]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[0]_i_4_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[10]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[10]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[10]_i_4_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[11]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[11]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[11]_i_4_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[12]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[12]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[12]_i_4_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[13]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[13]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[13]_i_4_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[14]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[14]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[14]_i_4_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[15]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[15]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[16]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[16]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[17]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[17]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[18]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[18]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[19]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[19]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[1]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[1]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[1]_i_4_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[20]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[20]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[21]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[21]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[22]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[22]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[23]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[24]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[24]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[25]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[25]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[25]_i_4_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[26]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[26]_i_4_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[2]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[2]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[2]_i_4_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[3]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[3]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[3]_i_4_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[4]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[4]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[5]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[5]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[6]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[6]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[6]_i_4_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[7]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[7]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[7]_i_4_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[8]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[8]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[8]_i_4_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[9]_i_2_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[9]_i_3_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext[9]_i_4_n_0\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[0]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[10]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[11]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[12]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[13]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[14]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[15]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[16]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[17]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[18]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[19]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[1]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[20]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[21]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[22]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[23]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[24]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[25]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[26]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[2]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[3]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[4]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[5]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[6]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[7]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[8]\ : STD_LOGIC;
  signal \B_mantissa_ext_reg_n_0_[9]\ : STD_LOGIC;
  signal B_sgn : STD_LOGIC;
  signal B_sgn_i_1_n_0 : STD_LOGIC;
  signal \Control_Unit.shift_amount[0]_i_2_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[0]_i_3_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[0]_i_4_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[0]_i_5_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[0]_i_6_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[0]_i_7_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[0]_i_8_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[0]_i_9_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[1]_i_10_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[1]_i_2_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[1]_i_3_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[1]_i_4_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[1]_i_5_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[1]_i_6_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[1]_i_7_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[1]_i_8_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[1]_i_9_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[2]_i_2_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[2]_i_3_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[2]_i_4_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[2]_i_5_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[2]_i_6_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[2]_i_7_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[3]_i_2_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[3]_i_3_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[3]_i_4_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[3]_i_5_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[3]_i_6_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[3]_i_7_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[4]_i_10_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[4]_i_11_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[4]_i_12_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[4]_i_13_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[4]_i_14_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[4]_i_15_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[4]_i_3_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[4]_i_4_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[4]_i_5_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[4]_i_6_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[4]_i_7_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[4]_i_8_n_0\ : STD_LOGIC;
  signal \Control_Unit.shift_amount[4]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^add_done\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \done_i_1__0_n_0\ : STD_LOGIC;
  signal \final_exp_s0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \final_exp_s0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \final_exp_s0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \final_exp_s0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \final_exp_s0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \final_exp_s0_carry__0_n_0\ : STD_LOGIC;
  signal \final_exp_s0_carry__0_n_1\ : STD_LOGIC;
  signal \final_exp_s0_carry__0_n_2\ : STD_LOGIC;
  signal \final_exp_s0_carry__0_n_3\ : STD_LOGIC;
  signal \final_exp_s0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal final_exp_s0_carry_i_2_n_0 : STD_LOGIC;
  signal final_exp_s0_carry_i_3_n_0 : STD_LOGIC;
  signal final_exp_s0_carry_i_4_n_0 : STD_LOGIC;
  signal final_exp_s0_carry_i_5_n_0 : STD_LOGIC;
  signal final_exp_s0_carry_n_0 : STD_LOGIC;
  signal final_exp_s0_carry_n_1 : STD_LOGIC;
  signal final_exp_s0_carry_n_2 : STD_LOGIC;
  signal final_exp_s0_carry_n_3 : STD_LOGIC;
  signal \final_exp_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \final_exp_s[1]_i_1_n_0\ : STD_LOGIC;
  signal \final_exp_s[2]_i_1_n_0\ : STD_LOGIC;
  signal \final_exp_s[3]_i_1_n_0\ : STD_LOGIC;
  signal \final_exp_s[4]_i_1_n_0\ : STD_LOGIC;
  signal \final_exp_s[5]_i_1_n_0\ : STD_LOGIC;
  signal \final_exp_s[6]_i_1_n_0\ : STD_LOGIC;
  signal \final_exp_s[7]_i_1_n_0\ : STD_LOGIC;
  signal \final_exp_s[8]_i_1_n_0\ : STD_LOGIC;
  signal \final_exp_s[8]_i_2_n_0\ : STD_LOGIC;
  signal \final_exp_s[8]_i_3_n_0\ : STD_LOGIC;
  signal \final_exp_s[8]_i_4_n_0\ : STD_LOGIC;
  signal \final_exp_s[8]_i_5_n_0\ : STD_LOGIC;
  signal \final_exp_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \final_exp_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \final_exp_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \final_exp_s_reg_n_0_[3]\ : STD_LOGIC;
  signal \final_exp_s_reg_n_0_[4]\ : STD_LOGIC;
  signal \final_exp_s_reg_n_0_[5]\ : STD_LOGIC;
  signal \final_exp_s_reg_n_0_[6]\ : STD_LOGIC;
  signal \final_exp_s_reg_n_0_[7]\ : STD_LOGIC;
  signal \final_exp_s_reg_n_0_[8]\ : STD_LOGIC;
  signal final_mantissa : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \final_mantissa[0]_i_10_n_0\ : STD_LOGIC;
  signal \final_mantissa[0]_i_11_n_0\ : STD_LOGIC;
  signal \final_mantissa[0]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[0]_i_8_n_0\ : STD_LOGIC;
  signal \final_mantissa[0]_i_9_n_0\ : STD_LOGIC;
  signal \final_mantissa[10]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[10]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[10]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[11]_i_10_n_0\ : STD_LOGIC;
  signal \final_mantissa[11]_i_11_n_0\ : STD_LOGIC;
  signal \final_mantissa[11]_i_12_n_0\ : STD_LOGIC;
  signal \final_mantissa[11]_i_13_n_0\ : STD_LOGIC;
  signal \final_mantissa[11]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[11]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[11]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[12]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[12]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[12]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[13]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[13]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[13]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[14]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[14]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[14]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[15]_i_11_n_0\ : STD_LOGIC;
  signal \final_mantissa[15]_i_12_n_0\ : STD_LOGIC;
  signal \final_mantissa[15]_i_13_n_0\ : STD_LOGIC;
  signal \final_mantissa[15]_i_14_n_0\ : STD_LOGIC;
  signal \final_mantissa[15]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[15]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[15]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[15]_i_6_n_0\ : STD_LOGIC;
  signal \final_mantissa[16]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[16]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[16]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[16]_i_5_n_0\ : STD_LOGIC;
  signal \final_mantissa[17]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[17]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[17]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[18]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[18]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[18]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[19]_i_12_n_0\ : STD_LOGIC;
  signal \final_mantissa[19]_i_13_n_0\ : STD_LOGIC;
  signal \final_mantissa[19]_i_14_n_0\ : STD_LOGIC;
  signal \final_mantissa[19]_i_15_n_0\ : STD_LOGIC;
  signal \final_mantissa[19]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[19]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[19]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[19]_i_5_n_0\ : STD_LOGIC;
  signal \final_mantissa[19]_i_7_n_0\ : STD_LOGIC;
  signal \final_mantissa[1]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[1]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[1]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[20]_i_10_n_0\ : STD_LOGIC;
  signal \final_mantissa[20]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[20]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[20]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[20]_i_5_n_0\ : STD_LOGIC;
  signal \final_mantissa[20]_i_6_n_0\ : STD_LOGIC;
  signal \final_mantissa[20]_i_7_n_0\ : STD_LOGIC;
  signal \final_mantissa[20]_i_8_n_0\ : STD_LOGIC;
  signal \final_mantissa[20]_i_9_n_0\ : STD_LOGIC;
  signal \final_mantissa[21]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[21]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[21]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[21]_i_5_n_0\ : STD_LOGIC;
  signal \final_mantissa[22]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[22]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[22]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[22]_i_5_n_0\ : STD_LOGIC;
  signal \final_mantissa[22]_i_6_n_0\ : STD_LOGIC;
  signal \final_mantissa[22]_i_7_n_0\ : STD_LOGIC;
  signal \final_mantissa[22]_i_8_n_0\ : STD_LOGIC;
  signal \final_mantissa[23]_i_11_n_0\ : STD_LOGIC;
  signal \final_mantissa[23]_i_12_n_0\ : STD_LOGIC;
  signal \final_mantissa[23]_i_13_n_0\ : STD_LOGIC;
  signal \final_mantissa[23]_i_14_n_0\ : STD_LOGIC;
  signal \final_mantissa[23]_i_15_n_0\ : STD_LOGIC;
  signal \final_mantissa[23]_i_16_n_0\ : STD_LOGIC;
  signal \final_mantissa[23]_i_17_n_0\ : STD_LOGIC;
  signal \final_mantissa[23]_i_18_n_0\ : STD_LOGIC;
  signal \final_mantissa[23]_i_19_n_0\ : STD_LOGIC;
  signal \final_mantissa[23]_i_20_n_0\ : STD_LOGIC;
  signal \final_mantissa[23]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[23]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[23]_i_5_n_0\ : STD_LOGIC;
  signal \final_mantissa[23]_i_6_n_0\ : STD_LOGIC;
  signal \final_mantissa[24]_i_10_n_0\ : STD_LOGIC;
  signal \final_mantissa[24]_i_11_n_0\ : STD_LOGIC;
  signal \final_mantissa[24]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[24]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[24]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[24]_i_5_n_0\ : STD_LOGIC;
  signal \final_mantissa[24]_i_6_n_0\ : STD_LOGIC;
  signal \final_mantissa[24]_i_7_n_0\ : STD_LOGIC;
  signal \final_mantissa[24]_i_8_n_0\ : STD_LOGIC;
  signal \final_mantissa[24]_i_9_n_0\ : STD_LOGIC;
  signal \final_mantissa[25]_i_10_n_0\ : STD_LOGIC;
  signal \final_mantissa[25]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[25]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[25]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[25]_i_5_n_0\ : STD_LOGIC;
  signal \final_mantissa[25]_i_6_n_0\ : STD_LOGIC;
  signal \final_mantissa[25]_i_7_n_0\ : STD_LOGIC;
  signal \final_mantissa[25]_i_8_n_0\ : STD_LOGIC;
  signal \final_mantissa[25]_i_9_n_0\ : STD_LOGIC;
  signal \final_mantissa[26]_i_10_n_0\ : STD_LOGIC;
  signal \final_mantissa[26]_i_11_n_0\ : STD_LOGIC;
  signal \final_mantissa[26]_i_12_n_0\ : STD_LOGIC;
  signal \final_mantissa[26]_i_13_n_0\ : STD_LOGIC;
  signal \final_mantissa[26]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[26]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[26]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[26]_i_5_n_0\ : STD_LOGIC;
  signal \final_mantissa[26]_i_6_n_0\ : STD_LOGIC;
  signal \final_mantissa[26]_i_7_n_0\ : STD_LOGIC;
  signal \final_mantissa[26]_i_8_n_0\ : STD_LOGIC;
  signal \final_mantissa[26]_i_9_n_0\ : STD_LOGIC;
  signal \final_mantissa[27]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[27]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[27]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[27]_i_5_n_0\ : STD_LOGIC;
  signal \final_mantissa[27]_i_6_n_0\ : STD_LOGIC;
  signal \final_mantissa[27]_i_7_n_0\ : STD_LOGIC;
  signal \final_mantissa[28]_i_10_n_0\ : STD_LOGIC;
  signal \final_mantissa[28]_i_11_n_0\ : STD_LOGIC;
  signal \final_mantissa[28]_i_12_n_0\ : STD_LOGIC;
  signal \final_mantissa[28]_i_13_n_0\ : STD_LOGIC;
  signal \final_mantissa[28]_i_17_n_0\ : STD_LOGIC;
  signal \final_mantissa[28]_i_18_n_0\ : STD_LOGIC;
  signal \final_mantissa[28]_i_19_n_0\ : STD_LOGIC;
  signal \final_mantissa[28]_i_1_n_0\ : STD_LOGIC;
  signal \final_mantissa[28]_i_20_n_0\ : STD_LOGIC;
  signal \final_mantissa[28]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[28]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[28]_i_5_n_0\ : STD_LOGIC;
  signal \final_mantissa[28]_i_7_n_0\ : STD_LOGIC;
  signal \final_mantissa[28]_i_9_n_0\ : STD_LOGIC;
  signal \final_mantissa[2]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[2]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[2]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[3]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[3]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[4]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[4]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[4]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[4]_i_5_n_0\ : STD_LOGIC;
  signal \final_mantissa[4]_i_6_n_0\ : STD_LOGIC;
  signal \final_mantissa[5]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[5]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[5]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[6]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[6]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[6]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[7]_i_10_n_0\ : STD_LOGIC;
  signal \final_mantissa[7]_i_11_n_0\ : STD_LOGIC;
  signal \final_mantissa[7]_i_12_n_0\ : STD_LOGIC;
  signal \final_mantissa[7]_i_13_n_0\ : STD_LOGIC;
  signal \final_mantissa[7]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[7]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[7]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[8]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[8]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[8]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa[8]_i_5_n_0\ : STD_LOGIC;
  signal \final_mantissa[9]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa[9]_i_3_n_0\ : STD_LOGIC;
  signal \final_mantissa[9]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \final_mantissa_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \final_mantissa_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \final_mantissa_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \final_mantissa_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \final_mantissa_reg[11]_i_5_n_1\ : STD_LOGIC;
  signal \final_mantissa_reg[11]_i_5_n_2\ : STD_LOGIC;
  signal \final_mantissa_reg[11]_i_5_n_3\ : STD_LOGIC;
  signal \final_mantissa_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \final_mantissa_reg[15]_i_5_n_1\ : STD_LOGIC;
  signal \final_mantissa_reg[15]_i_5_n_2\ : STD_LOGIC;
  signal \final_mantissa_reg[15]_i_5_n_3\ : STD_LOGIC;
  signal \final_mantissa_reg[19]_i_6_n_0\ : STD_LOGIC;
  signal \final_mantissa_reg[19]_i_6_n_1\ : STD_LOGIC;
  signal \final_mantissa_reg[19]_i_6_n_2\ : STD_LOGIC;
  signal \final_mantissa_reg[19]_i_6_n_3\ : STD_LOGIC;
  signal \final_mantissa_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \final_mantissa_reg[23]_i_4_n_1\ : STD_LOGIC;
  signal \final_mantissa_reg[23]_i_4_n_2\ : STD_LOGIC;
  signal \final_mantissa_reg[23]_i_4_n_3\ : STD_LOGIC;
  signal \final_mantissa_reg[28]_i_8_n_0\ : STD_LOGIC;
  signal \final_mantissa_reg[28]_i_8_n_1\ : STD_LOGIC;
  signal \final_mantissa_reg[28]_i_8_n_2\ : STD_LOGIC;
  signal \final_mantissa_reg[28]_i_8_n_3\ : STD_LOGIC;
  signal \final_mantissa_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \final_mantissa_reg[7]_i_5_n_1\ : STD_LOGIC;
  signal \final_mantissa_reg[7]_i_5_n_2\ : STD_LOGIC;
  signal \final_mantissa_reg[7]_i_5_n_3\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[0]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[10]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[11]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[12]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[13]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[14]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[15]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[16]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[17]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[18]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[19]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[1]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[20]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[21]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[22]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[23]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[24]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[25]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[26]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[27]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[2]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[3]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[4]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[5]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[6]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[7]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[8]\ : STD_LOGIC;
  signal \final_mantissa_reg_n_0_[9]\ : STD_LOGIC;
  signal \final_sgn__0\ : STD_LOGIC;
  signal final_sgn_i_1_n_0 : STD_LOGIC;
  signal final_sgn_i_2_n_0 : STD_LOGIC;
  signal \fp_A[0]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[10]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[11]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[12]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[13]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[14]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[15]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[16]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[17]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[18]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[19]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[1]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[20]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[21]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[22]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[25]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[26]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[2]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[30]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[31]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[3]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[4]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[5]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[6]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[7]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[8]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[9]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[0]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[0]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[10]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[10]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[11]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[11]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[12]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[12]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[13]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[13]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[14]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[14]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[15]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[15]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[16]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[16]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[17]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[17]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[18]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[18]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[19]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[19]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[1]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[1]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[20]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[20]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[21]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[21]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[22]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[22]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[23]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[23]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[24]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[24]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[25]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[25]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[26]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[26]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[27]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[27]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[28]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[28]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[29]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[29]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[2]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[2]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[30]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[30]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[31]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[31]_i_4_n_0\ : STD_LOGIC;
  signal \fp_B[3]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[3]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[4]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[4]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[5]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[5]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[6]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[6]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[7]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[7]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[8]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[8]_i_3_n_0\ : STD_LOGIC;
  signal \fp_B[9]_i_2_n_0\ : STD_LOGIC;
  signal \fp_B[9]_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal in22 : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 5 to 5 );
  signal p_1_out : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal p_2_in : STD_LOGIC;
  signal result0 : STD_LOGIC;
  signal \result[23]_i_1_n_0\ : STD_LOGIC;
  signal \result[25]_i_1_n_0\ : STD_LOGIC;
  signal \result[29]_i_1_n_0\ : STD_LOGIC;
  signal \result[29]_i_2_n_0\ : STD_LOGIC;
  signal \result[29]_i_3_n_0\ : STD_LOGIC;
  signal \result[30]_i_1_n_0\ : STD_LOGIC;
  signal shift_amount : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal shift_amount0 : STD_LOGIC;
  signal \shift_amount__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \state1_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \state1_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \state1_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \state1_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \temp_mantissa_result1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \temp_mantissa_result1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \temp_mantissa_result1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \temp_mantissa_result1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \temp_mantissa_result1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \temp_mantissa_result1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \temp_mantissa_result1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \temp_mantissa_result1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \temp_mantissa_result1_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \temp_mantissa_result1_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \temp_mantissa_result1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \temp_mantissa_result1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \temp_mantissa_result1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \temp_mantissa_result1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \NLW_final_exp_s0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_final_exp_s0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_final_mantissa_reg[28]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_final_mantissa_reg[28]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_state1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temp_mantissa_result1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temp_mantissa_result1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temp_mantissa_result1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temp_mantissa_result1_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_temp_mantissa_result1_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A_mantissa_ext[0]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \A_mantissa_ext[10]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \A_mantissa_ext[12]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \A_mantissa_ext[12]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \A_mantissa_ext[13]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \A_mantissa_ext[13]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \A_mantissa_ext[14]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \A_mantissa_ext[14]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \A_mantissa_ext[1]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \A_mantissa_ext[21]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \A_mantissa_ext[22]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \A_mantissa_ext[24]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \A_mantissa_ext[25]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \A_mantissa_ext[26]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \A_mantissa_ext[2]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \A_mantissa_ext[4]_i_3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \A_mantissa_ext[5]_i_3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \A_mantissa_ext[6]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \A_mantissa_ext[6]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \A_mantissa_ext[8]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \A_mantissa_ext[9]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \B_mantissa_ext[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \B_mantissa_ext[10]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \B_mantissa_ext[11]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \B_mantissa_ext[12]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \B_mantissa_ext[13]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \B_mantissa_ext[14]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \B_mantissa_ext[22]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \B_mantissa_ext[24]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \B_mantissa_ext[25]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \B_mantissa_ext[25]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \B_mantissa_ext[25]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \B_mantissa_ext[26]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \B_mantissa_ext[26]_i_4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \B_mantissa_ext[3]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \B_mantissa_ext[4]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \B_mantissa_ext[5]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \B_mantissa_ext[6]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \B_mantissa_ext[7]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \B_mantissa_ext[8]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \B_mantissa_ext[9]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Control_Unit.shift_amount[0]_i_6\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \Control_Unit.shift_amount[1]_i_10\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Control_Unit.shift_amount[1]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \Control_Unit.shift_amount[1]_i_4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \Control_Unit.shift_amount[1]_i_9\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \Control_Unit.shift_amount[2]_i_7\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \Control_Unit.shift_amount[3]_i_7\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \Control_Unit.shift_amount[4]_i_11\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \Control_Unit.shift_amount[4]_i_12\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \Control_Unit.shift_amount[4]_i_15\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \Control_Unit.shift_amount[4]_i_8\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_3\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "unpack_state:001,align_state:010,normalize_state:100,addition_state:011,pack_state:101,wait_state:000,iSTATE:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "unpack_state:001,align_state:010,normalize_state:100,addition_state:011,pack_state:101,wait_state:000,iSTATE:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "unpack_state:001,align_state:010,normalize_state:100,addition_state:011,pack_state:101,wait_state:000,iSTATE:110";
  attribute SOFT_HLUTNM of \done_i_1__0\ : label is "soft_lutpair43";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of final_exp_s0_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of final_exp_s0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \final_exp_s0_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \final_exp_s0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \final_exp_s0_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \final_exp_s0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \final_exp_s[8]_i_4\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \final_mantissa[10]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \final_mantissa[1]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \final_mantissa[20]_i_9\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \final_mantissa[22]_i_8\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \final_mantissa[24]_i_4\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \final_mantissa[24]_i_6\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \final_mantissa[24]_i_8\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \final_mantissa[25]_i_10\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \final_mantissa[25]_i_5\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \final_mantissa[26]_i_10\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \final_mantissa[26]_i_12\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \final_mantissa[26]_i_13\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \final_mantissa[26]_i_4\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \final_mantissa[26]_i_9\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \final_mantissa[28]_i_3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \final_mantissa[28]_i_5\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \final_mantissa[2]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \final_mantissa[4]_i_3\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \final_mantissa[4]_i_6\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \final_mantissa[5]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \final_mantissa[6]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \final_mantissa[7]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \final_mantissa[9]_i_4\ : label is "soft_lutpair24";
  attribute ADDER_THRESHOLD of \final_mantissa_reg[0]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \final_mantissa_reg[0]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \final_mantissa_reg[11]_i_5\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \final_mantissa_reg[11]_i_5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \final_mantissa_reg[15]_i_5\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \final_mantissa_reg[15]_i_5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \final_mantissa_reg[19]_i_6\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \final_mantissa_reg[19]_i_6\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \final_mantissa_reg[23]_i_4\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \final_mantissa_reg[23]_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \final_mantissa_reg[28]_i_6\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \final_mantissa_reg[28]_i_6\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \final_mantissa_reg[28]_i_8\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \final_mantissa_reg[28]_i_8\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \final_mantissa_reg[7]_i_5\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \final_mantissa_reg[7]_i_5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of final_sgn_i_2 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \fp_A[29]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \fp_B[31]_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \integral_sum[31]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of mul_start_i_2 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \result[23]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \result[29]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \result[29]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \result[30]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \temp_error_diff[31]_i_1\ : label is "soft_lutpair33";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \temp_mantissa_result1_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \temp_mantissa_result1_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \temp_mantissa_result1_inferred__0/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \temp_mantissa_result1_inferred__0/i__carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \term_I[31]_i_1\ : label is "soft_lutpair33";
begin
  add_done <= \^add_done\;
\A_exp_s[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[2]\,
      I1 => state(1),
      I2 => state(0),
      I3 => rst_fp,
      O => A_exp_s0
    );
\A_exp_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => Q(23),
      Q => A_exp_s(0),
      R => '0'
    );
\A_exp_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => Q(24),
      Q => A_exp_s(1),
      R => '0'
    );
\A_exp_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => Q(25),
      Q => A_exp_s(2),
      R => '0'
    );
\A_exp_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => Q(26),
      Q => A_exp_s(3),
      R => '0'
    );
\A_exp_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => Q(27),
      Q => A_exp_s(4),
      R => '0'
    );
\A_exp_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => Q(28),
      Q => A_exp_s(5),
      R => '0'
    );
\A_exp_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => Q(29),
      Q => A_exp_s(6),
      R => '0'
    );
\A_exp_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => Q(30),
      Q => A_exp_s(7),
      R => '0'
    );
\A_mantissa_ext[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30505030"
    )
        port map (
      I0 => \A_mantissa_ext[1]_i_2_n_0\,
      I1 => \A_mantissa_ext[0]_i_2_n_0\,
      I2 => state(1),
      I3 => B_exp_s(0),
      I4 => A_exp_s(0),
      O => A_mantissa_ext(0)
    );
\A_mantissa_ext[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \A_mantissa_ext[2]_i_3_n_0\,
      I1 => \Control_Unit.shift_amount[1]_i_4_n_0\,
      I2 => \A_mantissa_ext[0]_i_3_n_0\,
      I3 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I4 => \A_mantissa_ext[0]_i_4_n_0\,
      O => \A_mantissa_ext[0]_i_2_n_0\
    );
\A_mantissa_ext[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[0]\,
      I1 => \A_mantissa_ext_reg_n_0_[16]\,
      I2 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[8]\,
      I4 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I5 => \A_mantissa_ext_reg_n_0_[24]\,
      O => \A_mantissa_ext[0]_i_3_n_0\
    );
\A_mantissa_ext[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"503F5F3F"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[4]\,
      I1 => \A_mantissa_ext_reg_n_0_[20]\,
      I2 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I4 => \A_mantissa_ext_reg_n_0_[12]\,
      O => \A_mantissa_ext[0]_i_4_n_0\
    );
\A_mantissa_ext[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(7),
      I1 => state(0),
      I2 => \A_mantissa_ext[11]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[10]_i_2_n_0\,
      O => A_mantissa_ext(10)
    );
\A_mantissa_ext[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \A_mantissa_ext[12]_i_3_n_0\,
      I1 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I2 => \A_mantissa_ext[12]_i_4_n_0\,
      I3 => \Control_Unit.shift_amount[1]_i_4_n_0\,
      I4 => \A_mantissa_ext[10]_i_3_n_0\,
      O => \A_mantissa_ext[10]_i_2_n_0\
    );
\A_mantissa_ext[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAC0C0CAC0CAC0"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext[10]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[22]\,
      I4 => \A_mantissa_ext_reg_n_0_[14]\,
      I5 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[10]_i_3_n_0\
    );
\A_mantissa_ext[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0A0A0"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[18]\,
      I1 => \A_mantissa_ext_reg_n_0_[10]\,
      I2 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[26]\,
      I4 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[10]_i_4_n_0\
    );
\A_mantissa_ext[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(8),
      I1 => state(0),
      I2 => \A_mantissa_ext[12]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[11]_i_2_n_0\,
      O => A_mantissa_ext(11)
    );
\A_mantissa_ext[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \A_mantissa_ext[13]_i_3_n_0\,
      I1 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I2 => \A_mantissa_ext[13]_i_4_n_0\,
      I3 => \Control_Unit.shift_amount[1]_i_4_n_0\,
      I4 => \A_mantissa_ext[11]_i_3_n_0\,
      O => \A_mantissa_ext[11]_i_2_n_0\
    );
\A_mantissa_ext[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAC0C0CAC0CAC0"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext[11]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[23]\,
      I4 => \A_mantissa_ext_reg_n_0_[15]\,
      I5 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[11]_i_3_n_0\
    );
\A_mantissa_ext[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0A0"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[19]\,
      I1 => \A_mantissa_ext_reg_n_0_[11]\,
      I2 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I3 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[11]_i_4_n_0\
    );
\A_mantissa_ext[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(9),
      I1 => state(0),
      I2 => \A_mantissa_ext[13]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[12]_i_2_n_0\,
      O => A_mantissa_ext(12)
    );
\A_mantissa_ext[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \A_mantissa_ext[14]_i_3_n_0\,
      I1 => \A_mantissa_ext[14]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[1]_i_4_n_0\,
      I3 => \A_mantissa_ext[12]_i_3_n_0\,
      I4 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I5 => \A_mantissa_ext[12]_i_4_n_0\,
      O => \A_mantissa_ext[12]_i_2_n_0\
    );
\A_mantissa_ext[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A088"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext_reg_n_0_[20]\,
      I2 => \A_mantissa_ext_reg_n_0_[12]\,
      I3 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[12]_i_3_n_0\
    );
\A_mantissa_ext[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A088"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext_reg_n_0_[24]\,
      I2 => \A_mantissa_ext_reg_n_0_[16]\,
      I3 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[12]_i_4_n_0\
    );
\A_mantissa_ext[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(10),
      I1 => state(0),
      I2 => \A_mantissa_ext[14]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[13]_i_2_n_0\,
      O => A_mantissa_ext(13)
    );
\A_mantissa_ext[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \A_mantissa_ext[15]_i_3_n_0\,
      I1 => \Control_Unit.shift_amount[1]_i_4_n_0\,
      I2 => \A_mantissa_ext[13]_i_3_n_0\,
      I3 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I4 => \A_mantissa_ext[13]_i_4_n_0\,
      O => \A_mantissa_ext[13]_i_2_n_0\
    );
\A_mantissa_ext[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A088"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext_reg_n_0_[21]\,
      I2 => \A_mantissa_ext_reg_n_0_[13]\,
      I3 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[13]_i_3_n_0\
    );
\A_mantissa_ext[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A088"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext_reg_n_0_[25]\,
      I2 => \A_mantissa_ext_reg_n_0_[17]\,
      I3 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[13]_i_4_n_0\
    );
\A_mantissa_ext[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(11),
      I1 => state(0),
      I2 => \A_mantissa_ext[15]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[14]_i_2_n_0\,
      O => A_mantissa_ext(14)
    );
\A_mantissa_ext[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \A_mantissa_ext[16]_i_3_n_0\,
      I1 => \Control_Unit.shift_amount[1]_i_4_n_0\,
      I2 => \A_mantissa_ext[14]_i_3_n_0\,
      I3 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I4 => \A_mantissa_ext[14]_i_4_n_0\,
      O => \A_mantissa_ext[14]_i_2_n_0\
    );
\A_mantissa_ext[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A088"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext_reg_n_0_[22]\,
      I2 => \A_mantissa_ext_reg_n_0_[14]\,
      I3 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[14]_i_3_n_0\
    );
\A_mantissa_ext[14]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext_reg_n_0_[18]\,
      I2 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[26]\,
      O => \A_mantissa_ext[14]_i_4_n_0\
    );
\A_mantissa_ext[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(12),
      I1 => state(0),
      I2 => \A_mantissa_ext[16]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[15]_i_2_n_0\,
      O => A_mantissa_ext(15)
    );
\A_mantissa_ext[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFBABAEF208A8A20"
    )
        port map (
      I0 => \A_mantissa_ext[17]_i_3_n_0\,
      I1 => B_exp_s(0),
      I2 => A_exp_s(0),
      I3 => B_exp_s(1),
      I4 => A_exp_s(1),
      I5 => \A_mantissa_ext[15]_i_3_n_0\,
      O => \A_mantissa_ext[15]_i_2_n_0\
    );
\A_mantissa_ext[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AA8800A0008800"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext_reg_n_0_[23]\,
      I2 => \A_mantissa_ext_reg_n_0_[15]\,
      I3 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I4 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I5 => \A_mantissa_ext_reg_n_0_[19]\,
      O => \A_mantissa_ext[15]_i_3_n_0\
    );
\A_mantissa_ext[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(13),
      I1 => state(0),
      I2 => \A_mantissa_ext[17]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[16]_i_2_n_0\,
      O => A_mantissa_ext(16)
    );
\A_mantissa_ext[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFBABAEF208A8A20"
    )
        port map (
      I0 => \A_mantissa_ext[18]_i_3_n_0\,
      I1 => B_exp_s(0),
      I2 => A_exp_s(0),
      I3 => B_exp_s(1),
      I4 => A_exp_s(1),
      I5 => \A_mantissa_ext[16]_i_3_n_0\,
      O => \A_mantissa_ext[16]_i_2_n_0\
    );
\A_mantissa_ext[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AAA00088008800"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext_reg_n_0_[24]\,
      I2 => \A_mantissa_ext_reg_n_0_[16]\,
      I3 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I4 => \A_mantissa_ext_reg_n_0_[20]\,
      I5 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[16]_i_3_n_0\
    );
\A_mantissa_ext[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(14),
      I1 => state(0),
      I2 => \A_mantissa_ext[18]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[17]_i_2_n_0\,
      O => A_mantissa_ext(17)
    );
\A_mantissa_ext[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFBABAEF208A8A20"
    )
        port map (
      I0 => \A_mantissa_ext[19]_i_3_n_0\,
      I1 => B_exp_s(0),
      I2 => A_exp_s(0),
      I3 => B_exp_s(1),
      I4 => A_exp_s(1),
      I5 => \A_mantissa_ext[17]_i_3_n_0\,
      O => \A_mantissa_ext[17]_i_2_n_0\
    );
\A_mantissa_ext[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AAA00088008800"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext_reg_n_0_[25]\,
      I2 => \A_mantissa_ext_reg_n_0_[17]\,
      I3 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I4 => \A_mantissa_ext_reg_n_0_[21]\,
      I5 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[17]_i_3_n_0\
    );
\A_mantissa_ext[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(15),
      I1 => state(0),
      I2 => \A_mantissa_ext[19]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[18]_i_2_n_0\,
      O => A_mantissa_ext(18)
    );
\A_mantissa_ext[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFBABAEF208A8A20"
    )
        port map (
      I0 => \A_mantissa_ext[20]_i_3_n_0\,
      I1 => B_exp_s(0),
      I2 => A_exp_s(0),
      I3 => B_exp_s(1),
      I4 => A_exp_s(1),
      I5 => \A_mantissa_ext[18]_i_3_n_0\,
      O => \A_mantissa_ext[18]_i_2_n_0\
    );
\A_mantissa_ext[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88AA8800A000A000"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext_reg_n_0_[18]\,
      I2 => \A_mantissa_ext_reg_n_0_[26]\,
      I3 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I4 => \A_mantissa_ext_reg_n_0_[22]\,
      I5 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[18]_i_3_n_0\
    );
\A_mantissa_ext[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(16),
      I1 => state(0),
      I2 => \A_mantissa_ext[20]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[19]_i_2_n_0\,
      O => A_mantissa_ext(19)
    );
\A_mantissa_ext[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFBABAEF208A8A20"
    )
        port map (
      I0 => \A_mantissa_ext[21]_i_3_n_0\,
      I1 => B_exp_s(0),
      I2 => A_exp_s(0),
      I3 => B_exp_s(1),
      I4 => A_exp_s(1),
      I5 => \A_mantissa_ext[19]_i_3_n_0\,
      O => \A_mantissa_ext[19]_i_2_n_0\
    );
\A_mantissa_ext[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext_reg_n_0_[19]\,
      I2 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[23]\,
      I4 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[19]_i_3_n_0\
    );
\A_mantissa_ext[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30505030"
    )
        port map (
      I0 => \A_mantissa_ext[2]_i_2_n_0\,
      I1 => \A_mantissa_ext[1]_i_2_n_0\,
      I2 => state(1),
      I3 => B_exp_s(0),
      I4 => A_exp_s(0),
      O => A_mantissa_ext(1)
    );
\A_mantissa_ext[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \A_mantissa_ext_reg[3]_i_3_n_0\,
      I1 => \Control_Unit.shift_amount[1]_i_4_n_0\,
      I2 => \A_mantissa_ext[1]_i_3_n_0\,
      I3 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I4 => \A_mantissa_ext[1]_i_4_n_0\,
      O => \A_mantissa_ext[1]_i_2_n_0\
    );
\A_mantissa_ext[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[1]\,
      I1 => \A_mantissa_ext_reg_n_0_[17]\,
      I2 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[9]\,
      I4 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I5 => \A_mantissa_ext_reg_n_0_[25]\,
      O => \A_mantissa_ext[1]_i_3_n_0\
    );
\A_mantissa_ext[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"503F5F3F"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[5]\,
      I1 => \A_mantissa_ext_reg_n_0_[21]\,
      I2 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I4 => \A_mantissa_ext_reg_n_0_[13]\,
      O => \A_mantissa_ext[1]_i_4_n_0\
    );
\A_mantissa_ext[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(17),
      I1 => state(0),
      I2 => \A_mantissa_ext[21]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[20]_i_2_n_0\,
      O => A_mantissa_ext(20)
    );
\A_mantissa_ext[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFBABAEF208A8A20"
    )
        port map (
      I0 => \A_mantissa_ext[22]_i_3_n_0\,
      I1 => B_exp_s(0),
      I2 => A_exp_s(0),
      I3 => B_exp_s(1),
      I4 => A_exp_s(1),
      I5 => \A_mantissa_ext[20]_i_3_n_0\,
      O => \A_mantissa_ext[20]_i_2_n_0\
    );
\A_mantissa_ext[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext_reg_n_0_[20]\,
      I2 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[24]\,
      I4 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[20]_i_3_n_0\
    );
\A_mantissa_ext[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(18),
      I1 => state(0),
      I2 => \A_mantissa_ext[22]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[21]_i_2_n_0\,
      O => A_mantissa_ext(21)
    );
\A_mantissa_ext[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[23]\,
      I4 => \Control_Unit.shift_amount[1]_i_4_n_0\,
      I5 => \A_mantissa_ext[21]_i_3_n_0\,
      O => \A_mantissa_ext[21]_i_2_n_0\
    );
\A_mantissa_ext[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext_reg_n_0_[21]\,
      I2 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[25]\,
      I4 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[21]_i_3_n_0\
    );
\A_mantissa_ext[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(19),
      I1 => state(0),
      I2 => \A_mantissa_ext[23]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[22]_i_2_n_0\,
      O => A_mantissa_ext(22)
    );
\A_mantissa_ext[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[24]\,
      I3 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I4 => \Control_Unit.shift_amount[1]_i_4_n_0\,
      I5 => \A_mantissa_ext[22]_i_3_n_0\,
      O => \A_mantissa_ext[22]_i_2_n_0\
    );
\A_mantissa_ext[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext_reg_n_0_[22]\,
      I2 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[26]\,
      I4 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[22]_i_3_n_0\
    );
\A_mantissa_ext[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(20),
      I1 => state(0),
      I2 => \A_mantissa_ext[24]_i_3_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[23]_i_2_n_0\,
      O => A_mantissa_ext(23)
    );
\A_mantissa_ext[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A00000080000000"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext_reg_n_0_[25]\,
      I2 => \Control_Unit.shift_amount[1]_i_4_n_0\,
      I3 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I4 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I5 => \A_mantissa_ext_reg_n_0_[23]\,
      O => \A_mantissa_ext[23]_i_2_n_0\
    );
\A_mantissa_ext[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(21),
      I1 => state(0),
      I2 => \A_mantissa_ext[24]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[24]_i_3_n_0\,
      O => A_mantissa_ext(24)
    );
\A_mantissa_ext[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[25]\,
      I3 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I4 => \Control_Unit.shift_amount[1]_i_4_n_0\,
      O => \A_mantissa_ext[24]_i_2_n_0\
    );
\A_mantissa_ext[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A00800000000000"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext_reg_n_0_[26]\,
      I2 => \Control_Unit.shift_amount[1]_i_4_n_0\,
      I3 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I4 => \A_mantissa_ext_reg_n_0_[24]\,
      I5 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      O => \A_mantissa_ext[24]_i_3_n_0\
    );
\A_mantissa_ext[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => Q(22),
      I1 => state(0),
      I2 => \A_mantissa_ext[26]_i_4_n_0\,
      I3 => \B_mantissa_ext[25]_i_3_n_0\,
      I4 => \A_mantissa_ext[25]_i_2_n_0\,
      I5 => \Control_Unit.shift_amount[1]_i_4_n_0\,
      O => A_mantissa_ext(25)
    );
\A_mantissa_ext[25]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[25]\,
      I3 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      O => \A_mantissa_ext[25]_i_2_n_0\
    );
\A_mantissa_ext[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABABABABABAAA"
    )
        port map (
      I0 => A_exp_s0,
      I1 => \A_mantissa_ext[26]_i_3_n_0\,
      I2 => \B_mantissa_ext[26]_i_3_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I4 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I5 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      O => A_mantissa_ext0
    );
\A_mantissa_ext[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAEAAAAAAAAEAAE"
    )
        port map (
      I0 => state(0),
      I1 => \A_mantissa_ext[26]_i_4_n_0\,
      I2 => B_exp_s(1),
      I3 => A_exp_s(1),
      I4 => B_exp_s(0),
      I5 => A_exp_s(0),
      O => A_mantissa_ext(26)
    );
\A_mantissa_ext[26]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state1_inferred__0/i__carry_n_0\,
      I1 => \state1_inferred__1/i__carry_n_0\,
      O => \A_mantissa_ext[26]_i_3_n_0\
    );
\A_mantissa_ext[26]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[26]\,
      I3 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      O => \A_mantissa_ext[26]_i_4_n_0\
    );
\A_mantissa_ext[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30505030"
    )
        port map (
      I0 => \A_mantissa_ext[3]_i_2_n_0\,
      I1 => \A_mantissa_ext[2]_i_2_n_0\,
      I2 => state(1),
      I3 => B_exp_s(0),
      I4 => A_exp_s(0),
      O => A_mantissa_ext(2)
    );
\A_mantissa_ext[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5CC5C555C55C5CC"
    )
        port map (
      I0 => \A_mantissa_ext[4]_i_3_n_0\,
      I1 => \A_mantissa_ext[2]_i_3_n_0\,
      I2 => B_exp_s(0),
      I3 => A_exp_s(0),
      I4 => B_exp_s(1),
      I5 => A_exp_s(1),
      O => \A_mantissa_ext[2]_i_2_n_0\
    );
\A_mantissa_ext[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \A_mantissa_ext[2]_i_4_n_0\,
      I1 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I2 => \A_mantissa_ext[6]_i_4_n_0\,
      O => \A_mantissa_ext[2]_i_3_n_0\
    );
\A_mantissa_ext[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[2]\,
      I1 => \A_mantissa_ext_reg_n_0_[18]\,
      I2 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[10]\,
      I4 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I5 => \A_mantissa_ext_reg_n_0_[26]\,
      O => \A_mantissa_ext[2]_i_4_n_0\
    );
\A_mantissa_ext[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBB88BB888B8B"
    )
        port map (
      I0 => Q(0),
      I1 => state(0),
      I2 => \A_mantissa_ext[3]_i_2_n_0\,
      I3 => \A_mantissa_ext[4]_i_2_n_0\,
      I4 => A_exp_s(0),
      I5 => B_exp_s(0),
      O => A_mantissa_ext(3)
    );
\A_mantissa_ext[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF7575DF10454510"
    )
        port map (
      I0 => \A_mantissa_ext[5]_i_3_n_0\,
      I1 => B_exp_s(0),
      I2 => A_exp_s(0),
      I3 => B_exp_s(1),
      I4 => A_exp_s(1),
      I5 => \A_mantissa_ext_reg[3]_i_3_n_0\,
      O => \A_mantissa_ext[3]_i_2_n_0\
    );
\A_mantissa_ext[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"151FB5BF"
    )
        port map (
      I0 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I1 => \A_mantissa_ext_reg_n_0_[15]\,
      I2 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[23]\,
      I4 => \A_mantissa_ext_reg_n_0_[7]\,
      O => \A_mantissa_ext[3]_i_4_n_0\
    );
\A_mantissa_ext[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55330FFF"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[3]\,
      I1 => \A_mantissa_ext_reg_n_0_[19]\,
      I2 => \A_mantissa_ext_reg_n_0_[11]\,
      I3 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I4 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[3]_i_5_n_0\
    );
\A_mantissa_ext[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(1),
      I1 => state(0),
      I2 => \A_mantissa_ext[5]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[4]_i_2_n_0\,
      O => A_mantissa_ext(4)
    );
\A_mantissa_ext[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFBABAEF208A8A20"
    )
        port map (
      I0 => \A_mantissa_ext[6]_i_3_n_0\,
      I1 => B_exp_s(0),
      I2 => A_exp_s(0),
      I3 => B_exp_s(1),
      I4 => A_exp_s(1),
      I5 => \A_mantissa_ext[4]_i_3_n_0\,
      O => \A_mantissa_ext[4]_i_2_n_0\
    );
\A_mantissa_ext[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \A_mantissa_ext[8]_i_4_n_0\,
      I1 => \A_mantissa_ext[0]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      O => \A_mantissa_ext[4]_i_3_n_0\
    );
\A_mantissa_ext[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(2),
      I1 => state(0),
      I2 => \A_mantissa_ext[6]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[5]_i_2_n_0\,
      O => A_mantissa_ext(5)
    );
\A_mantissa_ext[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFBABAEF208A8A20"
    )
        port map (
      I0 => \A_mantissa_ext[7]_i_3_n_0\,
      I1 => B_exp_s(0),
      I2 => A_exp_s(0),
      I3 => B_exp_s(1),
      I4 => A_exp_s(1),
      I5 => \A_mantissa_ext[5]_i_3_n_0\,
      O => \A_mantissa_ext[5]_i_2_n_0\
    );
\A_mantissa_ext[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \A_mantissa_ext[9]_i_4_n_0\,
      I1 => \A_mantissa_ext[1]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      O => \A_mantissa_ext[5]_i_3_n_0\
    );
\A_mantissa_ext[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(3),
      I1 => state(0),
      I2 => \A_mantissa_ext[7]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[6]_i_2_n_0\,
      O => A_mantissa_ext(6)
    );
\A_mantissa_ext[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFBABAEF208A8A20"
    )
        port map (
      I0 => \A_mantissa_ext[8]_i_3_n_0\,
      I1 => B_exp_s(0),
      I2 => A_exp_s(0),
      I3 => B_exp_s(1),
      I4 => A_exp_s(1),
      I5 => \A_mantissa_ext[6]_i_3_n_0\,
      O => \A_mantissa_ext[6]_i_2_n_0\
    );
\A_mantissa_ext[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_mantissa_ext[6]_i_4_n_0\,
      I1 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I2 => \A_mantissa_ext[10]_i_4_n_0\,
      O => \A_mantissa_ext[6]_i_3_n_0\
    );
\A_mantissa_ext[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACF000"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[6]\,
      I1 => \A_mantissa_ext_reg_n_0_[22]\,
      I2 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[14]\,
      I4 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[6]_i_4_n_0\
    );
\A_mantissa_ext[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(4),
      I1 => state(0),
      I2 => \A_mantissa_ext[8]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[7]_i_2_n_0\,
      O => A_mantissa_ext(7)
    );
\A_mantissa_ext[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFBABAEF208A8A20"
    )
        port map (
      I0 => \A_mantissa_ext[9]_i_3_n_0\,
      I1 => B_exp_s(0),
      I2 => A_exp_s(0),
      I3 => B_exp_s(1),
      I4 => A_exp_s(1),
      I5 => \A_mantissa_ext[7]_i_3_n_0\,
      O => \A_mantissa_ext[7]_i_2_n_0\
    );
\A_mantissa_ext[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB888888B8B88888"
    )
        port map (
      I0 => \A_mantissa_ext[7]_i_4_n_0\,
      I1 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[19]\,
      I3 => \A_mantissa_ext_reg_n_0_[11]\,
      I4 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I5 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[7]_i_3_n_0\
    );
\A_mantissa_ext[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACF000"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[7]\,
      I1 => \A_mantissa_ext_reg_n_0_[23]\,
      I2 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[15]\,
      I4 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[7]_i_4_n_0\
    );
\A_mantissa_ext[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(5),
      I1 => state(0),
      I2 => \A_mantissa_ext[9]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[8]_i_2_n_0\,
      O => A_mantissa_ext(8)
    );
\A_mantissa_ext[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFBABAEF208A8A20"
    )
        port map (
      I0 => \A_mantissa_ext[10]_i_3_n_0\,
      I1 => B_exp_s(0),
      I2 => A_exp_s(0),
      I3 => B_exp_s(1),
      I4 => A_exp_s(1),
      I5 => \A_mantissa_ext[8]_i_3_n_0\,
      O => \A_mantissa_ext[8]_i_2_n_0\
    );
\A_mantissa_ext[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAC0C0CAC0CAC0"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext[8]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[20]\,
      I4 => \A_mantissa_ext_reg_n_0_[12]\,
      I5 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[8]_i_3_n_0\
    );
\A_mantissa_ext[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0A0A0"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[16]\,
      I1 => \A_mantissa_ext_reg_n_0_[8]\,
      I2 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[24]\,
      I4 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[8]_i_4_n_0\
    );
\A_mantissa_ext[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => Q(6),
      I1 => state(0),
      I2 => \A_mantissa_ext[10]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \A_mantissa_ext[9]_i_2_n_0\,
      O => A_mantissa_ext(9)
    );
\A_mantissa_ext[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFBABAEF208A8A20"
    )
        port map (
      I0 => \A_mantissa_ext[11]_i_3_n_0\,
      I1 => B_exp_s(0),
      I2 => A_exp_s(0),
      I3 => B_exp_s(1),
      I4 => A_exp_s(1),
      I5 => \A_mantissa_ext[9]_i_3_n_0\,
      O => \A_mantissa_ext[9]_i_2_n_0\
    );
\A_mantissa_ext[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAC0C0CAC0CAC0"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \A_mantissa_ext[9]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[21]\,
      I4 => \A_mantissa_ext_reg_n_0_[13]\,
      I5 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[9]_i_3_n_0\
    );
\A_mantissa_ext[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0A0A0"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[17]\,
      I1 => \A_mantissa_ext_reg_n_0_[9]\,
      I2 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I3 => \A_mantissa_ext_reg_n_0_[25]\,
      I4 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      O => \A_mantissa_ext[9]_i_4_n_0\
    );
\A_mantissa_ext_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(0),
      Q => \A_mantissa_ext_reg_n_0_[0]\,
      R => '0'
    );
\A_mantissa_ext_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(10),
      Q => \A_mantissa_ext_reg_n_0_[10]\,
      R => '0'
    );
\A_mantissa_ext_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(11),
      Q => \A_mantissa_ext_reg_n_0_[11]\,
      R => '0'
    );
\A_mantissa_ext_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(12),
      Q => \A_mantissa_ext_reg_n_0_[12]\,
      R => '0'
    );
\A_mantissa_ext_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(13),
      Q => \A_mantissa_ext_reg_n_0_[13]\,
      R => '0'
    );
\A_mantissa_ext_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(14),
      Q => \A_mantissa_ext_reg_n_0_[14]\,
      R => '0'
    );
\A_mantissa_ext_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(15),
      Q => \A_mantissa_ext_reg_n_0_[15]\,
      R => '0'
    );
\A_mantissa_ext_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(16),
      Q => \A_mantissa_ext_reg_n_0_[16]\,
      R => '0'
    );
\A_mantissa_ext_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(17),
      Q => \A_mantissa_ext_reg_n_0_[17]\,
      R => '0'
    );
\A_mantissa_ext_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(18),
      Q => \A_mantissa_ext_reg_n_0_[18]\,
      R => '0'
    );
\A_mantissa_ext_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(19),
      Q => \A_mantissa_ext_reg_n_0_[19]\,
      R => '0'
    );
\A_mantissa_ext_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(1),
      Q => \A_mantissa_ext_reg_n_0_[1]\,
      R => '0'
    );
\A_mantissa_ext_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(20),
      Q => \A_mantissa_ext_reg_n_0_[20]\,
      R => '0'
    );
\A_mantissa_ext_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(21),
      Q => \A_mantissa_ext_reg_n_0_[21]\,
      R => '0'
    );
\A_mantissa_ext_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(22),
      Q => \A_mantissa_ext_reg_n_0_[22]\,
      R => '0'
    );
\A_mantissa_ext_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(23),
      Q => \A_mantissa_ext_reg_n_0_[23]\,
      R => '0'
    );
\A_mantissa_ext_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(24),
      Q => \A_mantissa_ext_reg_n_0_[24]\,
      R => '0'
    );
\A_mantissa_ext_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(25),
      Q => \A_mantissa_ext_reg_n_0_[25]\,
      R => '0'
    );
\A_mantissa_ext_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(26),
      Q => \A_mantissa_ext_reg_n_0_[26]\,
      R => '0'
    );
\A_mantissa_ext_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(2),
      Q => \A_mantissa_ext_reg_n_0_[2]\,
      R => '0'
    );
\A_mantissa_ext_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(3),
      Q => \A_mantissa_ext_reg_n_0_[3]\,
      R => '0'
    );
\A_mantissa_ext_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \A_mantissa_ext[3]_i_4_n_0\,
      I1 => \A_mantissa_ext[3]_i_5_n_0\,
      O => \A_mantissa_ext_reg[3]_i_3_n_0\,
      S => \Control_Unit.shift_amount[2]_i_4_n_0\
    );
\A_mantissa_ext_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(4),
      Q => \A_mantissa_ext_reg_n_0_[4]\,
      R => '0'
    );
\A_mantissa_ext_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(5),
      Q => \A_mantissa_ext_reg_n_0_[5]\,
      R => '0'
    );
\A_mantissa_ext_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(6),
      Q => \A_mantissa_ext_reg_n_0_[6]\,
      R => '0'
    );
\A_mantissa_ext_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(7),
      Q => \A_mantissa_ext_reg_n_0_[7]\,
      R => '0'
    );
\A_mantissa_ext_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(8),
      Q => \A_mantissa_ext_reg_n_0_[8]\,
      R => '0'
    );
\A_mantissa_ext_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_mantissa_ext0,
      D => A_mantissa_ext(9),
      Q => \A_mantissa_ext_reg_n_0_[9]\,
      R => '0'
    );
A_sgn_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => Q(31),
      Q => \A_sgn__0\,
      R => '0'
    );
\B_exp_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => B_sgn_reg_0(23),
      Q => B_exp_s(0),
      R => '0'
    );
\B_exp_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => B_sgn_reg_0(24),
      Q => B_exp_s(1),
      R => '0'
    );
\B_exp_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => B_sgn_reg_0(25),
      Q => B_exp_s(2),
      R => '0'
    );
\B_exp_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => B_sgn_reg_0(26),
      Q => B_exp_s(3),
      R => '0'
    );
\B_exp_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => B_sgn_reg_0(27),
      Q => B_exp_s(4),
      R => '0'
    );
\B_exp_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => B_sgn_reg_0(28),
      Q => B_exp_s(5),
      R => '0'
    );
\B_exp_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => B_sgn_reg_0(29),
      Q => B_exp_s(6),
      R => '0'
    );
\B_exp_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => B_sgn_reg_0(30),
      Q => B_exp_s(7),
      R => '0'
    );
\B_mantissa_ext[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30505030"
    )
        port map (
      I0 => \B_mantissa_ext[1]_i_2_n_0\,
      I1 => \B_mantissa_ext[0]_i_2_n_0\,
      I2 => state(1),
      I3 => B_exp_s(0),
      I4 => A_exp_s(0),
      O => B_mantissa_ext(0)
    );
\B_mantissa_ext[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \B_mantissa_ext[2]_i_3_n_0\,
      I1 => \Control_Unit.shift_amount[1]_i_3_n_0\,
      I2 => \B_mantissa_ext[0]_i_3_n_0\,
      I3 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I4 => \B_mantissa_ext[0]_i_4_n_0\,
      O => \B_mantissa_ext[0]_i_2_n_0\
    );
\B_mantissa_ext[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[24]\,
      I1 => \B_mantissa_ext_reg_n_0_[8]\,
      I2 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I3 => \B_mantissa_ext_reg_n_0_[16]\,
      I4 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I5 => \B_mantissa_ext_reg_n_0_[0]\,
      O => \B_mantissa_ext[0]_i_3_n_0\
    );
\B_mantissa_ext[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5F5303F"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[12]\,
      I1 => \B_mantissa_ext_reg_n_0_[20]\,
      I2 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I3 => \B_mantissa_ext_reg_n_0_[4]\,
      I4 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      O => \B_mantissa_ext[0]_i_4_n_0\
    );
\B_mantissa_ext[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(7),
      I1 => state(0),
      I2 => \B_mantissa_ext[11]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[10]_i_2_n_0\,
      O => B_mantissa_ext(10)
    );
\B_mantissa_ext[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[12]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[10]_i_3_n_0\,
      O => \B_mantissa_ext[10]_i_2_n_0\
    );
\B_mantissa_ext[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => \B_mantissa_ext[10]_i_4_n_0\,
      I1 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I2 => \B_mantissa_ext_reg_n_0_[22]\,
      I3 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[14]\,
      I5 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      O => \B_mantissa_ext[10]_i_3_n_0\
    );
\B_mantissa_ext[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0ACFC0"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[18]\,
      I1 => \B_mantissa_ext_reg_n_0_[26]\,
      I2 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I3 => \B_mantissa_ext_reg_n_0_[10]\,
      I4 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      O => \B_mantissa_ext[10]_i_4_n_0\
    );
\B_mantissa_ext[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(8),
      I1 => state(0),
      I2 => \B_mantissa_ext[12]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[11]_i_2_n_0\,
      O => B_mantissa_ext(11)
    );
\B_mantissa_ext[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[13]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[11]_i_3_n_0\,
      O => \B_mantissa_ext[11]_i_2_n_0\
    );
\B_mantissa_ext[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2230FFFF22300000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[19]\,
      I1 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I2 => \B_mantissa_ext_reg_n_0_[11]\,
      I3 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I4 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I5 => \B_mantissa_ext[11]_i_4_n_0\,
      O => \B_mantissa_ext[11]_i_3_n_0\
    );
\B_mantissa_ext[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[23]\,
      I1 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I2 => \B_mantissa_ext_reg_n_0_[15]\,
      I3 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      O => \B_mantissa_ext[11]_i_4_n_0\
    );
\B_mantissa_ext[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(9),
      I1 => state(0),
      I2 => \B_mantissa_ext[13]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[12]_i_2_n_0\,
      O => B_mantissa_ext(12)
    );
\B_mantissa_ext[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[14]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[12]_i_3_n_0\,
      O => \B_mantissa_ext[12]_i_2_n_0\
    );
\B_mantissa_ext[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[20]\,
      I1 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I2 => \B_mantissa_ext_reg_n_0_[12]\,
      I3 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I4 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I5 => \B_mantissa_ext[12]_i_4_n_0\,
      O => \B_mantissa_ext[12]_i_3_n_0\
    );
\B_mantissa_ext[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[24]\,
      I1 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I2 => \B_mantissa_ext_reg_n_0_[16]\,
      I3 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      O => \B_mantissa_ext[12]_i_4_n_0\
    );
\B_mantissa_ext[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(10),
      I1 => state(0),
      I2 => \B_mantissa_ext[14]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[13]_i_2_n_0\,
      O => B_mantissa_ext(13)
    );
\B_mantissa_ext[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[15]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[13]_i_3_n_0\,
      O => \B_mantissa_ext[13]_i_2_n_0\
    );
\B_mantissa_ext[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[21]\,
      I1 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I2 => \B_mantissa_ext_reg_n_0_[13]\,
      I3 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I4 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I5 => \B_mantissa_ext[13]_i_4_n_0\,
      O => \B_mantissa_ext[13]_i_3_n_0\
    );
\B_mantissa_ext[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[25]\,
      I1 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I2 => \B_mantissa_ext_reg_n_0_[17]\,
      I3 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      O => \B_mantissa_ext[13]_i_4_n_0\
    );
\B_mantissa_ext[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(11),
      I1 => state(0),
      I2 => \B_mantissa_ext[15]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[14]_i_2_n_0\,
      O => B_mantissa_ext(14)
    );
\B_mantissa_ext[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[16]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[14]_i_3_n_0\,
      O => \B_mantissa_ext[14]_i_2_n_0\
    );
\B_mantissa_ext[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[22]\,
      I1 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I2 => \B_mantissa_ext_reg_n_0_[14]\,
      I3 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I4 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I5 => \B_mantissa_ext[14]_i_4_n_0\,
      O => \B_mantissa_ext[14]_i_3_n_0\
    );
\B_mantissa_ext[14]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[26]\,
      I1 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I2 => \B_mantissa_ext_reg_n_0_[18]\,
      I3 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      O => \B_mantissa_ext[14]_i_4_n_0\
    );
\B_mantissa_ext[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(12),
      I1 => state(0),
      I2 => \B_mantissa_ext[16]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[15]_i_2_n_0\,
      O => B_mantissa_ext(15)
    );
\B_mantissa_ext[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[17]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[15]_i_3_n_0\,
      O => \B_mantissa_ext[15]_i_2_n_0\
    );
\B_mantissa_ext[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000A000CF00C0"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[23]\,
      I1 => \B_mantissa_ext_reg_n_0_[15]\,
      I2 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[19]\,
      I5 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      O => \B_mantissa_ext[15]_i_3_n_0\
    );
\B_mantissa_ext[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(13),
      I1 => state(0),
      I2 => \B_mantissa_ext[17]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[16]_i_2_n_0\,
      O => B_mantissa_ext(16)
    );
\B_mantissa_ext[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[18]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[16]_i_3_n_0\,
      O => \B_mantissa_ext[16]_i_2_n_0\
    );
\B_mantissa_ext[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000A000CF00C0"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[24]\,
      I1 => \B_mantissa_ext_reg_n_0_[16]\,
      I2 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[20]\,
      I5 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      O => \B_mantissa_ext[16]_i_3_n_0\
    );
\B_mantissa_ext[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(14),
      I1 => state(0),
      I2 => \B_mantissa_ext[18]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[17]_i_2_n_0\,
      O => B_mantissa_ext(17)
    );
\B_mantissa_ext[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[19]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[17]_i_3_n_0\,
      O => \B_mantissa_ext[17]_i_2_n_0\
    );
\B_mantissa_ext[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000A000CF00C0"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[25]\,
      I1 => \B_mantissa_ext_reg_n_0_[17]\,
      I2 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[21]\,
      I5 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      O => \B_mantissa_ext[17]_i_3_n_0\
    );
\B_mantissa_ext[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(15),
      I1 => state(0),
      I2 => \B_mantissa_ext[19]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[18]_i_2_n_0\,
      O => B_mantissa_ext(18)
    );
\B_mantissa_ext[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[20]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[18]_i_3_n_0\,
      O => \B_mantissa_ext[18]_i_2_n_0\
    );
\B_mantissa_ext[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000A000CF00C0"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[26]\,
      I1 => \B_mantissa_ext_reg_n_0_[18]\,
      I2 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[22]\,
      I5 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      O => \B_mantissa_ext[18]_i_3_n_0\
    );
\B_mantissa_ext[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(16),
      I1 => state(0),
      I2 => \B_mantissa_ext[20]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[19]_i_2_n_0\,
      O => B_mantissa_ext(19)
    );
\B_mantissa_ext[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[21]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[19]_i_3_n_0\,
      O => \B_mantissa_ext[19]_i_2_n_0\
    );
\B_mantissa_ext[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[19]\,
      I1 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I3 => \B_mantissa_ext_reg_n_0_[23]\,
      I4 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      O => \B_mantissa_ext[19]_i_3_n_0\
    );
\B_mantissa_ext[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30505030"
    )
        port map (
      I0 => \B_mantissa_ext[2]_i_2_n_0\,
      I1 => \B_mantissa_ext[1]_i_2_n_0\,
      I2 => state(1),
      I3 => B_exp_s(0),
      I4 => A_exp_s(0),
      O => B_mantissa_ext(1)
    );
\B_mantissa_ext[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74447477"
    )
        port map (
      I0 => \B_mantissa_ext[3]_i_3_n_0\,
      I1 => \Control_Unit.shift_amount[1]_i_3_n_0\,
      I2 => \B_mantissa_ext[1]_i_3_n_0\,
      I3 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I4 => \B_mantissa_ext[1]_i_4_n_0\,
      O => \B_mantissa_ext[1]_i_2_n_0\
    );
\B_mantissa_ext[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[25]\,
      I1 => \B_mantissa_ext_reg_n_0_[9]\,
      I2 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I3 => \B_mantissa_ext_reg_n_0_[17]\,
      I4 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I5 => \B_mantissa_ext_reg_n_0_[1]\,
      O => \B_mantissa_ext[1]_i_3_n_0\
    );
\B_mantissa_ext[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[13]\,
      I1 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I2 => \B_mantissa_ext_reg_n_0_[21]\,
      I3 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[5]\,
      O => \B_mantissa_ext[1]_i_4_n_0\
    );
\B_mantissa_ext[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(17),
      I1 => state(0),
      I2 => \B_mantissa_ext[21]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[20]_i_2_n_0\,
      O => B_mantissa_ext(20)
    );
\B_mantissa_ext[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[22]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[20]_i_3_n_0\,
      O => \B_mantissa_ext[20]_i_2_n_0\
    );
\B_mantissa_ext[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[20]\,
      I1 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I3 => \B_mantissa_ext_reg_n_0_[24]\,
      I4 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      O => \B_mantissa_ext[20]_i_3_n_0\
    );
\B_mantissa_ext[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(18),
      I1 => state(0),
      I2 => \B_mantissa_ext[22]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[21]_i_2_n_0\,
      O => B_mantissa_ext(21)
    );
\B_mantissa_ext[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I1 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I2 => \B_mantissa_ext_reg_n_0_[23]\,
      I3 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I4 => \Control_Unit.shift_amount[1]_i_3_n_0\,
      I5 => \B_mantissa_ext[21]_i_3_n_0\,
      O => \B_mantissa_ext[21]_i_2_n_0\
    );
\B_mantissa_ext[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[21]\,
      I1 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I3 => \B_mantissa_ext_reg_n_0_[25]\,
      I4 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      O => \B_mantissa_ext[21]_i_3_n_0\
    );
\B_mantissa_ext[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(19),
      I1 => state(0),
      I2 => \B_mantissa_ext[23]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[22]_i_2_n_0\,
      O => B_mantissa_ext(22)
    );
\B_mantissa_ext[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400FFFF04000000"
    )
        port map (
      I0 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I1 => \B_mantissa_ext_reg_n_0_[24]\,
      I2 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I3 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I4 => \Control_Unit.shift_amount[1]_i_3_n_0\,
      I5 => \B_mantissa_ext[22]_i_3_n_0\,
      O => \B_mantissa_ext[22]_i_2_n_0\
    );
\B_mantissa_ext[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[22]\,
      I1 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I3 => \B_mantissa_ext_reg_n_0_[26]\,
      I4 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      O => \B_mantissa_ext[22]_i_3_n_0\
    );
\B_mantissa_ext[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(20),
      I1 => state(0),
      I2 => \B_mantissa_ext[24]_i_3_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[23]_i_2_n_0\,
      O => B_mantissa_ext(23)
    );
\B_mantissa_ext[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000B00080"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[25]\,
      I1 => \Control_Unit.shift_amount[1]_i_3_n_0\,
      I2 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I3 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[23]\,
      I5 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      O => \B_mantissa_ext[23]_i_2_n_0\
    );
\B_mantissa_ext[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(21),
      I1 => state(0),
      I2 => \B_mantissa_ext[24]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[24]_i_3_n_0\,
      O => B_mantissa_ext(24)
    );
\B_mantissa_ext[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I1 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I2 => \B_mantissa_ext_reg_n_0_[25]\,
      I3 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I4 => \Control_Unit.shift_amount[1]_i_3_n_0\,
      O => \B_mantissa_ext[24]_i_2_n_0\
    );
\B_mantissa_ext[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000B0800000000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[26]\,
      I1 => \Control_Unit.shift_amount[1]_i_3_n_0\,
      I2 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I3 => \B_mantissa_ext_reg_n_0_[24]\,
      I4 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I5 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      O => \B_mantissa_ext[24]_i_3_n_0\
    );
\B_mantissa_ext[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => B_sgn_reg_0(22),
      I1 => state(0),
      I2 => \B_mantissa_ext[25]_i_2_n_0\,
      I3 => \B_mantissa_ext[25]_i_3_n_0\,
      I4 => \B_mantissa_ext[25]_i_4_n_0\,
      I5 => \Control_Unit.shift_amount[1]_i_3_n_0\,
      O => B_mantissa_ext(25)
    );
\B_mantissa_ext[25]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I1 => \B_mantissa_ext_reg_n_0_[26]\,
      I2 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I3 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      O => \B_mantissa_ext[25]_i_2_n_0\
    );
\B_mantissa_ext[25]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A_exp_s(0),
      I1 => B_exp_s(0),
      O => \B_mantissa_ext[25]_i_3_n_0\
    );
\B_mantissa_ext[25]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I1 => \B_mantissa_ext_reg_n_0_[25]\,
      I2 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I3 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      O => \B_mantissa_ext[25]_i_4_n_0\
    );
\B_mantissa_ext[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFAAAAAAAAAAAA"
    )
        port map (
      I0 => A_exp_s0,
      I1 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I3 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I4 => \B_mantissa_ext[26]_i_3_n_0\,
      I5 => \state1_inferred__0/i__carry_n_0\,
      O => B_mantissa_ext0
    );
\B_mantissa_ext[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAAAAAAAAAA"
    )
        port map (
      I0 => state(0),
      I1 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I2 => \B_mantissa_ext_reg_n_0_[26]\,
      I3 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I4 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I5 => \B_mantissa_ext[26]_i_4_n_0\,
      O => B_mantissa_ext(26)
    );
\B_mantissa_ext[26]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst_fp,
      I1 => state(1),
      I2 => state(0),
      O => \B_mantissa_ext[26]_i_3_n_0\
    );
\B_mantissa_ext[26]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_exp_s(1),
      I1 => A_exp_s(1),
      I2 => B_exp_s(0),
      I3 => A_exp_s(0),
      O => \B_mantissa_ext[26]_i_4_n_0\
    );
\B_mantissa_ext[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30A0A030"
    )
        port map (
      I0 => \B_mantissa_ext[3]_i_2_n_0\,
      I1 => \B_mantissa_ext[2]_i_2_n_0\,
      I2 => state(1),
      I3 => B_exp_s(0),
      I4 => A_exp_s(0),
      O => B_mantissa_ext(2)
    );
\B_mantissa_ext[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[4]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[2]_i_3_n_0\,
      O => \B_mantissa_ext[2]_i_2_n_0\
    );
\B_mantissa_ext[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_mantissa_ext[2]_i_4_n_0\,
      I1 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I2 => \B_mantissa_ext[6]_i_4_n_0\,
      O => \B_mantissa_ext[2]_i_3_n_0\
    );
\B_mantissa_ext[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[26]\,
      I1 => \B_mantissa_ext_reg_n_0_[10]\,
      I2 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I3 => \B_mantissa_ext_reg_n_0_[18]\,
      I4 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I5 => \B_mantissa_ext_reg_n_0_[2]\,
      O => \B_mantissa_ext[2]_i_4_n_0\
    );
\B_mantissa_ext[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(0),
      I1 => state(0),
      I2 => \B_mantissa_ext[4]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[3]_i_2_n_0\,
      O => B_mantissa_ext(3)
    );
\B_mantissa_ext[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[5]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[3]_i_3_n_0\,
      O => \B_mantissa_ext[3]_i_2_n_0\
    );
\B_mantissa_ext[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_mantissa_ext[3]_i_4_n_0\,
      I1 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I2 => \B_mantissa_ext[7]_i_4_n_0\,
      O => \B_mantissa_ext[3]_i_3_n_0\
    );
\B_mantissa_ext[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F00ACAC"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[19]\,
      I1 => \B_mantissa_ext_reg_n_0_[3]\,
      I2 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I3 => \B_mantissa_ext_reg_n_0_[11]\,
      I4 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      O => \B_mantissa_ext[3]_i_4_n_0\
    );
\B_mantissa_ext[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(1),
      I1 => state(0),
      I2 => \B_mantissa_ext[5]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[4]_i_2_n_0\,
      O => B_mantissa_ext(4)
    );
\B_mantissa_ext[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AA3A33A3AA33AA3"
    )
        port map (
      I0 => \B_mantissa_ext[6]_i_3_n_0\,
      I1 => \B_mantissa_ext[4]_i_3_n_0\,
      I2 => B_exp_s(1),
      I3 => A_exp_s(1),
      I4 => A_exp_s(0),
      I5 => B_exp_s(0),
      O => \B_mantissa_ext[4]_i_2_n_0\
    );
\B_mantissa_ext[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \B_mantissa_ext[8]_i_4_n_0\,
      I1 => \B_mantissa_ext[0]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      O => \B_mantissa_ext[4]_i_3_n_0\
    );
\B_mantissa_ext[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(2),
      I1 => state(0),
      I2 => \B_mantissa_ext[6]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[5]_i_2_n_0\,
      O => B_mantissa_ext(5)
    );
\B_mantissa_ext[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[7]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[5]_i_3_n_0\,
      O => \B_mantissa_ext[5]_i_2_n_0\
    );
\B_mantissa_ext[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_mantissa_ext[1]_i_4_n_0\,
      I1 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I2 => \B_mantissa_ext[9]_i_4_n_0\,
      O => \B_mantissa_ext[5]_i_3_n_0\
    );
\B_mantissa_ext[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(3),
      I1 => state(0),
      I2 => \B_mantissa_ext[7]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[6]_i_2_n_0\,
      O => B_mantissa_ext(6)
    );
\B_mantissa_ext[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[8]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[6]_i_3_n_0\,
      O => \B_mantissa_ext[6]_i_2_n_0\
    );
\B_mantissa_ext[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \B_mantissa_ext[10]_i_4_n_0\,
      I1 => \B_mantissa_ext[6]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      O => \B_mantissa_ext[6]_i_3_n_0\
    );
\B_mantissa_ext[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5F503F3"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[22]\,
      I1 => \B_mantissa_ext_reg_n_0_[6]\,
      I2 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I3 => \B_mantissa_ext_reg_n_0_[14]\,
      I4 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      O => \B_mantissa_ext[6]_i_4_n_0\
    );
\B_mantissa_ext[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(4),
      I1 => state(0),
      I2 => \B_mantissa_ext[8]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[7]_i_2_n_0\,
      O => B_mantissa_ext(7)
    );
\B_mantissa_ext[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[9]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[7]_i_3_n_0\,
      O => \B_mantissa_ext[7]_i_2_n_0\
    );
\B_mantissa_ext[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B888B888BB8888"
    )
        port map (
      I0 => \B_mantissa_ext[7]_i_4_n_0\,
      I1 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I2 => \B_mantissa_ext_reg_n_0_[19]\,
      I3 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[11]\,
      I5 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      O => \B_mantissa_ext[7]_i_3_n_0\
    );
\B_mantissa_ext[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[15]\,
      I1 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I2 => \B_mantissa_ext_reg_n_0_[23]\,
      I3 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[7]\,
      O => \B_mantissa_ext[7]_i_4_n_0\
    );
\B_mantissa_ext[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(5),
      I1 => state(0),
      I2 => \B_mantissa_ext[9]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[8]_i_2_n_0\,
      O => B_mantissa_ext(8)
    );
\B_mantissa_ext[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[10]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[8]_i_3_n_0\,
      O => \B_mantissa_ext[8]_i_2_n_0\
    );
\B_mantissa_ext[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00B800B8"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[20]\,
      I1 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I2 => \B_mantissa_ext_reg_n_0_[12]\,
      I3 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I4 => \B_mantissa_ext[8]_i_4_n_0\,
      I5 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      O => \B_mantissa_ext[8]_i_3_n_0\
    );
\B_mantissa_ext[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5F5303F"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[16]\,
      I1 => \B_mantissa_ext_reg_n_0_[24]\,
      I2 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I3 => \B_mantissa_ext_reg_n_0_[8]\,
      I4 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      O => \B_mantissa_ext[8]_i_4_n_0\
    );
\B_mantissa_ext[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => B_sgn_reg_0(6),
      I1 => state(0),
      I2 => \B_mantissa_ext[10]_i_2_n_0\,
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[9]_i_2_n_0\,
      O => B_mantissa_ext(9)
    );
\B_mantissa_ext[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEEBEB28822828"
    )
        port map (
      I0 => \B_mantissa_ext[11]_i_3_n_0\,
      I1 => B_exp_s(1),
      I2 => A_exp_s(1),
      I3 => A_exp_s(0),
      I4 => B_exp_s(0),
      I5 => \B_mantissa_ext[9]_i_3_n_0\,
      O => \B_mantissa_ext[9]_i_2_n_0\
    );
\B_mantissa_ext[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => \B_mantissa_ext[9]_i_4_n_0\,
      I1 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I2 => \B_mantissa_ext_reg_n_0_[21]\,
      I3 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[13]\,
      I5 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      O => \B_mantissa_ext[9]_i_3_n_0\
    );
\B_mantissa_ext[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0ACFC0"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[17]\,
      I1 => \B_mantissa_ext_reg_n_0_[25]\,
      I2 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I3 => \B_mantissa_ext_reg_n_0_[9]\,
      I4 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      O => \B_mantissa_ext[9]_i_4_n_0\
    );
\B_mantissa_ext_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(0),
      Q => \B_mantissa_ext_reg_n_0_[0]\,
      R => '0'
    );
\B_mantissa_ext_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(10),
      Q => \B_mantissa_ext_reg_n_0_[10]\,
      R => '0'
    );
\B_mantissa_ext_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(11),
      Q => \B_mantissa_ext_reg_n_0_[11]\,
      R => '0'
    );
\B_mantissa_ext_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(12),
      Q => \B_mantissa_ext_reg_n_0_[12]\,
      R => '0'
    );
\B_mantissa_ext_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(13),
      Q => \B_mantissa_ext_reg_n_0_[13]\,
      R => '0'
    );
\B_mantissa_ext_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(14),
      Q => \B_mantissa_ext_reg_n_0_[14]\,
      R => '0'
    );
\B_mantissa_ext_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(15),
      Q => \B_mantissa_ext_reg_n_0_[15]\,
      R => '0'
    );
\B_mantissa_ext_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(16),
      Q => \B_mantissa_ext_reg_n_0_[16]\,
      R => '0'
    );
\B_mantissa_ext_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(17),
      Q => \B_mantissa_ext_reg_n_0_[17]\,
      R => '0'
    );
\B_mantissa_ext_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(18),
      Q => \B_mantissa_ext_reg_n_0_[18]\,
      R => '0'
    );
\B_mantissa_ext_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(19),
      Q => \B_mantissa_ext_reg_n_0_[19]\,
      R => '0'
    );
\B_mantissa_ext_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(1),
      Q => \B_mantissa_ext_reg_n_0_[1]\,
      R => '0'
    );
\B_mantissa_ext_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(20),
      Q => \B_mantissa_ext_reg_n_0_[20]\,
      R => '0'
    );
\B_mantissa_ext_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(21),
      Q => \B_mantissa_ext_reg_n_0_[21]\,
      R => '0'
    );
\B_mantissa_ext_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(22),
      Q => \B_mantissa_ext_reg_n_0_[22]\,
      R => '0'
    );
\B_mantissa_ext_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(23),
      Q => \B_mantissa_ext_reg_n_0_[23]\,
      R => '0'
    );
\B_mantissa_ext_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(24),
      Q => \B_mantissa_ext_reg_n_0_[24]\,
      R => '0'
    );
\B_mantissa_ext_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(25),
      Q => \B_mantissa_ext_reg_n_0_[25]\,
      R => '0'
    );
\B_mantissa_ext_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(26),
      Q => \B_mantissa_ext_reg_n_0_[26]\,
      R => '0'
    );
\B_mantissa_ext_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(2),
      Q => \B_mantissa_ext_reg_n_0_[2]\,
      R => '0'
    );
\B_mantissa_ext_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(3),
      Q => \B_mantissa_ext_reg_n_0_[3]\,
      R => '0'
    );
\B_mantissa_ext_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(4),
      Q => \B_mantissa_ext_reg_n_0_[4]\,
      R => '0'
    );
\B_mantissa_ext_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(5),
      Q => \B_mantissa_ext_reg_n_0_[5]\,
      R => '0'
    );
\B_mantissa_ext_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(6),
      Q => \B_mantissa_ext_reg_n_0_[6]\,
      R => '0'
    );
\B_mantissa_ext_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(7),
      Q => \B_mantissa_ext_reg_n_0_[7]\,
      R => '0'
    );
\B_mantissa_ext_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(8),
      Q => \B_mantissa_ext_reg_n_0_[8]\,
      R => '0'
    );
\B_mantissa_ext_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => B_mantissa_ext0,
      D => B_mantissa_ext(9),
      Q => \B_mantissa_ext_reg_n_0_[9]\,
      R => '0'
    );
B_sgn_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B_sgn_reg_1,
      I1 => B_sgn_reg_0(31),
      O => B_sgn_i_1_n_0
    );
B_sgn_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => A_exp_s0,
      D => B_sgn_i_1_n_0,
      Q => B_sgn,
      R => '0'
    );
\Control_Unit.shift_amount[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4774"
    )
        port map (
      I0 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => A_exp_s(0),
      I3 => B_exp_s(0),
      O => shift_amount(0)
    );
\Control_Unit.shift_amount[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B0000000B000B"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[25]\,
      I1 => \final_mantissa_reg_n_0_[24]\,
      I2 => \Control_Unit.shift_amount[0]_i_3_n_0\,
      I3 => \final_mantissa_reg_n_0_[26]\,
      I4 => \Control_Unit.shift_amount[0]_i_4_n_0\,
      I5 => \Control_Unit.shift_amount[0]_i_5_n_0\,
      O => \Control_Unit.shift_amount[0]_i_2_n_0\
    );
\Control_Unit.shift_amount[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555500005510"
    )
        port map (
      I0 => \final_mantissa[26]_i_10_n_0\,
      I1 => \final_mantissa_reg_n_0_[19]\,
      I2 => \final_mantissa_reg_n_0_[18]\,
      I3 => \final_mantissa_reg_n_0_[20]\,
      I4 => \final_mantissa_reg_n_0_[21]\,
      I5 => \final_mantissa_reg_n_0_[22]\,
      O => \Control_Unit.shift_amount[0]_i_3_n_0\
    );
\Control_Unit.shift_amount[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBBABBBABA"
    )
        port map (
      I0 => \Control_Unit.shift_amount[0]_i_6_n_0\,
      I1 => \final_exp_s[8]_i_5_n_0\,
      I2 => \final_mantissa_reg_n_0_[7]\,
      I3 => \final_mantissa_reg_n_0_[6]\,
      I4 => \final_mantissa_reg_n_0_[5]\,
      I5 => \Control_Unit.shift_amount[0]_i_7_n_0\,
      O => \Control_Unit.shift_amount[0]_i_4_n_0\
    );
\Control_Unit.shift_amount[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000FFAB"
    )
        port map (
      I0 => \Control_Unit.shift_amount[0]_i_8_n_0\,
      I1 => \Control_Unit.shift_amount[4]_i_11_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_9_n_0\,
      I3 => \final_mantissa_reg_n_0_[14]\,
      I4 => \final_mantissa_reg_n_0_[15]\,
      I5 => \final_mantissa_reg_n_0_[16]\,
      O => \Control_Unit.shift_amount[0]_i_5_n_0\
    );
\Control_Unit.shift_amount[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[24]\,
      I1 => \final_mantissa_reg_n_0_[25]\,
      I2 => \final_mantissa_reg_n_0_[23]\,
      I3 => \final_mantissa[26]_i_11_n_0\,
      O => \Control_Unit.shift_amount[0]_i_6_n_0\
    );
\Control_Unit.shift_amount[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555511110001"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[4]\,
      I1 => \final_mantissa_reg_n_0_[2]\,
      I2 => \final_mantissa_reg_n_0_[0]\,
      I3 => \shift_amount__0\(0),
      I4 => \final_mantissa_reg_n_0_[1]\,
      I5 => \final_mantissa_reg_n_0_[3]\,
      O => \Control_Unit.shift_amount[0]_i_7_n_0\
    );
\Control_Unit.shift_amount[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF5504"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[11]\,
      I1 => \final_mantissa_reg_n_0_[8]\,
      I2 => \final_mantissa_reg_n_0_[9]\,
      I3 => \final_mantissa_reg_n_0_[10]\,
      I4 => \final_mantissa_reg_n_0_[12]\,
      I5 => \final_mantissa_reg_n_0_[13]\,
      O => \Control_Unit.shift_amount[0]_i_8_n_0\
    );
\Control_Unit.shift_amount[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[12]\,
      I1 => \final_mantissa_reg_n_0_[13]\,
      O => \Control_Unit.shift_amount[0]_i_9_n_0\
    );
\Control_Unit.shift_amount[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \Control_Unit.shift_amount[1]_i_2_n_0\,
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \Control_Unit.shift_amount[1]_i_3_n_0\,
      I3 => \state1_inferred__0/i__carry_n_0\,
      I4 => \Control_Unit.shift_amount[1]_i_4_n_0\,
      O => shift_amount(1)
    );
\Control_Unit.shift_amount[1]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[6]\,
      I1 => \final_mantissa_reg_n_0_[7]\,
      O => \Control_Unit.shift_amount[1]_i_10_n_0\
    );
\Control_Unit.shift_amount[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5455545454555455"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[26]\,
      I1 => \final_mantissa_reg_n_0_[24]\,
      I2 => \final_mantissa_reg_n_0_[25]\,
      I3 => \final_mantissa_reg_n_0_[23]\,
      I4 => \Control_Unit.shift_amount[1]_i_5_n_0\,
      I5 => \Control_Unit.shift_amount[1]_i_6_n_0\,
      O => \Control_Unit.shift_amount[1]_i_2_n_0\
    );
\Control_Unit.shift_amount[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => B_exp_s(1),
      I1 => A_exp_s(1),
      I2 => A_exp_s(0),
      I3 => B_exp_s(0),
      O => \Control_Unit.shift_amount[1]_i_3_n_0\
    );
\Control_Unit.shift_amount[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => B_exp_s(0),
      I1 => A_exp_s(0),
      I2 => B_exp_s(1),
      I3 => A_exp_s(1),
      O => \Control_Unit.shift_amount[1]_i_4_n_0\
    );
\Control_Unit.shift_amount[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DDDDDDDF"
    )
        port map (
      I0 => \Control_Unit.shift_amount[1]_i_7_n_0\,
      I1 => \final_mantissa_reg_n_0_[16]\,
      I2 => \Control_Unit.shift_amount[1]_i_8_n_0\,
      I3 => \final_mantissa_reg_n_0_[14]\,
      I4 => \final_mantissa_reg_n_0_[15]\,
      I5 => \final_mantissa[26]_i_11_n_0\,
      O => \Control_Unit.shift_amount[1]_i_5_n_0\
    );
\Control_Unit.shift_amount[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAFFEF"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[22]\,
      I1 => \final_mantissa_reg_n_0_[18]\,
      I2 => \final_mantissa_reg_n_0_[17]\,
      I3 => \final_mantissa_reg_n_0_[19]\,
      I4 => \final_mantissa_reg_n_0_[20]\,
      I5 => \final_mantissa_reg_n_0_[21]\,
      O => \Control_Unit.shift_amount[1]_i_6_n_0\
    );
\Control_Unit.shift_amount[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF01"
    )
        port map (
      I0 => \Control_Unit.shift_amount[1]_i_9_n_0\,
      I1 => \final_mantissa_reg_n_0_[4]\,
      I2 => \final_mantissa_reg_n_0_[5]\,
      I3 => \Control_Unit.shift_amount[1]_i_10_n_0\,
      I4 => \Control_Unit.shift_amount[4]_i_11_n_0\,
      I5 => \Control_Unit.shift_amount[2]_i_7_n_0\,
      O => \Control_Unit.shift_amount[1]_i_7_n_0\
    );
\Control_Unit.shift_amount[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110111011101111"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[13]\,
      I1 => \final_mantissa_reg_n_0_[12]\,
      I2 => \final_mantissa_reg_n_0_[10]\,
      I3 => \final_mantissa_reg_n_0_[11]\,
      I4 => \final_mantissa_reg_n_0_[8]\,
      I5 => \final_mantissa_reg_n_0_[9]\,
      O => \Control_Unit.shift_amount[1]_i_8_n_0\
    );
\Control_Unit.shift_amount[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111110"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[3]\,
      I1 => \final_mantissa_reg_n_0_[2]\,
      I2 => \final_mantissa_reg_n_0_[0]\,
      I3 => \final_mantissa_reg_n_0_[1]\,
      I4 => \shift_amount__0\(1),
      O => \Control_Unit.shift_amount[1]_i_9_n_0\
    );
\Control_Unit.shift_amount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      I3 => \state1_inferred__0/i__carry_n_0\,
      I4 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      O => shift_amount(2)
    );
\Control_Unit.shift_amount[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFAAAAAAAAAA"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[26]\,
      I1 => \Control_Unit.shift_amount[3]_i_7_n_0\,
      I2 => \shift_amount__0\(2),
      I3 => \Control_Unit.shift_amount[3]_i_6_n_0\,
      I4 => \Control_Unit.shift_amount[2]_i_5_n_0\,
      I5 => \Control_Unit.shift_amount[2]_i_6_n_0\,
      O => \Control_Unit.shift_amount[2]_i_2_n_0\
    );
\Control_Unit.shift_amount[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9699999966669699"
    )
        port map (
      I0 => B_exp_s(2),
      I1 => A_exp_s(2),
      I2 => A_exp_s(0),
      I3 => B_exp_s(0),
      I4 => B_exp_s(1),
      I5 => A_exp_s(1),
      O => \Control_Unit.shift_amount[2]_i_3_n_0\
    );
\Control_Unit.shift_amount[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0FB4F044F04B0FB"
    )
        port map (
      I0 => B_exp_s(0),
      I1 => A_exp_s(0),
      I2 => B_exp_s(1),
      I3 => A_exp_s(1),
      I4 => B_exp_s(2),
      I5 => A_exp_s(2),
      O => \Control_Unit.shift_amount[2]_i_4_n_0\
    );
\Control_Unit.shift_amount[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEFE"
    )
        port map (
      I0 => \final_mantissa[26]_i_11_n_0\,
      I1 => \final_mantissa[26]_i_10_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_11_n_0\,
      I3 => \Control_Unit.shift_amount[2]_i_7_n_0\,
      I4 => \final_mantissa_reg_n_0_[16]\,
      O => \Control_Unit.shift_amount[2]_i_5_n_0\
    );
\Control_Unit.shift_amount[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEF"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[25]\,
      I1 => \final_mantissa_reg_n_0_[24]\,
      I2 => \final_mantissa_reg_n_0_[22]\,
      I3 => \final_mantissa_reg_n_0_[21]\,
      I4 => \final_mantissa_reg_n_0_[20]\,
      I5 => \final_mantissa_reg_n_0_[23]\,
      O => \Control_Unit.shift_amount[2]_i_6_n_0\
    );
\Control_Unit.shift_amount[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[15]\,
      I1 => \final_mantissa_reg_n_0_[14]\,
      I2 => \final_mantissa_reg_n_0_[13]\,
      I3 => \final_mantissa_reg_n_0_[12]\,
      O => \Control_Unit.shift_amount[2]_i_7_n_0\
    );
\Control_Unit.shift_amount[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D1FFD1"
    )
        port map (
      I0 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I1 => \state1_inferred__0/i__carry_n_0\,
      I2 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => shift_amount(3)
    );
\Control_Unit.shift_amount[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BD4D42B"
    )
        port map (
      I0 => B_exp_s(2),
      I1 => A_exp_s(2),
      I2 => \Control_Unit.shift_amount[3]_i_5_n_0\,
      I3 => B_exp_s(3),
      I4 => A_exp_s(3),
      O => \Control_Unit.shift_amount[3]_i_2_n_0\
    );
\Control_Unit.shift_amount[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96669996"
    )
        port map (
      I0 => B_exp_s(3),
      I1 => A_exp_s(3),
      I2 => \Control_Unit.shift_amount[4]_i_8_n_0\,
      I3 => B_exp_s(2),
      I4 => A_exp_s(2),
      O => \Control_Unit.shift_amount[3]_i_3_n_0\
    );
\Control_Unit.shift_amount[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBFAAAA"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I1 => \Control_Unit.shift_amount[3]_i_6_n_0\,
      I2 => \Control_Unit.shift_amount[3]_i_7_n_0\,
      I3 => \shift_amount__0\(3),
      I4 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      O => \Control_Unit.shift_amount[3]_i_4_n_0\
    );
\Control_Unit.shift_amount[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => A_exp_s(1),
      I1 => B_exp_s(1),
      I2 => A_exp_s(0),
      I3 => B_exp_s(0),
      O => \Control_Unit.shift_amount[3]_i_5_n_0\
    );
\Control_Unit.shift_amount[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_15_n_0\,
      I1 => \Control_Unit.shift_amount[4]_i_11_n_0\,
      I2 => \final_mantissa_reg_n_0_[4]\,
      I3 => \final_mantissa_reg_n_0_[5]\,
      I4 => \final_mantissa_reg_n_0_[6]\,
      I5 => \final_mantissa_reg_n_0_[7]\,
      O => \Control_Unit.shift_amount[3]_i_6_n_0\
    );
\Control_Unit.shift_amount[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[3]\,
      I1 => \final_mantissa_reg_n_0_[2]\,
      I2 => \final_mantissa_reg_n_0_[1]\,
      I3 => \final_mantissa_reg_n_0_[0]\,
      O => \Control_Unit.shift_amount[3]_i_7_n_0\
    );
\Control_Unit.shift_amount[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAFEAAAA"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_3_n_0\,
      I1 => \state1_inferred__0/i__carry_n_0\,
      I2 => \state1_inferred__1/i__carry_n_0\,
      I3 => rst_fp,
      I4 => state(1),
      I5 => state(0),
      O => shift_amount0
    );
\Control_Unit.shift_amount[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => A_exp_s(2),
      I1 => B_exp_s(2),
      I2 => A_exp_s(3),
      I3 => B_exp_s(3),
      O => \Control_Unit.shift_amount[4]_i_10_n_0\
    );
\Control_Unit.shift_amount[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[9]\,
      I1 => \final_mantissa_reg_n_0_[8]\,
      I2 => \final_mantissa_reg_n_0_[11]\,
      I3 => \final_mantissa_reg_n_0_[10]\,
      O => \Control_Unit.shift_amount[4]_i_11_n_0\
    );
\Control_Unit.shift_amount[4]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[4]\,
      I1 => \final_mantissa_reg_n_0_[5]\,
      I2 => \final_mantissa_reg_n_0_[6]\,
      I3 => \final_mantissa_reg_n_0_[7]\,
      I4 => \Control_Unit.shift_amount[3]_i_7_n_0\,
      O => \Control_Unit.shift_amount[4]_i_12_n_0\
    );
\Control_Unit.shift_amount[4]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[17]\,
      I1 => \final_mantissa_reg_n_0_[18]\,
      I2 => \final_mantissa_reg_n_0_[19]\,
      I3 => \Control_Unit.shift_amount[4]_i_15_n_0\,
      O => \Control_Unit.shift_amount[4]_i_13_n_0\
    );
\Control_Unit.shift_amount[4]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[20]\,
      I1 => \final_mantissa_reg_n_0_[21]\,
      I2 => \final_mantissa_reg_n_0_[22]\,
      I3 => \final_mantissa[26]_i_10_n_0\,
      I4 => \final_mantissa_reg_n_0_[26]\,
      O => \Control_Unit.shift_amount[4]_i_14_n_0\
    );
\Control_Unit.shift_amount[4]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[13]\,
      I1 => \final_mantissa_reg_n_0_[12]\,
      I2 => \final_mantissa_reg_n_0_[14]\,
      I3 => \final_mantissa_reg_n_0_[15]\,
      I4 => \final_mantissa_reg_n_0_[16]\,
      O => \Control_Unit.shift_amount[4]_i_15_n_0\
    );
\Control_Unit.shift_amount[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF008D8D"
    )
        port map (
      I0 => \state1_inferred__0/i__carry_n_0\,
      I1 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I4 => \FSM_sequential_state_reg_n_0_[2]\,
      O => shift_amount(4)
    );
\Control_Unit.shift_amount[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \final_exp_s[8]_i_3_n_0\,
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => state(0),
      I3 => p_2_in,
      I4 => \final_mantissa_reg_n_0_[27]\,
      I5 => rst_fp,
      O => \Control_Unit.shift_amount[4]_i_3_n_0\
    );
\Control_Unit.shift_amount[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AA55A665AA5565"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_7_n_0\,
      I1 => A_exp_s(2),
      I2 => B_exp_s(2),
      I3 => A_exp_s(3),
      I4 => B_exp_s(3),
      I5 => \Control_Unit.shift_amount[4]_i_8_n_0\,
      O => \Control_Unit.shift_amount[4]_i_4_n_0\
    );
\Control_Unit.shift_amount[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9969666699699969"
    )
        port map (
      I0 => A_exp_s(4),
      I1 => B_exp_s(4),
      I2 => \Control_Unit.shift_amount[4]_i_9_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_10_n_0\,
      I4 => B_exp_s(3),
      I5 => A_exp_s(3),
      O => \Control_Unit.shift_amount[4]_i_5_n_0\
    );
\Control_Unit.shift_amount[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => \shift_amount__0\(4),
      I1 => \Control_Unit.shift_amount[4]_i_11_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_12_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I4 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      O => \Control_Unit.shift_amount[4]_i_6_n_0\
    );
\Control_Unit.shift_amount[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => B_exp_s(4),
      I1 => A_exp_s(4),
      O => \Control_Unit.shift_amount[4]_i_7_n_0\
    );
\Control_Unit.shift_amount[4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => A_exp_s(1),
      I1 => B_exp_s(1),
      I2 => B_exp_s(0),
      I3 => A_exp_s(0),
      O => \Control_Unit.shift_amount[4]_i_8_n_0\
    );
\Control_Unit.shift_amount[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04FFFF4F044F04"
    )
        port map (
      I0 => B_exp_s(0),
      I1 => A_exp_s(0),
      I2 => B_exp_s(1),
      I3 => A_exp_s(1),
      I4 => B_exp_s(2),
      I5 => A_exp_s(2),
      O => \Control_Unit.shift_amount[4]_i_9_n_0\
    );
\Control_Unit.shift_amount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => shift_amount0,
      D => shift_amount(0),
      Q => \shift_amount__0\(0),
      R => '0'
    );
\Control_Unit.shift_amount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => shift_amount0,
      D => shift_amount(1),
      Q => \shift_amount__0\(1),
      R => '0'
    );
\Control_Unit.shift_amount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => shift_amount0,
      D => shift_amount(2),
      Q => \shift_amount__0\(2),
      R => '0'
    );
\Control_Unit.shift_amount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => shift_amount0,
      D => shift_amount(3),
      Q => \shift_amount__0\(3),
      R => '0'
    );
\Control_Unit.shift_amount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => shift_amount0,
      D => shift_amount(4),
      Q => \shift_amount__0\(4),
      R => '0'
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3154"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \FSM_sequential_state_reg[2]_1\,
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001C"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => state(0),
      I2 => state(1),
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F03E0E0"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => state(0),
      I2 => state(1),
      I3 => \FSM_sequential_state_reg[2]_1\,
      I4 => \FSM_sequential_state_reg_n_0_[2]\,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02020202F2020202"
    )
        port map (
      I0 => \state1_inferred__1/i__carry_n_0\,
      I1 => \FSM_sequential_state[2]_i_3_n_0\,
      I2 => \state1_inferred__0/i__carry_n_0\,
      I3 => \Control_Unit.shift_amount[3]_i_3_n_0\,
      I4 => \Control_Unit.shift_amount[4]_i_4_n_0\,
      I5 => \Control_Unit.shift_amount[2]_i_3_n_0\,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_5_n_0\,
      I1 => \Control_Unit.shift_amount[3]_i_2_n_0\,
      I2 => \Control_Unit.shift_amount[2]_i_4_n_0\,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000FB08"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]_2\,
      I1 => \FSM_sequential_state_reg[0]_3\,
      I2 => \error_n_reg[0]\(0),
      I3 => \^add_done\,
      I4 => \error_n_reg[0]\(1),
      I5 => \FSM_sequential_state_reg[0]_4\,
      O => start_pid_reg(0)
    );
\FSM_sequential_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAAA80808080"
    )
        port map (
      I0 => \error_n_reg[0]\(0),
      I1 => \^add_done\,
      I2 => \error_n_reg[0]\(2),
      I3 => \FSM_sequential_state_reg[0]_2\,
      I4 => \error_n_reg[0]\(1),
      I5 => \error_n_reg[0]\(3),
      O => \FSM_sequential_state_reg[0]_1\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst_fp,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst_fp,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst_fp,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \FSM_sequential_state_reg_n_0_[2]\
    );
\control_output_u[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \error_n_reg[0]\(0),
      I1 => \error_n_reg[0]\(1),
      I2 => \error_n_reg[0]\(3),
      I3 => rst_fp,
      I4 => \^add_done\,
      O => \FSM_sequential_state_reg[0]_0\(0)
    );
\done_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE40"
    )
        port map (
      I0 => state(1),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => state(0),
      I3 => \^add_done\,
      O => \done_i_1__0_n_0\
    );
done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst_fp,
      D => \done_i_1__0_n_0\,
      Q => \^add_done\
    );
\error_n[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \error_n_reg[0]\(3),
      I2 => \error_n_reg[0]\(1),
      I3 => \error_n_reg[0]\(0),
      I4 => rst_fp,
      I5 => \^add_done\,
      O => \FSM_sequential_state_reg[2]_0\(0)
    );
final_exp_s0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => final_exp_s0_carry_n_0,
      CO(2) => final_exp_s0_carry_n_1,
      CO(1) => final_exp_s0_carry_n_2,
      CO(0) => final_exp_s0_carry_n_3,
      CYINIT => p_0_out(5),
      DI(3) => \final_exp_s_reg_n_0_[3]\,
      DI(2) => \final_exp_s_reg_n_0_[2]\,
      DI(1) => \final_exp_s_reg_n_0_[1]\,
      DI(0) => \final_exp_s_reg_n_0_[0]\,
      O(3 downto 0) => data0(3 downto 0),
      S(3) => final_exp_s0_carry_i_2_n_0,
      S(2) => final_exp_s0_carry_i_3_n_0,
      S(1) => final_exp_s0_carry_i_4_n_0,
      S(0) => final_exp_s0_carry_i_5_n_0
    );
\final_exp_s0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => final_exp_s0_carry_n_0,
      CO(3) => \final_exp_s0_carry__0_n_0\,
      CO(2) => \final_exp_s0_carry__0_n_1\,
      CO(1) => \final_exp_s0_carry__0_n_2\,
      CO(0) => \final_exp_s0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \final_exp_s_reg_n_0_[6]\,
      DI(2) => p_2_in,
      DI(1) => \final_exp_s0_carry__0_i_1_n_0\,
      DI(0) => \final_exp_s_reg_n_0_[4]\,
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \final_exp_s0_carry__0_i_2_n_0\,
      S(2) => \final_exp_s0_carry__0_i_3_n_0\,
      S(1) => \final_exp_s0_carry__0_i_4_n_0\,
      S(0) => \final_exp_s0_carry__0_i_5_n_0\
    );
\final_exp_s0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_2_in,
      O => \final_exp_s0_carry__0_i_1_n_0\
    );
\final_exp_s0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \final_exp_s_reg_n_0_[6]\,
      I1 => \final_exp_s_reg_n_0_[7]\,
      O => \final_exp_s0_carry__0_i_2_n_0\
    );
\final_exp_s0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_2_in,
      I1 => \final_exp_s_reg_n_0_[6]\,
      O => \final_exp_s0_carry__0_i_3_n_0\
    );
\final_exp_s0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_2_in,
      I1 => \final_exp_s_reg_n_0_[5]\,
      O => \final_exp_s0_carry__0_i_4_n_0\
    );
\final_exp_s0_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \final_exp_s_reg_n_0_[4]\,
      I1 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I2 => p_2_in,
      O => \final_exp_s0_carry__0_i_5_n_0\
    );
\final_exp_s0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \final_exp_s0_carry__0_n_0\,
      CO(3 downto 0) => \NLW_final_exp_s0_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_final_exp_s0_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(8),
      S(3 downto 1) => B"000",
      S(0) => \final_exp_s0_carry__1_i_1_n_0\
    );
\final_exp_s0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \final_exp_s_reg_n_0_[7]\,
      I1 => \final_exp_s_reg_n_0_[8]\,
      O => \final_exp_s0_carry__1_i_1_n_0\
    );
final_exp_s0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_2_in,
      O => p_0_out(5)
    );
final_exp_s0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \final_exp_s_reg_n_0_[3]\,
      I1 => p_2_in,
      I2 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => final_exp_s0_carry_i_2_n_0
    );
final_exp_s0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \final_exp_s_reg_n_0_[2]\,
      I1 => p_2_in,
      I2 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      O => final_exp_s0_carry_i_3_n_0
    );
final_exp_s0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \final_exp_s_reg_n_0_[1]\,
      I1 => p_2_in,
      I2 => \final_mantissa[1]_i_3_n_0\,
      O => final_exp_s0_carry_i_4_n_0
    );
final_exp_s0_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \final_exp_s_reg_n_0_[0]\,
      I1 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I2 => p_2_in,
      O => final_exp_s0_carry_i_5_n_0
    );
\final_exp_s[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => data0(0),
      I1 => \final_exp_s[8]_i_3_n_0\,
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => A_exp_s(0),
      I4 => \A_mantissa_ext[26]_i_3_n_0\,
      I5 => B_exp_s(0),
      O => \final_exp_s[0]_i_1_n_0\
    );
\final_exp_s[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => data0(1),
      I1 => \final_exp_s[8]_i_3_n_0\,
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => A_exp_s(1),
      I4 => \A_mantissa_ext[26]_i_3_n_0\,
      I5 => B_exp_s(1),
      O => \final_exp_s[1]_i_1_n_0\
    );
\final_exp_s[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => data0(2),
      I1 => \final_exp_s[8]_i_3_n_0\,
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => A_exp_s(2),
      I4 => \A_mantissa_ext[26]_i_3_n_0\,
      I5 => B_exp_s(2),
      O => \final_exp_s[2]_i_1_n_0\
    );
\final_exp_s[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => data0(3),
      I1 => \final_exp_s[8]_i_3_n_0\,
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => A_exp_s(3),
      I4 => \A_mantissa_ext[26]_i_3_n_0\,
      I5 => B_exp_s(3),
      O => \final_exp_s[3]_i_1_n_0\
    );
\final_exp_s[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => data0(4),
      I1 => \final_exp_s[8]_i_3_n_0\,
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => A_exp_s(4),
      I4 => \A_mantissa_ext[26]_i_3_n_0\,
      I5 => B_exp_s(4),
      O => \final_exp_s[4]_i_1_n_0\
    );
\final_exp_s[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => data0(5),
      I1 => \final_exp_s[8]_i_3_n_0\,
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => A_exp_s(5),
      I4 => \A_mantissa_ext[26]_i_3_n_0\,
      I5 => B_exp_s(5),
      O => \final_exp_s[5]_i_1_n_0\
    );
\final_exp_s[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => data0(6),
      I1 => \final_exp_s[8]_i_3_n_0\,
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => A_exp_s(6),
      I4 => \A_mantissa_ext[26]_i_3_n_0\,
      I5 => B_exp_s(6),
      O => \final_exp_s[6]_i_1_n_0\
    );
\final_exp_s[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => data0(7),
      I1 => \final_exp_s[8]_i_3_n_0\,
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => A_exp_s(7),
      I4 => \A_mantissa_ext[26]_i_3_n_0\,
      I5 => B_exp_s(7),
      O => \final_exp_s[7]_i_1_n_0\
    );
\final_exp_s[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111110001010"
    )
        port map (
      I0 => rst_fp,
      I1 => state(0),
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => p_2_in,
      I4 => \final_mantissa_reg_n_0_[27]\,
      I5 => state(1),
      O => \final_exp_s[8]_i_1_n_0\
    );
\final_exp_s[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(8),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \final_exp_s[8]_i_3_n_0\,
      O => \final_exp_s[8]_i_2_n_0\
    );
\final_exp_s[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_12_n_0\,
      I1 => \final_exp_s[8]_i_4_n_0\,
      I2 => \final_mantissa[26]_i_11_n_0\,
      I3 => \final_mantissa_reg_n_0_[27]\,
      I4 => p_2_in,
      I5 => \final_exp_s[8]_i_5_n_0\,
      O => \final_exp_s[8]_i_3_n_0\
    );
\final_exp_s[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[26]\,
      I1 => \final_mantissa_reg_n_0_[24]\,
      I2 => \final_mantissa_reg_n_0_[25]\,
      I3 => \final_mantissa_reg_n_0_[23]\,
      O => \final_exp_s[8]_i_4_n_0\
    );
\final_exp_s[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_11_n_0\,
      I1 => \final_mantissa_reg_n_0_[16]\,
      I2 => \final_mantissa_reg_n_0_[15]\,
      I3 => \final_mantissa_reg_n_0_[14]\,
      I4 => \final_mantissa_reg_n_0_[12]\,
      I5 => \final_mantissa_reg_n_0_[13]\,
      O => \final_exp_s[8]_i_5_n_0\
    );
\final_exp_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_exp_s[8]_i_1_n_0\,
      D => \final_exp_s[0]_i_1_n_0\,
      Q => \final_exp_s_reg_n_0_[0]\,
      R => '0'
    );
\final_exp_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_exp_s[8]_i_1_n_0\,
      D => \final_exp_s[1]_i_1_n_0\,
      Q => \final_exp_s_reg_n_0_[1]\,
      R => '0'
    );
\final_exp_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_exp_s[8]_i_1_n_0\,
      D => \final_exp_s[2]_i_1_n_0\,
      Q => \final_exp_s_reg_n_0_[2]\,
      R => '0'
    );
\final_exp_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_exp_s[8]_i_1_n_0\,
      D => \final_exp_s[3]_i_1_n_0\,
      Q => \final_exp_s_reg_n_0_[3]\,
      R => '0'
    );
\final_exp_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_exp_s[8]_i_1_n_0\,
      D => \final_exp_s[4]_i_1_n_0\,
      Q => \final_exp_s_reg_n_0_[4]\,
      R => '0'
    );
\final_exp_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_exp_s[8]_i_1_n_0\,
      D => \final_exp_s[5]_i_1_n_0\,
      Q => \final_exp_s_reg_n_0_[5]\,
      R => '0'
    );
\final_exp_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_exp_s[8]_i_1_n_0\,
      D => \final_exp_s[6]_i_1_n_0\,
      Q => \final_exp_s_reg_n_0_[6]\,
      R => '0'
    );
\final_exp_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_exp_s[8]_i_1_n_0\,
      D => \final_exp_s[7]_i_1_n_0\,
      Q => \final_exp_s_reg_n_0_[7]\,
      R => '0'
    );
\final_exp_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_exp_s[8]_i_1_n_0\,
      D => \final_exp_s[8]_i_2_n_0\,
      Q => \final_exp_s_reg_n_0_[8]\,
      R => '0'
    );
\final_mantissa[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF080808"
    )
        port map (
      I0 => p_2_in,
      I1 => \final_mantissa_reg_n_0_[1]\,
      I2 => state(1),
      I3 => in22(0),
      I4 => state(0),
      O => final_mantissa(0)
    );
\final_mantissa[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[1]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[1]\,
      O => \final_mantissa[0]_i_10_n_0\
    );
\final_mantissa[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[0]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[0]\,
      O => \final_mantissa[0]_i_11_n_0\
    );
\final_mantissa[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \A_sgn__0\,
      I1 => B_sgn,
      O => \final_mantissa[0]_i_3_n_0\
    );
\final_mantissa[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[3]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[3]\,
      O => p_1_out(3)
    );
\final_mantissa[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[2]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[2]\,
      O => p_1_out(2)
    );
\final_mantissa[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[1]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[1]\,
      O => p_1_out(1)
    );
\final_mantissa[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[0]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[0]\,
      O => p_1_out(0)
    );
\final_mantissa[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[3]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[3]\,
      O => \final_mantissa[0]_i_8_n_0\
    );
\final_mantissa[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[2]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[2]\,
      O => \final_mantissa[0]_i_9_n_0\
    );
\final_mantissa[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF008B"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[11]\,
      I1 => p_2_in,
      I2 => \final_mantissa[10]_i_2_n_0\,
      I3 => state(1),
      I4 => \final_mantissa[10]_i_3_n_0\,
      O => final_mantissa(10)
    );
\final_mantissa[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[13]_i_4_n_0\,
      I1 => \final_mantissa[11]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[12]_i_4_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[10]_i_4_n_0\,
      O => \final_mantissa[10]_i_2_n_0\
    );
\final_mantissa[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[9]\,
      I1 => \state1_inferred__0/i__carry_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[9]\,
      I3 => state(0),
      I4 => in22(10),
      I5 => state(1),
      O => \final_mantissa[10]_i_3_n_0\
    );
\final_mantissa[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47FFFF"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[7]\,
      I1 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I2 => \final_mantissa_reg_n_0_[3]\,
      I3 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I4 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[10]_i_4_n_0\
    );
\final_mantissa[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF008B"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[12]\,
      I1 => p_2_in,
      I2 => \final_mantissa[11]_i_2_n_0\,
      I3 => state(1),
      I4 => \final_mantissa[11]_i_3_n_0\,
      O => final_mantissa(11)
    );
\final_mantissa[11]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[11]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[11]\,
      O => \final_mantissa[11]_i_10_n_0\
    );
\final_mantissa[11]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[10]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[10]\,
      O => \final_mantissa[11]_i_11_n_0\
    );
\final_mantissa[11]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[9]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[9]\,
      O => \final_mantissa[11]_i_12_n_0\
    );
\final_mantissa[11]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[8]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[8]\,
      O => \final_mantissa[11]_i_13_n_0\
    );
\final_mantissa[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[14]_i_4_n_0\,
      I1 => \final_mantissa[12]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[13]_i_4_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[11]_i_4_n_0\,
      O => \final_mantissa[11]_i_2_n_0\
    );
\final_mantissa[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[10]\,
      I1 => \state1_inferred__0/i__carry_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[10]\,
      I3 => state(0),
      I4 => in22(11),
      I5 => state(1),
      O => \final_mantissa[11]_i_3_n_0\
    );
\final_mantissa[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF505FFFFF3F3F"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[8]\,
      I1 => \final_mantissa_reg_n_0_[0]\,
      I2 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I3 => \final_mantissa_reg_n_0_[4]\,
      I4 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I5 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[11]_i_4_n_0\
    );
\final_mantissa[11]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[11]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[11]\,
      O => p_1_out(11)
    );
\final_mantissa[11]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[10]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[10]\,
      O => p_1_out(10)
    );
\final_mantissa[11]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[9]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[9]\,
      O => p_1_out(9)
    );
\final_mantissa[11]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[8]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[8]\,
      O => p_1_out(8)
    );
\final_mantissa[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF008B"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[13]\,
      I1 => p_2_in,
      I2 => \final_mantissa[12]_i_2_n_0\,
      I3 => state(1),
      I4 => \final_mantissa[12]_i_3_n_0\,
      O => final_mantissa(12)
    );
\final_mantissa[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[15]_i_4_n_0\,
      I1 => \final_mantissa[13]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[14]_i_4_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[12]_i_4_n_0\,
      O => \final_mantissa[12]_i_2_n_0\
    );
\final_mantissa[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[11]\,
      I1 => \state1_inferred__0/i__carry_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[11]\,
      I3 => state(0),
      I4 => in22(12),
      I5 => state(1),
      O => \final_mantissa[12]_i_3_n_0\
    );
\final_mantissa[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF505FFFFF3F3F"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[9]\,
      I1 => \final_mantissa_reg_n_0_[1]\,
      I2 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I3 => \final_mantissa_reg_n_0_[5]\,
      I4 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I5 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[12]_i_4_n_0\
    );
\final_mantissa[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF008B"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[14]\,
      I1 => p_2_in,
      I2 => \final_mantissa[13]_i_2_n_0\,
      I3 => state(1),
      I4 => \final_mantissa[13]_i_3_n_0\,
      O => final_mantissa(13)
    );
\final_mantissa[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[16]_i_4_n_0\,
      I1 => \final_mantissa[14]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[15]_i_4_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[13]_i_4_n_0\,
      O => \final_mantissa[13]_i_2_n_0\
    );
\final_mantissa[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[12]\,
      I1 => \state1_inferred__0/i__carry_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[12]\,
      I3 => state(0),
      I4 => in22(13),
      I5 => state(1),
      O => \final_mantissa[13]_i_3_n_0\
    );
\final_mantissa[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF505FFFFF3F3F"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[10]\,
      I1 => \final_mantissa_reg_n_0_[2]\,
      I2 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I3 => \final_mantissa_reg_n_0_[6]\,
      I4 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I5 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[13]_i_4_n_0\
    );
\final_mantissa[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF008B"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[15]\,
      I1 => p_2_in,
      I2 => \final_mantissa[14]_i_2_n_0\,
      I3 => state(1),
      I4 => \final_mantissa[14]_i_3_n_0\,
      O => final_mantissa(14)
    );
\final_mantissa[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[17]_i_4_n_0\,
      I1 => \final_mantissa[15]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[16]_i_4_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[14]_i_4_n_0\,
      O => \final_mantissa[14]_i_2_n_0\
    );
\final_mantissa[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[13]\,
      I1 => \state1_inferred__0/i__carry_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[13]\,
      I3 => state(0),
      I4 => in22(14),
      I5 => state(1),
      O => \final_mantissa[14]_i_3_n_0\
    );
\final_mantissa[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF505FFFFF3F3F"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[11]\,
      I1 => \final_mantissa_reg_n_0_[3]\,
      I2 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I3 => \final_mantissa_reg_n_0_[7]\,
      I4 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I5 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[14]_i_4_n_0\
    );
\final_mantissa[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF008B"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[16]\,
      I1 => p_2_in,
      I2 => \final_mantissa[15]_i_2_n_0\,
      I3 => state(1),
      I4 => \final_mantissa[15]_i_3_n_0\,
      O => final_mantissa(15)
    );
\final_mantissa[15]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[12]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[12]\,
      O => p_1_out(12)
    );
\final_mantissa[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[15]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[15]\,
      O => \final_mantissa[15]_i_11_n_0\
    );
\final_mantissa[15]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[14]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[14]\,
      O => \final_mantissa[15]_i_12_n_0\
    );
\final_mantissa[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[13]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[13]\,
      O => \final_mantissa[15]_i_13_n_0\
    );
\final_mantissa[15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[12]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[12]\,
      O => \final_mantissa[15]_i_14_n_0\
    );
\final_mantissa[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[18]_i_4_n_0\,
      I1 => \final_mantissa[16]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[17]_i_4_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[15]_i_4_n_0\,
      O => \final_mantissa[15]_i_2_n_0\
    );
\final_mantissa[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[14]\,
      I1 => \state1_inferred__0/i__carry_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[14]\,
      I3 => state(0),
      I4 => in22(15),
      I5 => state(1),
      O => \final_mantissa[15]_i_3_n_0\
    );
\final_mantissa[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7477FFFF74770000"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[12]\,
      I1 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I3 => \final_mantissa_reg_n_0_[4]\,
      I4 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I5 => \final_mantissa[15]_i_6_n_0\,
      O => \final_mantissa[15]_i_4_n_0\
    );
\final_mantissa[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7744454477777577"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[8]\,
      I1 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I2 => \final_mantissa[22]_i_6_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I4 => \final_mantissa[22]_i_7_n_0\,
      I5 => \final_mantissa_reg_n_0_[0]\,
      O => \final_mantissa[15]_i_6_n_0\
    );
\final_mantissa[15]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[15]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[15]\,
      O => p_1_out(15)
    );
\final_mantissa[15]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[14]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[14]\,
      O => p_1_out(14)
    );
\final_mantissa[15]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[13]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[13]\,
      O => p_1_out(13)
    );
\final_mantissa[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF008B"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[17]\,
      I1 => p_2_in,
      I2 => \final_mantissa[16]_i_2_n_0\,
      I3 => state(1),
      I4 => \final_mantissa[16]_i_3_n_0\,
      O => final_mantissa(16)
    );
\final_mantissa[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[19]_i_5_n_0\,
      I1 => \final_mantissa[17]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[18]_i_4_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[16]_i_4_n_0\,
      O => \final_mantissa[16]_i_2_n_0\
    );
\final_mantissa[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[15]\,
      I1 => \state1_inferred__0/i__carry_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[15]\,
      I3 => state(0),
      I4 => in22(16),
      I5 => state(1),
      O => \final_mantissa[16]_i_3_n_0\
    );
\final_mantissa[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7477FFFF74770000"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[13]\,
      I1 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I3 => \final_mantissa_reg_n_0_[5]\,
      I4 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I5 => \final_mantissa[16]_i_5_n_0\,
      O => \final_mantissa[16]_i_4_n_0\
    );
\final_mantissa[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7744454477777577"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[9]\,
      I1 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I2 => \final_mantissa[22]_i_6_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I4 => \final_mantissa[22]_i_7_n_0\,
      I5 => \final_mantissa_reg_n_0_[1]\,
      O => \final_mantissa[16]_i_5_n_0\
    );
\final_mantissa[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF008B"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[18]\,
      I1 => p_2_in,
      I2 => \final_mantissa[17]_i_2_n_0\,
      I3 => state(1),
      I4 => \final_mantissa[17]_i_3_n_0\,
      O => final_mantissa(17)
    );
\final_mantissa[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[20]_i_6_n_0\,
      I1 => \final_mantissa[18]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[19]_i_5_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[17]_i_4_n_0\,
      O => \final_mantissa[17]_i_2_n_0\
    );
\final_mantissa[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[16]\,
      I1 => \state1_inferred__0/i__carry_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[16]\,
      I3 => state(0),
      I4 => in22(17),
      I5 => state(1),
      O => \final_mantissa[17]_i_3_n_0\
    );
\final_mantissa[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB8B88BBBB8BBB"
    )
        port map (
      I0 => \final_mantissa[21]_i_5_n_0\,
      I1 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I2 => \final_mantissa_reg_n_0_[10]\,
      I3 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I4 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I5 => \final_mantissa_reg_n_0_[2]\,
      O => \final_mantissa[17]_i_4_n_0\
    );
\final_mantissa[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF008B"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[19]\,
      I1 => p_2_in,
      I2 => \final_mantissa[18]_i_2_n_0\,
      I3 => state(1),
      I4 => \final_mantissa[18]_i_3_n_0\,
      O => final_mantissa(18)
    );
\final_mantissa[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[19]_i_4_n_0\,
      I1 => \final_mantissa[19]_i_5_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[20]_i_6_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[18]_i_4_n_0\,
      O => \final_mantissa[18]_i_2_n_0\
    );
\final_mantissa[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[17]\,
      I1 => \state1_inferred__0/i__carry_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[17]\,
      I3 => state(0),
      I4 => in22(18),
      I5 => state(1),
      O => \final_mantissa[18]_i_3_n_0\
    );
\final_mantissa[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB8B88BBBB8BBB"
    )
        port map (
      I0 => \final_mantissa[22]_i_5_n_0\,
      I1 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I2 => \final_mantissa_reg_n_0_[11]\,
      I3 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I4 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I5 => \final_mantissa_reg_n_0_[3]\,
      O => \final_mantissa[18]_i_4_n_0\
    );
\final_mantissa[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF008B"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[20]\,
      I1 => p_2_in,
      I2 => \final_mantissa[19]_i_2_n_0\,
      I3 => state(1),
      I4 => \final_mantissa[19]_i_3_n_0\,
      O => final_mantissa(19)
    );
\final_mantissa[19]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[17]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[17]\,
      O => p_1_out(17)
    );
\final_mantissa[19]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[16]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[16]\,
      O => p_1_out(16)
    );
\final_mantissa[19]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[19]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[19]\,
      O => \final_mantissa[19]_i_12_n_0\
    );
\final_mantissa[19]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[18]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[18]\,
      O => \final_mantissa[19]_i_13_n_0\
    );
\final_mantissa[19]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[17]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[17]\,
      O => \final_mantissa[19]_i_14_n_0\
    );
\final_mantissa[19]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[16]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[16]\,
      O => \final_mantissa[19]_i_15_n_0\
    );
\final_mantissa[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[20]_i_5_n_0\,
      I1 => \final_mantissa[20]_i_6_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[19]_i_4_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[19]_i_5_n_0\,
      O => \final_mantissa[19]_i_2_n_0\
    );
\final_mantissa[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[18]\,
      I1 => \state1_inferred__0/i__carry_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[18]\,
      I3 => state(0),
      I4 => in22(19),
      I5 => state(1),
      O => \final_mantissa[19]_i_3_n_0\
    );
\final_mantissa[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => \final_mantissa[25]_i_8_n_0\,
      I1 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I3 => \final_mantissa_reg_n_0_[10]\,
      I4 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I5 => \final_mantissa[21]_i_5_n_0\,
      O => \final_mantissa[19]_i_4_n_0\
    );
\final_mantissa[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AFCFCFA0AFC0C0"
    )
        port map (
      I0 => \final_mantissa[23]_i_19_n_0\,
      I1 => \final_mantissa[23]_i_20_n_0\,
      I2 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I3 => \final_mantissa_reg_n_0_[12]\,
      I4 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I5 => \final_mantissa[19]_i_7_n_0\,
      O => \final_mantissa[19]_i_5_n_0\
    );
\final_mantissa[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444440FFFFFFFF"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I1 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_12_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_11_n_0\,
      I4 => \shift_amount__0\(4),
      I5 => \final_mantissa_reg_n_0_[4]\,
      O => \final_mantissa[19]_i_7_n_0\
    );
\final_mantissa[19]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[19]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[19]\,
      O => p_1_out(19)
    );
\final_mantissa[19]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[18]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[18]\,
      O => p_1_out(18)
    );
\final_mantissa[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \final_mantissa[1]_i_2_n_0\,
      I1 => state(1),
      I2 => \final_mantissa_reg_n_0_[2]\,
      I3 => p_2_in,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[1]_i_4_n_0\,
      O => final_mantissa(1)
    );
\final_mantissa[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in22(1),
      I1 => state(0),
      I2 => \A_mantissa_ext_reg_n_0_[0]\,
      I3 => \state1_inferred__0/i__carry_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[0]\,
      O => \final_mantissa[1]_i_2_n_0\
    );
\final_mantissa[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000000F2"
    )
        port map (
      I0 => \Control_Unit.shift_amount[1]_i_6_n_0\,
      I1 => \Control_Unit.shift_amount[1]_i_5_n_0\,
      I2 => \final_mantissa_reg_n_0_[23]\,
      I3 => \final_mantissa_reg_n_0_[25]\,
      I4 => \final_mantissa_reg_n_0_[24]\,
      I5 => \final_mantissa_reg_n_0_[26]\,
      O => \final_mantissa[1]_i_3_n_0\
    );
\final_mantissa[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I1 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I2 => \final_mantissa_reg_n_0_[0]\,
      I3 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      O => \final_mantissa[1]_i_4_n_0\
    );
\final_mantissa[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \final_mantissa[20]_i_2_n_0\,
      I1 => state(1),
      I2 => \final_mantissa[20]_i_3_n_0\,
      I3 => \final_mantissa[20]_i_4_n_0\,
      I4 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I5 => p_2_in,
      O => final_mantissa(20)
    );
\final_mantissa[20]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444440FFFFFFFF"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I1 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_12_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_11_n_0\,
      I4 => \shift_amount__0\(4),
      I5 => \final_mantissa_reg_n_0_[5]\,
      O => \final_mantissa[20]_i_10_n_0\
    );
\final_mantissa[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in22(20),
      I1 => state(0),
      I2 => \A_mantissa_ext_reg_n_0_[19]\,
      I3 => \state1_inferred__0/i__carry_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[19]\,
      O => \final_mantissa[20]_i_2_n_0\
    );
\final_mantissa[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000470047"
    )
        port map (
      I0 => \final_mantissa[20]_i_5_n_0\,
      I1 => \final_mantissa[1]_i_3_n_0\,
      I2 => \final_mantissa[20]_i_6_n_0\,
      I3 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I4 => \final_mantissa_reg_n_0_[21]\,
      I5 => p_2_in,
      O => \final_mantissa[20]_i_3_n_0\
    );
\final_mantissa[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0AFAFCFC0CFC0"
    )
        port map (
      I0 => \final_mantissa[27]_i_7_n_0\,
      I1 => \final_mantissa[20]_i_7_n_0\,
      I2 => \final_mantissa[1]_i_3_n_0\,
      I3 => \final_mantissa[20]_i_8_n_0\,
      I4 => \final_mantissa[20]_i_9_n_0\,
      I5 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      O => \final_mantissa[20]_i_4_n_0\
    );
\final_mantissa[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => \final_mantissa[23]_i_16_n_0\,
      I1 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I3 => \final_mantissa_reg_n_0_[11]\,
      I4 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I5 => \final_mantissa[22]_i_5_n_0\,
      O => \final_mantissa[20]_i_5_n_0\
    );
\final_mantissa[20]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AFCFCFA0AFC0C0"
    )
        port map (
      I0 => \final_mantissa[24]_i_10_n_0\,
      I1 => \final_mantissa[24]_i_11_n_0\,
      I2 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I3 => \final_mantissa_reg_n_0_[13]\,
      I4 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I5 => \final_mantissa[20]_i_10_n_0\,
      O => \final_mantissa[20]_i_6_n_0\
    );
\final_mantissa[20]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEA0F00"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[16]\,
      I1 => \final_mantissa_reg_n_0_[0]\,
      I2 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I3 => \final_mantissa_reg_n_0_[8]\,
      I4 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[20]_i_7_n_0\
    );
\final_mantissa[20]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55040004"
    )
        port map (
      I0 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I1 => \final_mantissa_reg_n_0_[6]\,
      I2 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I3 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I4 => \final_mantissa_reg_n_0_[14]\,
      O => \final_mantissa[20]_i_8_n_0\
    );
\final_mantissa[20]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F501F5F"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[18]\,
      I1 => \final_mantissa_reg_n_0_[2]\,
      I2 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I4 => \final_mantissa_reg_n_0_[10]\,
      O => \final_mantissa[20]_i_9_n_0\
    );
\final_mantissa[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \final_mantissa[21]_i_2_n_0\,
      I1 => state(1),
      I2 => \final_mantissa_reg_n_0_[22]\,
      I3 => p_2_in,
      I4 => \final_mantissa[21]_i_3_n_0\,
      O => final_mantissa(21)
    );
\final_mantissa[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in22(21),
      I1 => state(0),
      I2 => \A_mantissa_ext_reg_n_0_[20]\,
      I3 => \state1_inferred__0/i__carry_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[20]\,
      O => \final_mantissa[21]_i_2_n_0\
    );
\final_mantissa[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[24]_i_7_n_0\,
      I1 => \final_mantissa[22]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[23]_i_6_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[21]_i_4_n_0\,
      O => \final_mantissa[21]_i_3_n_0\
    );
\final_mantissa[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303F303055555555"
    )
        port map (
      I0 => \final_mantissa[21]_i_5_n_0\,
      I1 => \final_mantissa[25]_i_8_n_0\,
      I2 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I4 => \final_mantissa_reg_n_0_[10]\,
      I5 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      O => \final_mantissa[21]_i_4_n_0\
    );
\final_mantissa[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7544454475777577"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[14]\,
      I1 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I2 => \final_mantissa[22]_i_6_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I4 => \final_mantissa[22]_i_7_n_0\,
      I5 => \final_mantissa_reg_n_0_[6]\,
      O => \final_mantissa[21]_i_5_n_0\
    );
\final_mantissa[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \final_mantissa[22]_i_2_n_0\,
      I1 => state(1),
      I2 => \final_mantissa_reg_n_0_[23]\,
      I3 => p_2_in,
      I4 => \final_mantissa[22]_i_3_n_0\,
      O => final_mantissa(22)
    );
\final_mantissa[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in22(22),
      I1 => state(0),
      I2 => \A_mantissa_ext_reg_n_0_[21]\,
      I3 => \state1_inferred__0/i__carry_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[21]\,
      O => \final_mantissa[22]_i_2_n_0\
    );
\final_mantissa[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[25]_i_6_n_0\,
      I1 => \final_mantissa[23]_i_6_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[24]_i_7_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[22]_i_4_n_0\,
      O => \final_mantissa[22]_i_3_n_0\
    );
\final_mantissa[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303F303055555555"
    )
        port map (
      I0 => \final_mantissa[22]_i_5_n_0\,
      I1 => \final_mantissa[23]_i_16_n_0\,
      I2 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I4 => \final_mantissa_reg_n_0_[11]\,
      I5 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      O => \final_mantissa[22]_i_4_n_0\
    );
\final_mantissa[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7544454475777577"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[15]\,
      I1 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I2 => \final_mantissa[22]_i_6_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I4 => \final_mantissa[22]_i_7_n_0\,
      I5 => \final_mantissa_reg_n_0_[7]\,
      O => \final_mantissa[22]_i_5_n_0\
    );
\final_mantissa[22]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010100"
    )
        port map (
      I0 => \final_mantissa[22]_i_8_n_0\,
      I1 => \Control_Unit.shift_amount[4]_i_11_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_15_n_0\,
      I3 => \Control_Unit.shift_amount[3]_i_7_n_0\,
      I4 => \shift_amount__0\(3),
      O => \final_mantissa[22]_i_6_n_0\
    );
\final_mantissa[22]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \Control_Unit.shift_amount[3]_i_7_n_0\,
      I1 => \Control_Unit.shift_amount[1]_i_10_n_0\,
      I2 => \final_mantissa_reg_n_0_[5]\,
      I3 => \final_mantissa_reg_n_0_[4]\,
      I4 => \Control_Unit.shift_amount[4]_i_11_n_0\,
      I5 => \shift_amount__0\(4),
      O => \final_mantissa[22]_i_7_n_0\
    );
\final_mantissa[22]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[7]\,
      I1 => \final_mantissa_reg_n_0_[6]\,
      I2 => \final_mantissa_reg_n_0_[5]\,
      I3 => \final_mantissa_reg_n_0_[4]\,
      O => \final_mantissa[22]_i_8_n_0\
    );
\final_mantissa[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \final_mantissa[23]_i_2_n_0\,
      I1 => state(1),
      I2 => \final_mantissa_reg_n_0_[24]\,
      I3 => p_2_in,
      I4 => \final_mantissa[23]_i_3_n_0\,
      O => final_mantissa(23)
    );
\final_mantissa[23]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[20]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[20]\,
      O => p_1_out(20)
    );
\final_mantissa[23]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[23]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[23]\,
      O => \final_mantissa[23]_i_11_n_0\
    );
\final_mantissa[23]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[22]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[22]\,
      O => \final_mantissa[23]_i_12_n_0\
    );
\final_mantissa[23]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[21]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[21]\,
      O => \final_mantissa[23]_i_13_n_0\
    );
\final_mantissa[23]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[20]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[20]\,
      O => \final_mantissa[23]_i_14_n_0\
    );
\final_mantissa[23]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005400FFFF57FF"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[7]\,
      I1 => \final_mantissa[25]_i_10_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_12_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I4 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I5 => \final_mantissa_reg_n_0_[23]\,
      O => \final_mantissa[23]_i_15_n_0\
    );
\final_mantissa[23]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555015555555555"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[19]\,
      I1 => \final_mantissa[25]_i_10_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_12_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I4 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I5 => \final_mantissa_reg_n_0_[3]\,
      O => \final_mantissa[23]_i_16_n_0\
    );
\final_mantissa[23]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444440FFFFFFFF"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I1 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_12_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_11_n_0\,
      I4 => \shift_amount__0\(4),
      I5 => \final_mantissa_reg_n_0_[11]\,
      O => \final_mantissa[23]_i_17_n_0\
    );
\final_mantissa[23]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555511155555"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[20]\,
      I1 => \final_mantissa_reg_n_0_[4]\,
      I2 => \final_mantissa[25]_i_10_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_12_n_0\,
      I4 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I5 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      O => \final_mantissa[23]_i_18_n_0\
    );
\final_mantissa[23]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555015555555555"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[16]\,
      I1 => \final_mantissa[25]_i_10_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_12_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I4 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I5 => \final_mantissa_reg_n_0_[0]\,
      O => \final_mantissa[23]_i_19_n_0\
    );
\final_mantissa[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in22(23),
      I1 => state(0),
      I2 => \A_mantissa_ext_reg_n_0_[22]\,
      I3 => \state1_inferred__0/i__carry_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[22]\,
      O => \final_mantissa[23]_i_2_n_0\
    );
\final_mantissa[23]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444440FFFFFFFF"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I1 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_12_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_11_n_0\,
      I4 => \shift_amount__0\(4),
      I5 => \final_mantissa_reg_n_0_[8]\,
      O => \final_mantissa[23]_i_20_n_0\
    );
\final_mantissa[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[23]_i_5_n_0\,
      I1 => \final_mantissa[24]_i_7_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[25]_i_6_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[23]_i_6_n_0\,
      O => \final_mantissa[23]_i_3_n_0\
    );
\final_mantissa[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303F303FB0B0BFBF"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[15]\,
      I1 => \final_mantissa[23]_i_15_n_0\,
      I2 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I3 => \final_mantissa[23]_i_16_n_0\,
      I4 => \final_mantissa[23]_i_17_n_0\,
      I5 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[23]_i_5_n_0\
    );
\final_mantissa[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303F303FB0B0BFBF"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[12]\,
      I1 => \final_mantissa[23]_i_18_n_0\,
      I2 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I3 => \final_mantissa[23]_i_19_n_0\,
      I4 => \final_mantissa[23]_i_20_n_0\,
      I5 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[23]_i_6_n_0\
    );
\final_mantissa[23]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[23]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[23]\,
      O => p_1_out(23)
    );
\final_mantissa[23]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[22]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[22]\,
      O => p_1_out(22)
    );
\final_mantissa[23]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[21]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[21]\,
      O => p_1_out(21)
    );
\final_mantissa[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB8B88"
    )
        port map (
      I0 => \final_mantissa[24]_i_2_n_0\,
      I1 => state(1),
      I2 => \final_mantissa[24]_i_3_n_0\,
      I3 => \final_mantissa[25]_i_4_n_0\,
      I4 => \final_mantissa[24]_i_4_n_0\,
      I5 => \final_mantissa[24]_i_5_n_0\,
      O => final_mantissa(24)
    );
\final_mantissa[24]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555015555555555"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[17]\,
      I1 => \final_mantissa[25]_i_10_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_12_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I4 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I5 => \final_mantissa_reg_n_0_[1]\,
      O => \final_mantissa[24]_i_10_n_0\
    );
\final_mantissa[24]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444440FFFFFFFF"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I1 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_12_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_11_n_0\,
      I4 => \shift_amount__0\(4),
      I5 => \final_mantissa_reg_n_0_[9]\,
      O => \final_mantissa[24]_i_11_n_0\
    );
\final_mantissa[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in22(24),
      I1 => state(0),
      I2 => \A_mantissa_ext_reg_n_0_[23]\,
      I3 => \state1_inferred__0/i__carry_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[23]\,
      O => \final_mantissa[24]_i_2_n_0\
    );
\final_mantissa[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000FFFAA22AA22"
    )
        port map (
      I0 => \final_mantissa[27]_i_6_n_0\,
      I1 => \final_mantissa[27]_i_7_n_0\,
      I2 => \final_mantissa[27]_i_4_n_0\,
      I3 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I4 => \final_mantissa[24]_i_6_n_0\,
      I5 => \Control_Unit.shift_amount[1]_i_2_n_0\,
      O => \final_mantissa[24]_i_3_n_0\
    );
\final_mantissa[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => \final_mantissa_reg_n_0_[25]\,
      O => \final_mantissa[24]_i_4_n_0\
    );
\final_mantissa[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22E2EEE200000000"
    )
        port map (
      I0 => \final_mantissa[24]_i_7_n_0\,
      I1 => \final_mantissa[1]_i_3_n_0\,
      I2 => \final_mantissa[24]_i_8_n_0\,
      I3 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I4 => \final_mantissa[28]_i_10_n_0\,
      I5 => \final_mantissa[26]_i_5_n_0\,
      O => \final_mantissa[24]_i_5_n_0\
    );
\final_mantissa[24]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEA0F00"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[18]\,
      I1 => \final_mantissa_reg_n_0_[2]\,
      I2 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I3 => \final_mantissa_reg_n_0_[10]\,
      I4 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[24]_i_6_n_0\
    );
\final_mantissa[24]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303F303FB0B0BFBF"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[13]\,
      I1 => \final_mantissa[24]_i_9_n_0\,
      I2 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I3 => \final_mantissa[24]_i_10_n_0\,
      I4 => \final_mantissa[24]_i_11_n_0\,
      I5 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[24]_i_7_n_0\
    );
\final_mantissa[24]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEA0F00"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[19]\,
      I1 => \final_mantissa_reg_n_0_[3]\,
      I2 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I3 => \final_mantissa_reg_n_0_[11]\,
      I4 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[24]_i_8_n_0\
    );
\final_mantissa[24]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555501555555FD55"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[21]\,
      I1 => \final_mantissa[25]_i_10_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_12_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I4 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I5 => \final_mantissa_reg_n_0_[5]\,
      O => \final_mantissa[24]_i_9_n_0\
    );
\final_mantissa[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8BBB8"
    )
        port map (
      I0 => \final_mantissa[25]_i_2_n_0\,
      I1 => state(1),
      I2 => \final_mantissa[25]_i_3_n_0\,
      I3 => \final_mantissa[25]_i_4_n_0\,
      I4 => \final_mantissa[26]_i_6_n_0\,
      I5 => \final_mantissa[25]_i_5_n_0\,
      O => final_mantissa(25)
    );
\final_mantissa[25]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \shift_amount__0\(4),
      I1 => \final_mantissa_reg_n_0_[10]\,
      I2 => \final_mantissa_reg_n_0_[11]\,
      I3 => \final_mantissa_reg_n_0_[8]\,
      I4 => \final_mantissa_reg_n_0_[9]\,
      O => \final_mantissa[25]_i_10_n_0\
    );
\final_mantissa[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in22(25),
      I1 => state(0),
      I2 => \A_mantissa_ext_reg_n_0_[24]\,
      I3 => \state1_inferred__0/i__carry_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[24]\,
      O => \final_mantissa[25]_i_2_n_0\
    );
\final_mantissa[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1101100011011101"
    )
        port map (
      I0 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I1 => p_2_in,
      I2 => \Control_Unit.shift_amount[1]_i_2_n_0\,
      I3 => \final_mantissa[25]_i_6_n_0\,
      I4 => \final_mantissa[26]_i_7_n_0\,
      I5 => \final_mantissa[27]_i_6_n_0\,
      O => \final_mantissa[25]_i_3_n_0\
    );
\final_mantissa[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFD0000"
    )
        port map (
      I0 => \Control_Unit.shift_amount[0]_i_5_n_0\,
      I1 => \final_mantissa[26]_i_9_n_0\,
      I2 => \final_mantissa[26]_i_10_n_0\,
      I3 => \final_mantissa[26]_i_11_n_0\,
      I4 => \final_mantissa[26]_i_12_n_0\,
      I5 => p_2_in,
      O => \final_mantissa[25]_i_4_n_0\
    );
\final_mantissa[25]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => \final_mantissa_reg_n_0_[26]\,
      O => \final_mantissa[25]_i_5_n_0\
    );
\final_mantissa[25]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303F303FB0B0BFBF"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[14]\,
      I1 => \final_mantissa[25]_i_7_n_0\,
      I2 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I3 => \final_mantissa[25]_i_8_n_0\,
      I4 => \final_mantissa[25]_i_9_n_0\,
      I5 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[25]_i_6_n_0\
    );
\final_mantissa[25]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005400FFFF57FF"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[6]\,
      I1 => \final_mantissa[25]_i_10_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_12_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I4 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I5 => \final_mantissa_reg_n_0_[22]\,
      O => \final_mantissa[25]_i_7_n_0\
    );
\final_mantissa[25]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555015555555555"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[18]\,
      I1 => \final_mantissa[25]_i_10_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_12_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I4 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I5 => \final_mantissa_reg_n_0_[2]\,
      O => \final_mantissa[25]_i_8_n_0\
    );
\final_mantissa[25]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444440FFFFFFFF"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_14_n_0\,
      I1 => \Control_Unit.shift_amount[4]_i_13_n_0\,
      I2 => \Control_Unit.shift_amount[4]_i_12_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_11_n_0\,
      I4 => \shift_amount__0\(4),
      I5 => \final_mantissa_reg_n_0_[10]\,
      O => \final_mantissa[25]_i_9_n_0\
    );
\final_mantissa[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBBBBBB8"
    )
        port map (
      I0 => \final_mantissa[26]_i_2_n_0\,
      I1 => state(1),
      I2 => \final_mantissa[26]_i_3_n_0\,
      I3 => \final_mantissa[26]_i_4_n_0\,
      I4 => \final_mantissa[26]_i_5_n_0\,
      I5 => \final_mantissa[26]_i_6_n_0\,
      O => final_mantissa(26)
    );
\final_mantissa[26]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[23]\,
      I1 => \final_mantissa_reg_n_0_[25]\,
      I2 => \final_mantissa_reg_n_0_[24]\,
      O => \final_mantissa[26]_i_10_n_0\
    );
\final_mantissa[26]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[20]\,
      I1 => \final_mantissa_reg_n_0_[21]\,
      I2 => \final_mantissa_reg_n_0_[22]\,
      I3 => \final_mantissa_reg_n_0_[17]\,
      I4 => \final_mantissa_reg_n_0_[18]\,
      I5 => \final_mantissa_reg_n_0_[19]\,
      O => \final_mantissa[26]_i_11_n_0\
    );
\final_mantissa[26]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1101"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[26]\,
      I1 => \Control_Unit.shift_amount[0]_i_3_n_0\,
      I2 => \final_mantissa_reg_n_0_[24]\,
      I3 => \final_mantissa_reg_n_0_[25]\,
      O => \final_mantissa[26]_i_12_n_0\
    );
\final_mantissa[26]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F501F5F"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[19]\,
      I1 => \final_mantissa_reg_n_0_[3]\,
      I2 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I4 => \final_mantissa_reg_n_0_[11]\,
      O => \final_mantissa[26]_i_13_n_0\
    );
\final_mantissa[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in22(26),
      I1 => state(0),
      I2 => \A_mantissa_ext_reg_n_0_[25]\,
      I3 => \state1_inferred__0/i__carry_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[25]\,
      O => \final_mantissa[26]_i_2_n_0\
    );
\final_mantissa[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA8088AAAA"
    )
        port map (
      I0 => \final_mantissa[25]_i_4_n_0\,
      I1 => \Control_Unit.shift_amount[1]_i_2_n_0\,
      I2 => \final_mantissa[26]_i_7_n_0\,
      I3 => \final_mantissa[27]_i_6_n_0\,
      I4 => \final_mantissa[27]_i_5_n_0\,
      I5 => \final_mantissa[26]_i_8_n_0\,
      O => \final_mantissa[26]_i_3_n_0\
    );
\final_mantissa[26]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => \final_mantissa_reg_n_0_[27]\,
      O => \final_mantissa[26]_i_4_n_0\
    );
\final_mantissa[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000455555555"
    )
        port map (
      I0 => p_2_in,
      I1 => \Control_Unit.shift_amount[0]_i_5_n_0\,
      I2 => \final_mantissa[26]_i_9_n_0\,
      I3 => \final_mantissa[26]_i_10_n_0\,
      I4 => \final_mantissa[26]_i_11_n_0\,
      I5 => \final_mantissa[26]_i_12_n_0\,
      O => \final_mantissa[26]_i_5_n_0\
    );
\final_mantissa[26]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA03F3FAFA03030"
    )
        port map (
      I0 => \final_mantissa[28]_i_12_n_0\,
      I1 => \final_mantissa[28]_i_13_n_0\,
      I2 => \final_mantissa[1]_i_3_n_0\,
      I3 => \final_mantissa[28]_i_10_n_0\,
      I4 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I5 => \final_mantissa[26]_i_13_n_0\,
      O => \final_mantissa[26]_i_6_n_0\
    );
\final_mantissa[26]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAEAFFEA"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[20]\,
      I1 => \final_mantissa_reg_n_0_[4]\,
      I2 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I3 => \final_mantissa_reg_n_0_[12]\,
      I4 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I5 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      O => \final_mantissa[26]_i_7_n_0\
    );
\final_mantissa[26]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8B8FFB8"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[6]\,
      I1 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I2 => \final_mantissa_reg_n_0_[22]\,
      I3 => \final_mantissa_reg_n_0_[14]\,
      I4 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I5 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      O => \final_mantissa[26]_i_8_n_0\
    );
\final_mantissa[26]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF0E"
    )
        port map (
      I0 => \Control_Unit.shift_amount[0]_i_7_n_0\,
      I1 => \final_mantissa_reg_n_0_[5]\,
      I2 => \final_mantissa_reg_n_0_[6]\,
      I3 => \final_mantissa_reg_n_0_[7]\,
      I4 => \final_exp_s[8]_i_5_n_0\,
      O => \final_mantissa[26]_i_9_n_0\
    );
\final_mantissa[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBB888B8B"
    )
        port map (
      I0 => \final_mantissa[27]_i_2_n_0\,
      I1 => state(1),
      I2 => \final_mantissa[27]_i_3_n_0\,
      I3 => \final_mantissa[28]_i_7_n_0\,
      I4 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I5 => p_2_in,
      O => final_mantissa(27)
    );
\final_mantissa[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in22(27),
      I1 => state(0),
      I2 => \A_mantissa_ext_reg_n_0_[26]\,
      I3 => \state1_inferred__0/i__carry_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[26]\,
      O => \final_mantissa[27]_i_2_n_0\
    );
\final_mantissa[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C040CC44CC44"
    )
        port map (
      I0 => \final_mantissa[27]_i_4_n_0\,
      I1 => \final_mantissa[27]_i_5_n_0\,
      I2 => \final_mantissa[27]_i_6_n_0\,
      I3 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I4 => \final_mantissa[27]_i_7_n_0\,
      I5 => \Control_Unit.shift_amount[1]_i_2_n_0\,
      O => \final_mantissa[27]_i_3_n_0\
    );
\final_mantissa[27]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF444F4"
    )
        port map (
      I0 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I1 => \final_mantissa_reg_n_0_[14]\,
      I2 => \final_mantissa_reg_n_0_[22]\,
      I3 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I4 => \final_mantissa_reg_n_0_[6]\,
      O => \final_mantissa[27]_i_4_n_0\
    );
\final_mantissa[27]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1133113300030103"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[10]\,
      I1 => \final_mantissa_reg_n_0_[26]\,
      I2 => \final_mantissa_reg_n_0_[18]\,
      I3 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I4 => \final_mantissa_reg_n_0_[2]\,
      I5 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[27]_i_5_n_0\
    );
\final_mantissa[27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5533553300030503"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[8]\,
      I1 => \final_mantissa_reg_n_0_[24]\,
      I2 => \final_mantissa_reg_n_0_[16]\,
      I3 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I4 => \final_mantissa_reg_n_0_[0]\,
      I5 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[27]_i_6_n_0\
    );
\final_mantissa[27]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF444"
    )
        port map (
      I0 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I1 => \final_mantissa_reg_n_0_[12]\,
      I2 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I3 => \final_mantissa_reg_n_0_[4]\,
      I4 => \final_mantissa_reg_n_0_[20]\,
      O => \final_mantissa[27]_i_7_n_0\
    );
\final_mantissa[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5545444444444444"
    )
        port map (
      I0 => rst_fp,
      I1 => \final_mantissa[28]_i_3_n_0\,
      I2 => \final_mantissa_reg_n_0_[27]\,
      I3 => p_2_in,
      I4 => \final_mantissa[28]_i_4_n_0\,
      I5 => \final_mantissa[28]_i_5_n_0\,
      O => \final_mantissa[28]_i_1_n_0\
    );
\final_mantissa[28]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D001D1D"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[23]\,
      I1 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I2 => \final_mantissa_reg_n_0_[7]\,
      I3 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I4 => \final_mantissa_reg_n_0_[15]\,
      O => \final_mantissa[28]_i_10_n_0\
    );
\final_mantissa[28]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[11]\,
      I1 => \final_mantissa_reg_n_0_[27]\,
      I2 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I3 => \final_mantissa_reg_n_0_[3]\,
      I4 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I5 => \final_mantissa_reg_n_0_[19]\,
      O => \final_mantissa[28]_i_11_n_0\
    );
\final_mantissa[28]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010505F101F505F"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[25]\,
      I1 => \final_mantissa_reg_n_0_[9]\,
      I2 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I3 => \final_mantissa_reg_n_0_[17]\,
      I4 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I5 => \final_mantissa_reg_n_0_[1]\,
      O => \final_mantissa[28]_i_12_n_0\
    );
\final_mantissa[28]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF444"
    )
        port map (
      I0 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I1 => \final_mantissa_reg_n_0_[13]\,
      I2 => \final_mantissa_reg_n_0_[5]\,
      I3 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I4 => \final_mantissa_reg_n_0_[21]\,
      O => \final_mantissa[28]_i_13_n_0\
    );
\final_mantissa[28]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[26]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[26]\,
      O => p_1_out(26)
    );
\final_mantissa[28]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[25]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[25]\,
      O => p_1_out(25)
    );
\final_mantissa[28]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[24]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[24]\,
      O => p_1_out(24)
    );
\final_mantissa[28]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \A_sgn__0\,
      I1 => B_sgn,
      O => \final_mantissa[28]_i_17_n_0\
    );
\final_mantissa[28]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[26]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[26]\,
      O => \final_mantissa[28]_i_18_n_0\
    );
\final_mantissa[28]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[25]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[25]\,
      O => \final_mantissa[28]_i_19_n_0\
    );
\final_mantissa[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F80808F8F8F80"
    )
        port map (
      I0 => state(0),
      I1 => in22(28),
      I2 => state(1),
      I3 => \final_mantissa[28]_i_7_n_0\,
      I4 => p_2_in,
      I5 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      O => final_mantissa(28)
    );
\final_mantissa[28]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[24]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[24]\,
      O => \final_mantissa[28]_i_20_n_0\
    );
\final_mantissa[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => state(1),
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => state(0),
      O => \final_mantissa[28]_i_3_n_0\
    );
\final_mantissa[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBFFFFFFFFF"
    )
        port map (
      I0 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I1 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I3 => \Control_Unit.shift_amount[1]_i_2_n_0\,
      I4 => p_2_in,
      I5 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      O => \final_mantissa[28]_i_4_n_0\
    );
\final_mantissa[28]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \final_exp_s[8]_i_3_n_0\,
      O => \final_mantissa[28]_i_5_n_0\
    );
\final_mantissa[28]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF0F00CC55CC55"
    )
        port map (
      I0 => \final_mantissa[28]_i_10_n_0\,
      I1 => \final_mantissa[28]_i_11_n_0\,
      I2 => \final_mantissa[28]_i_12_n_0\,
      I3 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I4 => \final_mantissa[28]_i_13_n_0\,
      I5 => \Control_Unit.shift_amount[1]_i_2_n_0\,
      O => \final_mantissa[28]_i_7_n_0\
    );
\final_mantissa[28]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \A_sgn__0\,
      I1 => B_sgn,
      O => \final_mantissa[28]_i_9_n_0\
    );
\final_mantissa[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB8BB"
    )
        port map (
      I0 => \final_mantissa[2]_i_2_n_0\,
      I1 => state(1),
      I2 => \final_mantissa_reg_n_0_[3]\,
      I3 => p_2_in,
      I4 => \final_mantissa[2]_i_3_n_0\,
      I5 => \final_mantissa[2]_i_4_n_0\,
      O => final_mantissa(2)
    );
\final_mantissa[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in22(2),
      I1 => state(0),
      I2 => \A_mantissa_ext_reg_n_0_[1]\,
      I3 => \state1_inferred__0/i__carry_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[1]\,
      O => \final_mantissa[2]_i_2_n_0\
    );
\final_mantissa[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
        port map (
      I0 => \Control_Unit.shift_amount[1]_i_2_n_0\,
      I1 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I2 => \final_mantissa_reg_n_0_[1]\,
      I3 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I4 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[2]_i_3_n_0\
    );
\final_mantissa[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => \final_mantissa[1]_i_4_n_0\,
      I1 => \final_mantissa[1]_i_3_n_0\,
      I2 => \final_mantissa[5]_i_4_n_0\,
      I3 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      O => \final_mantissa[2]_i_4_n_0\
    );
\final_mantissa[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF008B"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[4]\,
      I1 => p_2_in,
      I2 => \final_mantissa[3]_i_2_n_0\,
      I3 => state(1),
      I4 => \final_mantissa[3]_i_3_n_0\,
      O => final_mantissa(3)
    );
\final_mantissa[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[6]_i_4_n_0\,
      I1 => \final_mantissa[4]_i_6_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[5]_i_4_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[1]_i_4_n_0\,
      O => \final_mantissa[3]_i_2_n_0\
    );
\final_mantissa[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[2]\,
      I1 => \state1_inferred__0/i__carry_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[2]\,
      I3 => state(0),
      I4 => in22(3),
      I5 => state(1),
      O => \final_mantissa[3]_i_3_n_0\
    );
\final_mantissa[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBBBBBB8"
    )
        port map (
      I0 => \final_mantissa[4]_i_2_n_0\,
      I1 => state(1),
      I2 => \final_mantissa[4]_i_3_n_0\,
      I3 => \final_mantissa[4]_i_4_n_0\,
      I4 => \final_mantissa[25]_i_4_n_0\,
      I5 => \final_mantissa[4]_i_5_n_0\,
      O => final_mantissa(4)
    );
\final_mantissa[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in22(4),
      I1 => state(0),
      I2 => \A_mantissa_ext_reg_n_0_[3]\,
      I3 => \state1_inferred__0/i__carry_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[3]\,
      O => \final_mantissa[4]_i_2_n_0\
    );
\final_mantissa[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => \final_mantissa_reg_n_0_[5]\,
      O => \final_mantissa[4]_i_3_n_0\
    );
\final_mantissa[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00011101"
    )
        port map (
      I0 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I1 => p_2_in,
      I2 => \final_mantissa[4]_i_6_n_0\,
      I3 => \final_mantissa[1]_i_3_n_0\,
      I4 => \final_mantissa[6]_i_4_n_0\,
      O => \final_mantissa[4]_i_4_n_0\
    );
\final_mantissa[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB8BBBBBBBBBBBBB"
    )
        port map (
      I0 => \final_mantissa[7]_i_4_n_0\,
      I1 => \final_mantissa[1]_i_3_n_0\,
      I2 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I3 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I4 => \final_mantissa_reg_n_0_[2]\,
      I5 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      O => \final_mantissa[4]_i_5_n_0\
    );
\final_mantissa[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I1 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I2 => \final_mantissa_reg_n_0_[1]\,
      I3 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      O => \final_mantissa[4]_i_6_n_0\
    );
\final_mantissa[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF008B"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[6]\,
      I1 => p_2_in,
      I2 => \final_mantissa[5]_i_2_n_0\,
      I3 => state(1),
      I4 => \final_mantissa[5]_i_3_n_0\,
      O => final_mantissa(5)
    );
\final_mantissa[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[8]_i_5_n_0\,
      I1 => \final_mantissa[6]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[7]_i_4_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[5]_i_4_n_0\,
      O => \final_mantissa[5]_i_2_n_0\
    );
\final_mantissa[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[4]\,
      I1 => \state1_inferred__0/i__carry_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[4]\,
      I3 => state(0),
      I4 => in22(5),
      I5 => state(1),
      O => \final_mantissa[5]_i_3_n_0\
    );
\final_mantissa[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I1 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I2 => \final_mantissa_reg_n_0_[2]\,
      I3 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      O => \final_mantissa[5]_i_4_n_0\
    );
\final_mantissa[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF008B"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[7]\,
      I1 => p_2_in,
      I2 => \final_mantissa[6]_i_2_n_0\,
      I3 => state(1),
      I4 => \final_mantissa[6]_i_3_n_0\,
      O => final_mantissa(6)
    );
\final_mantissa[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[9]_i_4_n_0\,
      I1 => \final_mantissa[7]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[8]_i_5_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[6]_i_4_n_0\,
      O => \final_mantissa[6]_i_2_n_0\
    );
\final_mantissa[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[5]\,
      I1 => \state1_inferred__0/i__carry_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[5]\,
      I3 => state(0),
      I4 => in22(6),
      I5 => state(1),
      O => \final_mantissa[6]_i_3_n_0\
    );
\final_mantissa[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      I1 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I2 => \final_mantissa_reg_n_0_[3]\,
      I3 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      O => \final_mantissa[6]_i_4_n_0\
    );
\final_mantissa[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF008B"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[8]\,
      I1 => p_2_in,
      I2 => \final_mantissa[7]_i_2_n_0\,
      I3 => state(1),
      I4 => \final_mantissa[7]_i_3_n_0\,
      O => final_mantissa(7)
    );
\final_mantissa[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[7]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[7]\,
      O => \final_mantissa[7]_i_10_n_0\
    );
\final_mantissa[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[6]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[6]\,
      O => \final_mantissa[7]_i_11_n_0\
    );
\final_mantissa[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[5]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[5]\,
      O => \final_mantissa[7]_i_12_n_0\
    );
\final_mantissa[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[4]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \B_mantissa_ext_reg_n_0_[4]\,
      O => \final_mantissa[7]_i_13_n_0\
    );
\final_mantissa[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[10]_i_4_n_0\,
      I1 => \final_mantissa[8]_i_5_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[9]_i_4_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[7]_i_4_n_0\,
      O => \final_mantissa[7]_i_2_n_0\
    );
\final_mantissa[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[6]\,
      I1 => \state1_inferred__0/i__carry_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[6]\,
      I3 => state(0),
      I4 => in22(7),
      I5 => state(1),
      O => \final_mantissa[7]_i_3_n_0\
    );
\final_mantissa[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47FFFF"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[4]\,
      I1 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I2 => \final_mantissa_reg_n_0_[0]\,
      I3 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I4 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[7]_i_4_n_0\
    );
\final_mantissa[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[7]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[7]\,
      O => p_1_out(7)
    );
\final_mantissa[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[6]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[6]\,
      O => p_1_out(6)
    );
\final_mantissa[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[5]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[5]\,
      O => p_1_out(5)
    );
\final_mantissa[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF2800"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[4]\,
      I1 => B_sgn,
      I2 => \A_sgn__0\,
      I3 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I4 => \B_mantissa_ext_reg_n_0_[4]\,
      O => p_1_out(4)
    );
\final_mantissa[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8BBB8"
    )
        port map (
      I0 => \final_mantissa[8]_i_2_n_0\,
      I1 => state(1),
      I2 => \final_mantissa[8]_i_3_n_0\,
      I3 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I4 => p_2_in,
      I5 => \final_mantissa[8]_i_4_n_0\,
      O => final_mantissa(8)
    );
\final_mantissa[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in22(8),
      I1 => state(0),
      I2 => \A_mantissa_ext_reg_n_0_[7]\,
      I3 => \state1_inferred__0/i__carry_n_0\,
      I4 => \B_mantissa_ext_reg_n_0_[7]\,
      O => \final_mantissa[8]_i_2_n_0\
    );
\final_mantissa[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAA303F"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[9]\,
      I1 => \final_mantissa[10]_i_4_n_0\,
      I2 => \final_mantissa[1]_i_3_n_0\,
      I3 => \final_mantissa[8]_i_5_n_0\,
      I4 => p_2_in,
      I5 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      O => \final_mantissa[8]_i_3_n_0\
    );
\final_mantissa[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \final_mantissa[11]_i_4_n_0\,
      I1 => \final_mantissa[1]_i_3_n_0\,
      I2 => \final_mantissa[9]_i_4_n_0\,
      O => \final_mantissa[8]_i_4_n_0\
    );
\final_mantissa[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47FFFF"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[5]\,
      I1 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I2 => \final_mantissa_reg_n_0_[1]\,
      I3 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I4 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[8]_i_5_n_0\
    );
\final_mantissa[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF008B"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[10]\,
      I1 => p_2_in,
      I2 => \final_mantissa[9]_i_2_n_0\,
      I3 => state(1),
      I4 => \final_mantissa[9]_i_3_n_0\,
      O => final_mantissa(9)
    );
\final_mantissa[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_mantissa[12]_i_4_n_0\,
      I1 => \final_mantissa[10]_i_4_n_0\,
      I2 => \Control_Unit.shift_amount[0]_i_2_n_0\,
      I3 => \final_mantissa[11]_i_4_n_0\,
      I4 => \final_mantissa[1]_i_3_n_0\,
      I5 => \final_mantissa[9]_i_4_n_0\,
      O => \final_mantissa[9]_i_2_n_0\
    );
\final_mantissa[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[8]\,
      I1 => \state1_inferred__0/i__carry_n_0\,
      I2 => \A_mantissa_ext_reg_n_0_[8]\,
      I3 => state(0),
      I4 => in22(9),
      I5 => state(1),
      O => \final_mantissa[9]_i_3_n_0\
    );
\final_mantissa[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47FFFF"
    )
        port map (
      I0 => \final_mantissa_reg_n_0_[6]\,
      I1 => \Control_Unit.shift_amount[2]_i_2_n_0\,
      I2 => \final_mantissa_reg_n_0_[2]\,
      I3 => \Control_Unit.shift_amount[4]_i_6_n_0\,
      I4 => \Control_Unit.shift_amount[3]_i_4_n_0\,
      O => \final_mantissa[9]_i_4_n_0\
    );
\final_mantissa_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(0),
      Q => \final_mantissa_reg_n_0_[0]\,
      R => '0'
    );
\final_mantissa_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \final_mantissa_reg[0]_i_2_n_0\,
      CO(2) => \final_mantissa_reg[0]_i_2_n_1\,
      CO(1) => \final_mantissa_reg[0]_i_2_n_2\,
      CO(0) => \final_mantissa_reg[0]_i_2_n_3\,
      CYINIT => \final_mantissa[0]_i_3_n_0\,
      DI(3 downto 0) => p_1_out(3 downto 0),
      O(3 downto 0) => in22(3 downto 0),
      S(3) => \final_mantissa[0]_i_8_n_0\,
      S(2) => \final_mantissa[0]_i_9_n_0\,
      S(1) => \final_mantissa[0]_i_10_n_0\,
      S(0) => \final_mantissa[0]_i_11_n_0\
    );
\final_mantissa_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(10),
      Q => \final_mantissa_reg_n_0_[10]\,
      R => '0'
    );
\final_mantissa_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(11),
      Q => \final_mantissa_reg_n_0_[11]\,
      R => '0'
    );
\final_mantissa_reg[11]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \final_mantissa_reg[7]_i_5_n_0\,
      CO(3) => \final_mantissa_reg[11]_i_5_n_0\,
      CO(2) => \final_mantissa_reg[11]_i_5_n_1\,
      CO(1) => \final_mantissa_reg[11]_i_5_n_2\,
      CO(0) => \final_mantissa_reg[11]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_1_out(11 downto 8),
      O(3 downto 0) => in22(11 downto 8),
      S(3) => \final_mantissa[11]_i_10_n_0\,
      S(2) => \final_mantissa[11]_i_11_n_0\,
      S(1) => \final_mantissa[11]_i_12_n_0\,
      S(0) => \final_mantissa[11]_i_13_n_0\
    );
\final_mantissa_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(12),
      Q => \final_mantissa_reg_n_0_[12]\,
      R => '0'
    );
\final_mantissa_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(13),
      Q => \final_mantissa_reg_n_0_[13]\,
      R => '0'
    );
\final_mantissa_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(14),
      Q => \final_mantissa_reg_n_0_[14]\,
      R => '0'
    );
\final_mantissa_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(15),
      Q => \final_mantissa_reg_n_0_[15]\,
      R => '0'
    );
\final_mantissa_reg[15]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \final_mantissa_reg[11]_i_5_n_0\,
      CO(3) => \final_mantissa_reg[15]_i_5_n_0\,
      CO(2) => \final_mantissa_reg[15]_i_5_n_1\,
      CO(1) => \final_mantissa_reg[15]_i_5_n_2\,
      CO(0) => \final_mantissa_reg[15]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_1_out(15 downto 12),
      O(3 downto 0) => in22(15 downto 12),
      S(3) => \final_mantissa[15]_i_11_n_0\,
      S(2) => \final_mantissa[15]_i_12_n_0\,
      S(1) => \final_mantissa[15]_i_13_n_0\,
      S(0) => \final_mantissa[15]_i_14_n_0\
    );
\final_mantissa_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(16),
      Q => \final_mantissa_reg_n_0_[16]\,
      R => '0'
    );
\final_mantissa_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(17),
      Q => \final_mantissa_reg_n_0_[17]\,
      R => '0'
    );
\final_mantissa_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(18),
      Q => \final_mantissa_reg_n_0_[18]\,
      R => '0'
    );
\final_mantissa_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(19),
      Q => \final_mantissa_reg_n_0_[19]\,
      R => '0'
    );
\final_mantissa_reg[19]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \final_mantissa_reg[15]_i_5_n_0\,
      CO(3) => \final_mantissa_reg[19]_i_6_n_0\,
      CO(2) => \final_mantissa_reg[19]_i_6_n_1\,
      CO(1) => \final_mantissa_reg[19]_i_6_n_2\,
      CO(0) => \final_mantissa_reg[19]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_1_out(19 downto 16),
      O(3 downto 0) => in22(19 downto 16),
      S(3) => \final_mantissa[19]_i_12_n_0\,
      S(2) => \final_mantissa[19]_i_13_n_0\,
      S(1) => \final_mantissa[19]_i_14_n_0\,
      S(0) => \final_mantissa[19]_i_15_n_0\
    );
\final_mantissa_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(1),
      Q => \final_mantissa_reg_n_0_[1]\,
      R => '0'
    );
\final_mantissa_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(20),
      Q => \final_mantissa_reg_n_0_[20]\,
      R => '0'
    );
\final_mantissa_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(21),
      Q => \final_mantissa_reg_n_0_[21]\,
      R => '0'
    );
\final_mantissa_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(22),
      Q => \final_mantissa_reg_n_0_[22]\,
      R => '0'
    );
\final_mantissa_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(23),
      Q => \final_mantissa_reg_n_0_[23]\,
      R => '0'
    );
\final_mantissa_reg[23]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \final_mantissa_reg[19]_i_6_n_0\,
      CO(3) => \final_mantissa_reg[23]_i_4_n_0\,
      CO(2) => \final_mantissa_reg[23]_i_4_n_1\,
      CO(1) => \final_mantissa_reg[23]_i_4_n_2\,
      CO(0) => \final_mantissa_reg[23]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_1_out(23 downto 20),
      O(3 downto 0) => in22(23 downto 20),
      S(3) => \final_mantissa[23]_i_11_n_0\,
      S(2) => \final_mantissa[23]_i_12_n_0\,
      S(1) => \final_mantissa[23]_i_13_n_0\,
      S(0) => \final_mantissa[23]_i_14_n_0\
    );
\final_mantissa_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(24),
      Q => \final_mantissa_reg_n_0_[24]\,
      R => '0'
    );
\final_mantissa_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(25),
      Q => \final_mantissa_reg_n_0_[25]\,
      R => '0'
    );
\final_mantissa_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(26),
      Q => \final_mantissa_reg_n_0_[26]\,
      R => '0'
    );
\final_mantissa_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(27),
      Q => \final_mantissa_reg_n_0_[27]\,
      R => '0'
    );
\final_mantissa_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(28),
      Q => p_2_in,
      R => '0'
    );
\final_mantissa_reg[28]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \final_mantissa_reg[28]_i_8_n_0\,
      CO(3 downto 0) => \NLW_final_mantissa_reg[28]_i_6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_final_mantissa_reg[28]_i_6_O_UNCONNECTED\(3 downto 1),
      O(0) => in22(28),
      S(3 downto 1) => B"000",
      S(0) => \final_mantissa[28]_i_9_n_0\
    );
\final_mantissa_reg[28]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \final_mantissa_reg[23]_i_4_n_0\,
      CO(3) => \final_mantissa_reg[28]_i_8_n_0\,
      CO(2) => \final_mantissa_reg[28]_i_8_n_1\,
      CO(1) => \final_mantissa_reg[28]_i_8_n_2\,
      CO(0) => \final_mantissa_reg[28]_i_8_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => p_1_out(26 downto 24),
      O(3 downto 0) => in22(27 downto 24),
      S(3) => \final_mantissa[28]_i_17_n_0\,
      S(2) => \final_mantissa[28]_i_18_n_0\,
      S(1) => \final_mantissa[28]_i_19_n_0\,
      S(0) => \final_mantissa[28]_i_20_n_0\
    );
\final_mantissa_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(2),
      Q => \final_mantissa_reg_n_0_[2]\,
      R => '0'
    );
\final_mantissa_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(3),
      Q => \final_mantissa_reg_n_0_[3]\,
      R => '0'
    );
\final_mantissa_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(4),
      Q => \final_mantissa_reg_n_0_[4]\,
      R => '0'
    );
\final_mantissa_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(5),
      Q => \final_mantissa_reg_n_0_[5]\,
      R => '0'
    );
\final_mantissa_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(6),
      Q => \final_mantissa_reg_n_0_[6]\,
      R => '0'
    );
\final_mantissa_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(7),
      Q => \final_mantissa_reg_n_0_[7]\,
      R => '0'
    );
\final_mantissa_reg[7]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \final_mantissa_reg[0]_i_2_n_0\,
      CO(3) => \final_mantissa_reg[7]_i_5_n_0\,
      CO(2) => \final_mantissa_reg[7]_i_5_n_1\,
      CO(1) => \final_mantissa_reg[7]_i_5_n_2\,
      CO(0) => \final_mantissa_reg[7]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_1_out(7 downto 4),
      O(3 downto 0) => in22(7 downto 4),
      S(3) => \final_mantissa[7]_i_10_n_0\,
      S(2) => \final_mantissa[7]_i_11_n_0\,
      S(1) => \final_mantissa[7]_i_12_n_0\,
      S(0) => \final_mantissa[7]_i_13_n_0\
    );
\final_mantissa_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(8),
      Q => \final_mantissa_reg_n_0_[8]\,
      R => '0'
    );
\final_mantissa_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \final_mantissa[28]_i_1_n_0\,
      D => final_mantissa(9),
      Q => \final_mantissa_reg_n_0_[9]\,
      R => '0'
    );
final_sgn_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => \A_sgn__0\,
      I1 => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      I2 => B_sgn,
      I3 => state(1),
      I4 => final_sgn_i_2_n_0,
      I5 => \final_sgn__0\,
      O => final_sgn_i_1_n_0
    );
final_sgn_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rst_fp,
      I1 => state(0),
      O => final_sgn_i_2_n_0
    );
final_sgn_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => final_sgn_i_1_n_0,
      Q => \final_sgn__0\,
      R => '0'
    );
\fp_A[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(0),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[0]_i_2_n_0\,
      O => D(0)
    );
\fp_A[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(0),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(0),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(0),
      O => \fp_A[0]_i_2_n_0\
    );
\fp_A[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(10),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[10]_i_2_n_0\,
      O => D(10)
    );
\fp_A[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(10),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(10),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(10),
      O => \fp_A[10]_i_2_n_0\
    );
\fp_A[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(11),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[11]_i_2_n_0\,
      O => D(11)
    );
\fp_A[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(11),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(11),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(11),
      O => \fp_A[11]_i_2_n_0\
    );
\fp_A[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(12),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[12]_i_2_n_0\,
      O => D(12)
    );
\fp_A[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(12),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(12),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(12),
      O => \fp_A[12]_i_2_n_0\
    );
\fp_A[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(13),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[13]_i_2_n_0\,
      O => D(13)
    );
\fp_A[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(13),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(13),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(13),
      O => \fp_A[13]_i_2_n_0\
    );
\fp_A[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(14),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[14]_i_2_n_0\,
      O => D(14)
    );
\fp_A[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(14),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(14),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(14),
      O => \fp_A[14]_i_2_n_0\
    );
\fp_A[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(15),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[15]_i_2_n_0\,
      O => D(15)
    );
\fp_A[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(15),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(15),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(15),
      O => \fp_A[15]_i_2_n_0\
    );
\fp_A[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(16),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[16]_i_2_n_0\,
      O => D(16)
    );
\fp_A[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(16),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(16),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(16),
      O => \fp_A[16]_i_2_n_0\
    );
\fp_A[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(17),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[17]_i_2_n_0\,
      O => D(17)
    );
\fp_A[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(17),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(17),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(17),
      O => \fp_A[17]_i_2_n_0\
    );
\fp_A[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(18),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[18]_i_2_n_0\,
      O => D(18)
    );
\fp_A[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(18),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(18),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(18),
      O => \fp_A[18]_i_2_n_0\
    );
\fp_A[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(19),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[19]_i_2_n_0\,
      O => D(19)
    );
\fp_A[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(19),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(19),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(19),
      O => \fp_A[19]_i_2_n_0\
    );
\fp_A[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(1),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[1]_i_2_n_0\,
      O => D(1)
    );
\fp_A[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(1),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(1),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(1),
      O => \fp_A[1]_i_2_n_0\
    );
\fp_A[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(20),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[20]_i_2_n_0\,
      O => D(20)
    );
\fp_A[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(20),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(20),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(20),
      O => \fp_A[20]_i_2_n_0\
    );
\fp_A[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(21),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[21]_i_2_n_0\,
      O => D(21)
    );
\fp_A[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(21),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(21),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(21),
      O => \fp_A[21]_i_2_n_0\
    );
\fp_A[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(22),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[22]_i_2_n_0\,
      O => D(22)
    );
\fp_A[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(22),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(22),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(22),
      O => \fp_A[22]_i_2_n_0\
    );
\fp_A[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF08FFFF"
    )
        port map (
      I0 => \fp_A_reg[31]\(25),
      I1 => \error_n_reg[0]\(2),
      I2 => \^add_done\,
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[25]_i_2_n_0\,
      O => D(23)
    );
\fp_A[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F000000"
    )
        port map (
      I0 => fp_result(23),
      I1 => \^add_done\,
      I2 => \error_n_reg[0]\(2),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A_reg[25]\,
      O => \fp_A[25]_i_2_n_0\
    );
\fp_A[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF08FFFF"
    )
        port map (
      I0 => \fp_A_reg[31]\(26),
      I1 => \error_n_reg[0]\(2),
      I2 => \^add_done\,
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[26]_i_2_n_0\,
      O => D(24)
    );
\fp_A[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F000000"
    )
        port map (
      I0 => fp_result(24),
      I1 => \^add_done\,
      I2 => \error_n_reg[0]\(2),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A_reg[26]\,
      O => \fp_A[26]_i_2_n_0\
    );
\fp_A[29]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^add_done\,
      I1 => \error_n_reg[0]\(2),
      O => done_reg_1
    );
\fp_A[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(2),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[2]_i_2_n_0\,
      O => D(2)
    );
\fp_A[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(2),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(2),
      O => \fp_A[2]_i_2_n_0\
    );
\fp_A[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA003F00AA003300"
    )
        port map (
      I0 => \fp_A[30]_i_2_n_0\,
      I1 => \error_n_reg[0]\(2),
      I2 => \^add_done\,
      I3 => \error_n_reg[0]\(0),
      I4 => \error_n_reg[0]\(1),
      I5 => \fp_A_reg[31]\(30),
      O => D(25)
    );
\fp_A[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(25),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(23),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(23),
      O => \fp_A[30]_i_2_n_0\
    );
\fp_A[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(31),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[31]_i_2_n_0\,
      O => D(26)
    );
\fp_A[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(26),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(24),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(24),
      O => \fp_A[31]_i_2_n_0\
    );
\fp_A[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(3),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[3]_i_2_n_0\,
      O => D(3)
    );
\fp_A[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(3),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(3),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(3),
      O => \fp_A[3]_i_2_n_0\
    );
\fp_A[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(4),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[4]_i_2_n_0\,
      O => D(4)
    );
\fp_A[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(4),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(4),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(4),
      O => \fp_A[4]_i_2_n_0\
    );
\fp_A[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(5),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[5]_i_2_n_0\,
      O => D(5)
    );
\fp_A[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(5),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(5),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(5),
      O => \fp_A[5]_i_2_n_0\
    );
\fp_A[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(6),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[6]_i_2_n_0\,
      O => D(6)
    );
\fp_A[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(6),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(6),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(6),
      O => \fp_A[6]_i_2_n_0\
    );
\fp_A[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(7),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[7]_i_2_n_0\,
      O => D(7)
    );
\fp_A[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(7),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(7),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(7),
      O => \fp_A[7]_i_2_n_0\
    );
\fp_A[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(8),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[8]_i_2_n_0\,
      O => D(8)
    );
\fp_A[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(8),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(8),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(8),
      O => \fp_A[8]_i_2_n_0\
    );
\fp_A[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20000000200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]\(9),
      I3 => \error_n_reg[0]\(1),
      I4 => \error_n_reg[0]\(0),
      I5 => \fp_A[9]_i_2_n_0\,
      O => D(9)
    );
\fp_A[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => fp_result(9),
      I1 => \^add_done\,
      I2 => \fp_A_reg[31]_0\(9),
      I3 => \error_n_reg[0]\(2),
      I4 => mul_done,
      I5 => \fp_A_reg[31]_1\(9),
      O => \fp_A[9]_i_2_n_0\
    );
\fp_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[0]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[0]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(0),
      O => \FSM_sequential_state_reg[1]_1\(0)
    );
\fp_B[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(0),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(0),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[0]\,
      O => \fp_B[0]_i_2_n_0\
    );
\fp_B[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(0),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(0),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(0),
      O => \fp_B[0]_i_3_n_0\
    );
\fp_B[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[10]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[10]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(10),
      O => \FSM_sequential_state_reg[1]_1\(10)
    );
\fp_B[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(10),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(10),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[10]\,
      O => \fp_B[10]_i_2_n_0\
    );
\fp_B[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(10),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(10),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(10),
      O => \fp_B[10]_i_3_n_0\
    );
\fp_B[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[11]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[11]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(11),
      O => \FSM_sequential_state_reg[1]_1\(11)
    );
\fp_B[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(11),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(11),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[11]\,
      O => \fp_B[11]_i_2_n_0\
    );
\fp_B[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(11),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(11),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(11),
      O => \fp_B[11]_i_3_n_0\
    );
\fp_B[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[12]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[12]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(12),
      O => \FSM_sequential_state_reg[1]_1\(12)
    );
\fp_B[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(12),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(12),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[12]\,
      O => \fp_B[12]_i_2_n_0\
    );
\fp_B[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(12),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(12),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(12),
      O => \fp_B[12]_i_3_n_0\
    );
\fp_B[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[13]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[13]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(13),
      O => \FSM_sequential_state_reg[1]_1\(13)
    );
\fp_B[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(13),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(13),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[13]\,
      O => \fp_B[13]_i_2_n_0\
    );
\fp_B[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(13),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(13),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(13),
      O => \fp_B[13]_i_3_n_0\
    );
\fp_B[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[14]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[14]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(14),
      O => \FSM_sequential_state_reg[1]_1\(14)
    );
\fp_B[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(14),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(14),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[14]\,
      O => \fp_B[14]_i_2_n_0\
    );
\fp_B[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(14),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(14),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(14),
      O => \fp_B[14]_i_3_n_0\
    );
\fp_B[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[15]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[15]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(15),
      O => \FSM_sequential_state_reg[1]_1\(15)
    );
\fp_B[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(15),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(15),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[15]\,
      O => \fp_B[15]_i_2_n_0\
    );
\fp_B[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(15),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(15),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(15),
      O => \fp_B[15]_i_3_n_0\
    );
\fp_B[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[16]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[16]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(16),
      O => \FSM_sequential_state_reg[1]_1\(16)
    );
\fp_B[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(16),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(16),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[16]\,
      O => \fp_B[16]_i_2_n_0\
    );
\fp_B[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(16),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(16),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(16),
      O => \fp_B[16]_i_3_n_0\
    );
\fp_B[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[17]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[17]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(17),
      O => \FSM_sequential_state_reg[1]_1\(17)
    );
\fp_B[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(17),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(17),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[17]\,
      O => \fp_B[17]_i_2_n_0\
    );
\fp_B[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(17),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(17),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(17),
      O => \fp_B[17]_i_3_n_0\
    );
\fp_B[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[18]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[18]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(18),
      O => \FSM_sequential_state_reg[1]_1\(18)
    );
\fp_B[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(18),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(18),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[18]\,
      O => \fp_B[18]_i_2_n_0\
    );
\fp_B[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(18),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(18),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(18),
      O => \fp_B[18]_i_3_n_0\
    );
\fp_B[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[19]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[19]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(19),
      O => \FSM_sequential_state_reg[1]_1\(19)
    );
\fp_B[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(19),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(19),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[19]\,
      O => \fp_B[19]_i_2_n_0\
    );
\fp_B[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(19),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(19),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(19),
      O => \fp_B[19]_i_3_n_0\
    );
\fp_B[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[1]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[1]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(1),
      O => \FSM_sequential_state_reg[1]_1\(1)
    );
\fp_B[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(1),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(1),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[1]\,
      O => \fp_B[1]_i_2_n_0\
    );
\fp_B[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(1),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(1),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(1),
      O => \fp_B[1]_i_3_n_0\
    );
\fp_B[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[20]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[20]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(20),
      O => \FSM_sequential_state_reg[1]_1\(20)
    );
\fp_B[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(20),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(20),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[20]\,
      O => \fp_B[20]_i_2_n_0\
    );
\fp_B[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(20),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(20),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(20),
      O => \fp_B[20]_i_3_n_0\
    );
\fp_B[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[21]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[21]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(21),
      O => \FSM_sequential_state_reg[1]_1\(21)
    );
\fp_B[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(21),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(21),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[21]\,
      O => \fp_B[21]_i_2_n_0\
    );
\fp_B[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(21),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(21),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(21),
      O => \fp_B[21]_i_3_n_0\
    );
\fp_B[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[22]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[22]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(22),
      O => \FSM_sequential_state_reg[1]_1\(22)
    );
\fp_B[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(22),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(22),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[22]\,
      O => \fp_B[22]_i_2_n_0\
    );
\fp_B[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(22),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(22),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(22),
      O => \fp_B[22]_i_3_n_0\
    );
\fp_B[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[23]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[23]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(23),
      O => \FSM_sequential_state_reg[1]_1\(23)
    );
\fp_B[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(23),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(23),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[23]\,
      O => \fp_B[23]_i_2_n_0\
    );
\fp_B[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(23),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(23),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(23),
      O => \fp_B[23]_i_3_n_0\
    );
\fp_B[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[24]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[24]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(24),
      O => \FSM_sequential_state_reg[1]_1\(24)
    );
\fp_B[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(24),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(24),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[24]\,
      O => \fp_B[24]_i_2_n_0\
    );
\fp_B[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(24),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(24),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(24),
      O => \fp_B[24]_i_3_n_0\
    );
\fp_B[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[25]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[25]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(25),
      O => \FSM_sequential_state_reg[1]_1\(25)
    );
\fp_B[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(25),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(25),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[25]\,
      O => \fp_B[25]_i_2_n_0\
    );
\fp_B[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(25),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(25),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(25),
      O => \fp_B[25]_i_3_n_0\
    );
\fp_B[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[26]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[26]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(26),
      O => \FSM_sequential_state_reg[1]_1\(26)
    );
\fp_B[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(26),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(26),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[26]\,
      O => \fp_B[26]_i_2_n_0\
    );
\fp_B[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(26),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(26),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(26),
      O => \fp_B[26]_i_3_n_0\
    );
\fp_B[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[27]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[27]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(27),
      O => \FSM_sequential_state_reg[1]_1\(27)
    );
\fp_B[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(27),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(27),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[27]\,
      O => \fp_B[27]_i_2_n_0\
    );
\fp_B[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(27),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(27),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(27),
      O => \fp_B[27]_i_3_n_0\
    );
\fp_B[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[28]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[28]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(28),
      O => \FSM_sequential_state_reg[1]_1\(28)
    );
\fp_B[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(28),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(28),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[28]\,
      O => \fp_B[28]_i_2_n_0\
    );
\fp_B[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(28),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(28),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(27),
      O => \fp_B[28]_i_3_n_0\
    );
\fp_B[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[29]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[29]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(29),
      O => \FSM_sequential_state_reg[1]_1\(29)
    );
\fp_B[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(29),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(29),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[29]\,
      O => \fp_B[29]_i_2_n_0\
    );
\fp_B[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(29),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(29),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(27),
      O => \fp_B[29]_i_3_n_0\
    );
\fp_B[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[2]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[2]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(2),
      O => \FSM_sequential_state_reg[1]_1\(2)
    );
\fp_B[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(2),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(2),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[2]\,
      O => \fp_B[2]_i_2_n_0\
    );
\fp_B[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(2),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(2),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(2),
      O => \fp_B[2]_i_3_n_0\
    );
\fp_B[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[30]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[30]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(30),
      O => \FSM_sequential_state_reg[1]_1\(30)
    );
\fp_B[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(30),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(30),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[30]\,
      O => \fp_B[30]_i_2_n_0\
    );
\fp_B[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(30),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(30),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(28),
      O => \fp_B[30]_i_3_n_0\
    );
\fp_B[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[31]_i_3_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[31]_i_4_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(31),
      O => \FSM_sequential_state_reg[1]_1\(31)
    );
\fp_B[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(31),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(31),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_4\,
      O => \fp_B[31]_i_3_n_0\
    );
\fp_B[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(31),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(31),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(29),
      O => \fp_B[31]_i_4_n_0\
    );
\fp_B[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[3]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[3]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(3),
      O => \FSM_sequential_state_reg[1]_1\(3)
    );
\fp_B[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(3),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(3),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[3]\,
      O => \fp_B[3]_i_2_n_0\
    );
\fp_B[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(3),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(3),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(3),
      O => \fp_B[3]_i_3_n_0\
    );
\fp_B[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[4]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[4]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(4),
      O => \FSM_sequential_state_reg[1]_1\(4)
    );
\fp_B[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(4),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(4),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[4]\,
      O => \fp_B[4]_i_2_n_0\
    );
\fp_B[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(4),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(4),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(4),
      O => \fp_B[4]_i_3_n_0\
    );
\fp_B[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[5]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[5]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(5),
      O => \FSM_sequential_state_reg[1]_1\(5)
    );
\fp_B[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(5),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(5),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[5]\,
      O => \fp_B[5]_i_2_n_0\
    );
\fp_B[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(5),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(5),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(5),
      O => \fp_B[5]_i_3_n_0\
    );
\fp_B[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[6]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[6]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(6),
      O => \FSM_sequential_state_reg[1]_1\(6)
    );
\fp_B[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(6),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(6),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[6]\,
      O => \fp_B[6]_i_2_n_0\
    );
\fp_B[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(6),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(6),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(6),
      O => \fp_B[6]_i_3_n_0\
    );
\fp_B[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[7]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[7]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(7),
      O => \FSM_sequential_state_reg[1]_1\(7)
    );
\fp_B[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(7),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(7),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[7]\,
      O => \fp_B[7]_i_2_n_0\
    );
\fp_B[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(7),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(7),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(7),
      O => \fp_B[7]_i_3_n_0\
    );
\fp_B[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[8]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[8]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(8),
      O => \FSM_sequential_state_reg[1]_1\(8)
    );
\fp_B[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(8),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(8),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[8]\,
      O => \fp_B[8]_i_2_n_0\
    );
\fp_B[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(8),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(8),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(8),
      O => \fp_B[8]_i_3_n_0\
    );
\fp_B[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B[9]_i_2_n_0\,
      I1 => \error_n_reg[0]\(1),
      I2 => \fp_B[9]_i_3_n_0\,
      I3 => \error_n_reg[0]\(0),
      I4 => \fp_A_reg[31]\(9),
      O => \FSM_sequential_state_reg[1]_1\(9)
    );
\fp_B[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]_2\(9),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_3\(9),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[9]\,
      O => \fp_B[9]_i_2_n_0\
    );
\fp_B[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fp_B_reg[31]\(9),
      I1 => \^add_done\,
      I2 => \fp_B_reg[31]_0\(9),
      I3 => \error_n_reg[0]\(2),
      I4 => \fp_B_reg[31]_1\(9),
      O => \fp_B[9]_i_3_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[15]\,
      I1 => \B_mantissa_ext_reg_n_0_[15]\,
      I2 => \A_mantissa_ext_reg_n_0_[14]\,
      I3 => \B_mantissa_ext_reg_n_0_[14]\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[13]\,
      I1 => \B_mantissa_ext_reg_n_0_[13]\,
      I2 => \A_mantissa_ext_reg_n_0_[12]\,
      I3 => \B_mantissa_ext_reg_n_0_[12]\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[11]\,
      I1 => \B_mantissa_ext_reg_n_0_[11]\,
      I2 => \A_mantissa_ext_reg_n_0_[10]\,
      I3 => \B_mantissa_ext_reg_n_0_[10]\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[9]\,
      I1 => \B_mantissa_ext_reg_n_0_[9]\,
      I2 => \A_mantissa_ext_reg_n_0_[8]\,
      I3 => \B_mantissa_ext_reg_n_0_[8]\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[15]\,
      I1 => \A_mantissa_ext_reg_n_0_[15]\,
      I2 => \B_mantissa_ext_reg_n_0_[14]\,
      I3 => \A_mantissa_ext_reg_n_0_[14]\,
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[13]\,
      I1 => \A_mantissa_ext_reg_n_0_[13]\,
      I2 => \B_mantissa_ext_reg_n_0_[12]\,
      I3 => \A_mantissa_ext_reg_n_0_[12]\,
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[11]\,
      I1 => \A_mantissa_ext_reg_n_0_[11]\,
      I2 => \B_mantissa_ext_reg_n_0_[10]\,
      I3 => \A_mantissa_ext_reg_n_0_[10]\,
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[9]\,
      I1 => \A_mantissa_ext_reg_n_0_[9]\,
      I2 => \B_mantissa_ext_reg_n_0_[8]\,
      I3 => \A_mantissa_ext_reg_n_0_[8]\,
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[23]\,
      I1 => \B_mantissa_ext_reg_n_0_[23]\,
      I2 => \A_mantissa_ext_reg_n_0_[22]\,
      I3 => \B_mantissa_ext_reg_n_0_[22]\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[21]\,
      I1 => \B_mantissa_ext_reg_n_0_[21]\,
      I2 => \A_mantissa_ext_reg_n_0_[20]\,
      I3 => \B_mantissa_ext_reg_n_0_[20]\,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[19]\,
      I1 => \B_mantissa_ext_reg_n_0_[19]\,
      I2 => \A_mantissa_ext_reg_n_0_[18]\,
      I3 => \B_mantissa_ext_reg_n_0_[18]\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[17]\,
      I1 => \B_mantissa_ext_reg_n_0_[17]\,
      I2 => \A_mantissa_ext_reg_n_0_[16]\,
      I3 => \B_mantissa_ext_reg_n_0_[16]\,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[23]\,
      I1 => \A_mantissa_ext_reg_n_0_[23]\,
      I2 => \B_mantissa_ext_reg_n_0_[22]\,
      I3 => \A_mantissa_ext_reg_n_0_[22]\,
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[21]\,
      I1 => \A_mantissa_ext_reg_n_0_[21]\,
      I2 => \B_mantissa_ext_reg_n_0_[20]\,
      I3 => \A_mantissa_ext_reg_n_0_[20]\,
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[19]\,
      I1 => \A_mantissa_ext_reg_n_0_[19]\,
      I2 => \B_mantissa_ext_reg_n_0_[18]\,
      I3 => \A_mantissa_ext_reg_n_0_[18]\,
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[17]\,
      I1 => \A_mantissa_ext_reg_n_0_[17]\,
      I2 => \B_mantissa_ext_reg_n_0_[16]\,
      I3 => \A_mantissa_ext_reg_n_0_[16]\,
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[26]\,
      I1 => \B_mantissa_ext_reg_n_0_[26]\,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[25]\,
      I1 => \B_mantissa_ext_reg_n_0_[25]\,
      I2 => \A_mantissa_ext_reg_n_0_[24]\,
      I3 => \B_mantissa_ext_reg_n_0_[24]\,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[26]\,
      I1 => \A_mantissa_ext_reg_n_0_[26]\,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[25]\,
      I1 => \A_mantissa_ext_reg_n_0_[25]\,
      I2 => \B_mantissa_ext_reg_n_0_[24]\,
      I3 => \A_mantissa_ext_reg_n_0_[24]\,
      O => \i__carry__2_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => A_exp_s(6),
      I1 => B_exp_s(6),
      I2 => B_exp_s(7),
      I3 => A_exp_s(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B_exp_s(6),
      I1 => A_exp_s(6),
      I2 => A_exp_s(7),
      I3 => B_exp_s(7),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[7]\,
      I1 => \B_mantissa_ext_reg_n_0_[7]\,
      I2 => \A_mantissa_ext_reg_n_0_[6]\,
      I3 => \B_mantissa_ext_reg_n_0_[6]\,
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B22"
    )
        port map (
      I0 => B_exp_s(5),
      I1 => A_exp_s(5),
      I2 => A_exp_s(4),
      I3 => B_exp_s(4),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => B_exp_s(4),
      I1 => A_exp_s(4),
      I2 => A_exp_s(5),
      I3 => B_exp_s(5),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[5]\,
      I1 => \B_mantissa_ext_reg_n_0_[5]\,
      I2 => \A_mantissa_ext_reg_n_0_[4]\,
      I3 => \B_mantissa_ext_reg_n_0_[4]\,
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => A_exp_s(2),
      I1 => B_exp_s(2),
      I2 => A_exp_s(3),
      I3 => B_exp_s(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => B_exp_s(3),
      I1 => A_exp_s(3),
      I2 => B_exp_s(2),
      I3 => A_exp_s(2),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[3]\,
      I1 => \B_mantissa_ext_reg_n_0_[3]\,
      I2 => \A_mantissa_ext_reg_n_0_[2]\,
      I3 => \B_mantissa_ext_reg_n_0_[2]\,
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \A_mantissa_ext_reg_n_0_[1]\,
      I1 => \B_mantissa_ext_reg_n_0_[1]\,
      I2 => \A_mantissa_ext_reg_n_0_[0]\,
      I3 => \B_mantissa_ext_reg_n_0_[0]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => A_exp_s(1),
      I1 => B_exp_s(1),
      I2 => A_exp_s(0),
      I3 => B_exp_s(0),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => A_exp_s(1),
      I1 => B_exp_s(1),
      I2 => B_exp_s(0),
      I3 => A_exp_s(0),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_exp_s(6),
      I1 => A_exp_s(6),
      I2 => A_exp_s(7),
      I3 => B_exp_s(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[7]\,
      I1 => \A_mantissa_ext_reg_n_0_[7]\,
      I2 => \B_mantissa_ext_reg_n_0_[6]\,
      I3 => \A_mantissa_ext_reg_n_0_[6]\,
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_exp_s(6),
      I1 => A_exp_s(6),
      I2 => A_exp_s(7),
      I3 => B_exp_s(7),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_exp_s(4),
      I1 => A_exp_s(4),
      I2 => A_exp_s(5),
      I3 => B_exp_s(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[5]\,
      I1 => \A_mantissa_ext_reg_n_0_[5]\,
      I2 => \B_mantissa_ext_reg_n_0_[4]\,
      I3 => \A_mantissa_ext_reg_n_0_[4]\,
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_exp_s(4),
      I1 => A_exp_s(4),
      I2 => A_exp_s(5),
      I3 => B_exp_s(5),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_exp_s(3),
      I1 => A_exp_s(3),
      I2 => A_exp_s(2),
      I3 => B_exp_s(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[3]\,
      I1 => \A_mantissa_ext_reg_n_0_[3]\,
      I2 => \B_mantissa_ext_reg_n_0_[2]\,
      I3 => \A_mantissa_ext_reg_n_0_[2]\,
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_exp_s(3),
      I1 => A_exp_s(3),
      I2 => A_exp_s(2),
      I3 => B_exp_s(2),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \B_mantissa_ext_reg_n_0_[1]\,
      I1 => \A_mantissa_ext_reg_n_0_[1]\,
      I2 => \B_mantissa_ext_reg_n_0_[0]\,
      I3 => \A_mantissa_ext_reg_n_0_[0]\,
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_exp_s(1),
      I1 => A_exp_s(1),
      I2 => B_exp_s(0),
      I3 => A_exp_s(0),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_exp_s(1),
      I1 => A_exp_s(1),
      I2 => B_exp_s(0),
      I3 => A_exp_s(0),
      O => \i__carry_i_8__1_n_0\
    );
\integral_sum[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^add_done\,
      I1 => \error_n_reg[0]\(2),
      I2 => \error_n_reg[0]\(0),
      I3 => \error_n_reg[0]\(1),
      O => done_reg_0(0)
    );
mul_start_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30440044"
    )
        port map (
      I0 => \error_n_reg[0]\(3),
      I1 => \error_n_reg[0]\(1),
      I2 => \^add_done\,
      I3 => \error_n_reg[0]\(2),
      I4 => \error_n_reg[0]\(0),
      O => mul_start
    );
\result[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \final_exp_s_reg_n_0_[0]\,
      I1 => \final_exp_s_reg_n_0_[8]\,
      O => \result[23]_i_1_n_0\
    );
\result[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \final_exp_s_reg_n_0_[2]\,
      I1 => \final_exp_s_reg_n_0_[8]\,
      O => \result[25]_i_1_n_0\
    );
\result[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F8000000000000"
    )
        port map (
      I0 => \result[29]_i_2_n_0\,
      I1 => \result[29]_i_3_n_0\,
      I2 => \final_exp_s_reg_n_0_[8]\,
      I3 => rst_fp,
      I4 => state(0),
      I5 => \FSM_sequential_state_reg_n_0_[2]\,
      O => \result[29]_i_1_n_0\
    );
\result[29]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \final_exp_s_reg_n_0_[4]\,
      I1 => \final_exp_s_reg_n_0_[0]\,
      I2 => \final_exp_s_reg_n_0_[5]\,
      I3 => \final_exp_s_reg_n_0_[2]\,
      O => \result[29]_i_2_n_0\
    );
\result[29]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \final_exp_s_reg_n_0_[3]\,
      I1 => \final_exp_s_reg_n_0_[6]\,
      I2 => \final_exp_s_reg_n_0_[1]\,
      I3 => \final_exp_s_reg_n_0_[7]\,
      O => \result[29]_i_3_n_0\
    );
\result[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \final_exp_s_reg_n_0_[7]\,
      I1 => \final_exp_s_reg_n_0_[8]\,
      O => \result[30]_i_1_n_0\
    );
\result[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[2]\,
      I1 => state(0),
      I2 => rst_fp,
      O => result0
    );
\result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[3]\,
      Q => fp_result(0),
      R => \result[29]_i_1_n_0\
    );
\result_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[13]\,
      Q => fp_result(10),
      R => \result[29]_i_1_n_0\
    );
\result_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[14]\,
      Q => fp_result(11),
      R => \result[29]_i_1_n_0\
    );
\result_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[15]\,
      Q => fp_result(12),
      R => \result[29]_i_1_n_0\
    );
\result_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[16]\,
      Q => fp_result(13),
      R => \result[29]_i_1_n_0\
    );
\result_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[17]\,
      Q => fp_result(14),
      R => \result[29]_i_1_n_0\
    );
\result_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[18]\,
      Q => fp_result(15),
      R => \result[29]_i_1_n_0\
    );
\result_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[19]\,
      Q => fp_result(16),
      R => \result[29]_i_1_n_0\
    );
\result_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[20]\,
      Q => fp_result(17),
      R => \result[29]_i_1_n_0\
    );
\result_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[21]\,
      Q => fp_result(18),
      R => \result[29]_i_1_n_0\
    );
\result_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[22]\,
      Q => fp_result(19),
      R => \result[29]_i_1_n_0\
    );
\result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[4]\,
      Q => fp_result(1),
      R => \result[29]_i_1_n_0\
    );
\result_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[23]\,
      Q => fp_result(20),
      R => \result[29]_i_1_n_0\
    );
\result_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[24]\,
      Q => fp_result(21),
      R => \result[29]_i_1_n_0\
    );
\result_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[25]\,
      Q => fp_result(22),
      R => \result[29]_i_1_n_0\
    );
\result_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \result[23]_i_1_n_0\,
      Q => UNCONN_OUT(0),
      R => '0'
    );
\result_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_exp_s_reg_n_0_[1]\,
      Q => UNCONN_OUT(1),
      R => \result[29]_i_1_n_0\
    );
\result_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \result[25]_i_1_n_0\,
      Q => fp_result(23),
      R => '0'
    );
\result_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_exp_s_reg_n_0_[3]\,
      Q => fp_result(24),
      R => \result[29]_i_1_n_0\
    );
\result_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_exp_s_reg_n_0_[4]\,
      Q => UNCONN_OUT(2),
      R => \result[29]_i_1_n_0\
    );
\result_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_exp_s_reg_n_0_[5]\,
      Q => UNCONN_OUT(3),
      R => \result[29]_i_1_n_0\
    );
\result_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_exp_s_reg_n_0_[6]\,
      Q => UNCONN_OUT(4),
      R => \result[29]_i_1_n_0\
    );
\result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[5]\,
      Q => fp_result(2),
      R => \result[29]_i_1_n_0\
    );
\result_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \result[30]_i_1_n_0\,
      Q => fp_result(25),
      R => '0'
    );
\result_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_sgn__0\,
      Q => fp_result(26),
      R => '0'
    );
\result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[6]\,
      Q => fp_result(3),
      R => \result[29]_i_1_n_0\
    );
\result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[7]\,
      Q => fp_result(4),
      R => \result[29]_i_1_n_0\
    );
\result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[8]\,
      Q => fp_result(5),
      R => \result[29]_i_1_n_0\
    );
\result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[9]\,
      Q => fp_result(6),
      R => \result[29]_i_1_n_0\
    );
\result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[10]\,
      Q => fp_result(7),
      R => \result[29]_i_1_n_0\
    );
\result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[11]\,
      Q => fp_result(8),
      R => \result[29]_i_1_n_0\
    );
\result_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => result0,
      D => \final_mantissa_reg_n_0_[12]\,
      Q => fp_result(9),
      R => \result[29]_i_1_n_0\
    );
\state1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state1_inferred__0/i__carry_n_0\,
      CO(2) => \state1_inferred__0/i__carry_n_1\,
      CO(1) => \state1_inferred__0/i__carry_n_2\,
      CO(0) => \state1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_state1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\state1_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state1_inferred__1/i__carry_n_0\,
      CO(2) => \state1_inferred__1/i__carry_n_1\,
      CO(1) => \state1_inferred__1/i__carry_n_2\,
      CO(0) => \state1_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_state1_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\temp_error_diff[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \error_n_reg[0]\(2),
      I1 => \error_n_reg[0]\(1),
      I2 => \error_n_reg[0]\(0),
      I3 => rst_fp,
      I4 => \^add_done\,
      O => E(0)
    );
\temp_mantissa_result1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \temp_mantissa_result1_inferred__0/i__carry_n_0\,
      CO(2) => \temp_mantissa_result1_inferred__0/i__carry_n_1\,
      CO(1) => \temp_mantissa_result1_inferred__0/i__carry_n_2\,
      CO(0) => \temp_mantissa_result1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_temp_mantissa_result1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\temp_mantissa_result1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_mantissa_result1_inferred__0/i__carry_n_0\,
      CO(3) => \temp_mantissa_result1_inferred__0/i__carry__0_n_0\,
      CO(2) => \temp_mantissa_result1_inferred__0/i__carry__0_n_1\,
      CO(1) => \temp_mantissa_result1_inferred__0/i__carry__0_n_2\,
      CO(0) => \temp_mantissa_result1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_temp_mantissa_result1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\temp_mantissa_result1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_mantissa_result1_inferred__0/i__carry__0_n_0\,
      CO(3) => \temp_mantissa_result1_inferred__0/i__carry__1_n_0\,
      CO(2) => \temp_mantissa_result1_inferred__0/i__carry__1_n_1\,
      CO(1) => \temp_mantissa_result1_inferred__0/i__carry__1_n_2\,
      CO(0) => \temp_mantissa_result1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_temp_mantissa_result1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\temp_mantissa_result1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_mantissa_result1_inferred__0/i__carry__1_n_0\,
      CO(3 downto 2) => \NLW_temp_mantissa_result1_inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \temp_mantissa_result1_inferred__0/i__carry__2_n_2\,
      CO(0) => \temp_mantissa_result1_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__2_i_1_n_0\,
      DI(0) => \i__carry__2_i_2_n_0\,
      O(3 downto 0) => \NLW_temp_mantissa_result1_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\term_I[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \error_n_reg[0]\(1),
      I1 => \error_n_reg[0]\(0),
      I2 => \error_n_reg[0]\(2),
      I3 => \^add_done\,
      I4 => rst_fp,
      O => \FSM_sequential_state_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pid_controller_0_0_vm_mul is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    mul_done : out STD_LOGIC;
    \error_n_reg[29]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    add_start : out STD_LOGIC;
    done_reg_0 : out STD_LOGIC;
    done_reg_1 : out STD_LOGIC;
    done_reg_2 : out STD_LOGIC;
    done_reg_3 : out STD_LOGIC;
    done_reg_4 : out STD_LOGIC;
    done_reg_5 : out STD_LOGIC;
    done_reg_6 : out STD_LOGIC;
    done_reg_7 : out STD_LOGIC;
    done_reg_8 : out STD_LOGIC;
    done_reg_9 : out STD_LOGIC;
    done_reg_10 : out STD_LOGIC;
    done_reg_11 : out STD_LOGIC;
    done_reg_12 : out STD_LOGIC;
    done_reg_13 : out STD_LOGIC;
    done_reg_14 : out STD_LOGIC;
    done_reg_15 : out STD_LOGIC;
    done_reg_16 : out STD_LOGIC;
    done_reg_17 : out STD_LOGIC;
    done_reg_18 : out STD_LOGIC;
    done_reg_19 : out STD_LOGIC;
    done_reg_20 : out STD_LOGIC;
    done_reg_21 : out STD_LOGIC;
    done_reg_22 : out STD_LOGIC;
    done_reg_23 : out STD_LOGIC;
    done_reg_24 : out STD_LOGIC;
    done_reg_25 : out STD_LOGIC;
    done_reg_26 : out STD_LOGIC;
    done_reg_27 : out STD_LOGIC;
    done_reg_28 : out STD_LOGIC;
    done_reg_29 : out STD_LOGIC;
    done_reg_30 : out STD_LOGIC;
    done_reg_31 : out STD_LOGIC;
    done_reg_32 : out STD_LOGIC;
    done_reg_33 : out STD_LOGIC;
    done_reg_34 : out STD_LOGIC;
    fp_result : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    signA_reg_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 16 downto 0 );
    rst_fp : in STD_LOGIC;
    \term_P_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \fp_B[31]_i_3\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \fp_A_reg[23]\ : in STD_LOGIC;
    \fp_A_reg[29]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    \fp_A_reg[29]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    add_done : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    fp_sub_reg : in STD_LOGIC;
    fp_sub_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pid_controller_0_0_vm_mul : entity is "vm_mul";
end design_1_pid_controller_0_0_vm_mul;

architecture STRUCTURE of design_1_pid_controller_0_0_vm_mul is
  signal CEP : STD_LOGIC;
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal L : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal \done_i_1__1_n_0\ : STD_LOGIC;
  signal \expA_reg_n_0_[0]\ : STD_LOGIC;
  signal \expA_reg_n_0_[1]\ : STD_LOGIC;
  signal \expA_reg_n_0_[2]\ : STD_LOGIC;
  signal \expA_reg_n_0_[3]\ : STD_LOGIC;
  signal \expA_reg_n_0_[4]\ : STD_LOGIC;
  signal \expA_reg_n_0_[5]\ : STD_LOGIC;
  signal \expA_reg_n_0_[6]\ : STD_LOGIC;
  signal \expA_reg_n_0_[7]\ : STD_LOGIC;
  signal \expB[7]_i_1_n_0\ : STD_LOGIC;
  signal \expB_reg_n_0_[0]\ : STD_LOGIC;
  signal \expB_reg_n_0_[1]\ : STD_LOGIC;
  signal \expB_reg_n_0_[2]\ : STD_LOGIC;
  signal \expB_reg_n_0_[3]\ : STD_LOGIC;
  signal \expB_reg_n_0_[4]\ : STD_LOGIC;
  signal \expB_reg_n_0_[5]\ : STD_LOGIC;
  signal \expB_reg_n_0_[6]\ : STD_LOGIC;
  signal \expB_reg_n_0_[7]\ : STD_LOGIC;
  signal expFinal : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \expFinal[7]_i_1_n_0\ : STD_LOGIC;
  signal expSum0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \expSum0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \expSum0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \expSum0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \expSum0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \expSum0_carry__0_n_0\ : STD_LOGIC;
  signal \expSum0_carry__0_n_1\ : STD_LOGIC;
  signal \expSum0_carry__0_n_2\ : STD_LOGIC;
  signal \expSum0_carry__0_n_3\ : STD_LOGIC;
  signal \expSum0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \expSum0_carry__1_n_2\ : STD_LOGIC;
  signal expSum0_carry_i_1_n_0 : STD_LOGIC;
  signal expSum0_carry_i_2_n_0 : STD_LOGIC;
  signal expSum0_carry_i_3_n_0 : STD_LOGIC;
  signal expSum0_carry_i_4_n_0 : STD_LOGIC;
  signal expSum0_carry_n_0 : STD_LOGIC;
  signal expSum0_carry_n_1 : STD_LOGIC;
  signal expSum0_carry_n_2 : STD_LOGIC;
  signal expSum0_carry_n_3 : STD_LOGIC;
  signal \expSum[0]_i_1_n_0\ : STD_LOGIC;
  signal \expSum[1]_i_1_n_0\ : STD_LOGIC;
  signal \expSum[2]_i_1_n_0\ : STD_LOGIC;
  signal \expSum[3]_i_1_n_0\ : STD_LOGIC;
  signal \expSum[4]_i_1_n_0\ : STD_LOGIC;
  signal \expSum[5]_i_1_n_0\ : STD_LOGIC;
  signal \expSum[6]_i_1_n_0\ : STD_LOGIC;
  signal \expSum[6]_i_2_n_0\ : STD_LOGIC;
  signal \expSum[7]_i_1_n_0\ : STD_LOGIC;
  signal \expSum[8]_i_1_n_0\ : STD_LOGIC;
  signal \expSum[8]_i_2_n_0\ : STD_LOGIC;
  signal \expSum[8]_i_3_n_0\ : STD_LOGIC;
  signal \expSum[9]_i_1_n_0\ : STD_LOGIC;
  signal \expSum[9]_i_2_n_0\ : STD_LOGIC;
  signal \expSum[9]_i_3_n_0\ : STD_LOGIC;
  signal \expSum_reg_n_0_[0]\ : STD_LOGIC;
  signal \expSum_reg_n_0_[1]\ : STD_LOGIC;
  signal \expSum_reg_n_0_[2]\ : STD_LOGIC;
  signal \expSum_reg_n_0_[3]\ : STD_LOGIC;
  signal \expSum_reg_n_0_[4]\ : STD_LOGIC;
  signal \expSum_reg_n_0_[5]\ : STD_LOGIC;
  signal \expSum_reg_n_0_[6]\ : STD_LOGIC;
  signal \expSum_reg_n_0_[7]\ : STD_LOGIC;
  signal \expSum_reg_n_0_[8]\ : STD_LOGIC;
  signal \expSum_reg_n_0_[9]\ : STD_LOGIC;
  signal \fp_A[23]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[24]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[27]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[28]_i_2_n_0\ : STD_LOGIC;
  signal \fp_A[29]_i_2_n_0\ : STD_LOGIC;
  signal mantA1 : STD_LOGIC;
  signal mantB1 : STD_LOGIC;
  signal mantNorm : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \mantNorm[22]_i_1_n_0\ : STD_LOGIC;
  signal \mantNorm_temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \mantNorm_temp[0]_i_2_n_0\ : STD_LOGIC;
  signal \mantNorm_temp[23]_i_1_n_0\ : STD_LOGIC;
  signal \mantNorm_temp_reg_n_0_[0]\ : STD_LOGIC;
  signal mantProd0_i_2_n_0 : STD_LOGIC;
  signal mantProd0_n_100 : STD_LOGIC;
  signal mantProd0_n_101 : STD_LOGIC;
  signal mantProd0_n_102 : STD_LOGIC;
  signal mantProd0_n_103 : STD_LOGIC;
  signal mantProd0_n_104 : STD_LOGIC;
  signal mantProd0_n_105 : STD_LOGIC;
  signal mantProd0_n_106 : STD_LOGIC;
  signal mantProd0_n_107 : STD_LOGIC;
  signal mantProd0_n_108 : STD_LOGIC;
  signal mantProd0_n_109 : STD_LOGIC;
  signal mantProd0_n_110 : STD_LOGIC;
  signal mantProd0_n_111 : STD_LOGIC;
  signal mantProd0_n_112 : STD_LOGIC;
  signal mantProd0_n_113 : STD_LOGIC;
  signal mantProd0_n_114 : STD_LOGIC;
  signal mantProd0_n_115 : STD_LOGIC;
  signal mantProd0_n_116 : STD_LOGIC;
  signal mantProd0_n_117 : STD_LOGIC;
  signal mantProd0_n_118 : STD_LOGIC;
  signal mantProd0_n_119 : STD_LOGIC;
  signal mantProd0_n_120 : STD_LOGIC;
  signal mantProd0_n_121 : STD_LOGIC;
  signal mantProd0_n_122 : STD_LOGIC;
  signal mantProd0_n_123 : STD_LOGIC;
  signal mantProd0_n_124 : STD_LOGIC;
  signal mantProd0_n_125 : STD_LOGIC;
  signal mantProd0_n_126 : STD_LOGIC;
  signal mantProd0_n_127 : STD_LOGIC;
  signal mantProd0_n_128 : STD_LOGIC;
  signal mantProd0_n_129 : STD_LOGIC;
  signal mantProd0_n_130 : STD_LOGIC;
  signal mantProd0_n_131 : STD_LOGIC;
  signal mantProd0_n_132 : STD_LOGIC;
  signal mantProd0_n_133 : STD_LOGIC;
  signal mantProd0_n_134 : STD_LOGIC;
  signal mantProd0_n_135 : STD_LOGIC;
  signal mantProd0_n_136 : STD_LOGIC;
  signal mantProd0_n_137 : STD_LOGIC;
  signal mantProd0_n_138 : STD_LOGIC;
  signal mantProd0_n_139 : STD_LOGIC;
  signal mantProd0_n_140 : STD_LOGIC;
  signal mantProd0_n_141 : STD_LOGIC;
  signal mantProd0_n_142 : STD_LOGIC;
  signal mantProd0_n_143 : STD_LOGIC;
  signal mantProd0_n_144 : STD_LOGIC;
  signal mantProd0_n_145 : STD_LOGIC;
  signal mantProd0_n_146 : STD_LOGIC;
  signal mantProd0_n_147 : STD_LOGIC;
  signal mantProd0_n_148 : STD_LOGIC;
  signal mantProd0_n_149 : STD_LOGIC;
  signal mantProd0_n_150 : STD_LOGIC;
  signal mantProd0_n_151 : STD_LOGIC;
  signal mantProd0_n_152 : STD_LOGIC;
  signal mantProd0_n_153 : STD_LOGIC;
  signal mantProd0_n_58 : STD_LOGIC;
  signal mantProd0_n_59 : STD_LOGIC;
  signal mantProd0_n_60 : STD_LOGIC;
  signal mantProd0_n_61 : STD_LOGIC;
  signal mantProd0_n_62 : STD_LOGIC;
  signal mantProd0_n_63 : STD_LOGIC;
  signal mantProd0_n_64 : STD_LOGIC;
  signal mantProd0_n_65 : STD_LOGIC;
  signal mantProd0_n_66 : STD_LOGIC;
  signal mantProd0_n_67 : STD_LOGIC;
  signal mantProd0_n_68 : STD_LOGIC;
  signal mantProd0_n_69 : STD_LOGIC;
  signal mantProd0_n_70 : STD_LOGIC;
  signal mantProd0_n_71 : STD_LOGIC;
  signal mantProd0_n_72 : STD_LOGIC;
  signal mantProd0_n_73 : STD_LOGIC;
  signal mantProd0_n_74 : STD_LOGIC;
  signal mantProd0_n_75 : STD_LOGIC;
  signal mantProd0_n_76 : STD_LOGIC;
  signal mantProd0_n_77 : STD_LOGIC;
  signal mantProd0_n_78 : STD_LOGIC;
  signal mantProd0_n_79 : STD_LOGIC;
  signal mantProd0_n_80 : STD_LOGIC;
  signal mantProd0_n_81 : STD_LOGIC;
  signal mantProd0_n_82 : STD_LOGIC;
  signal mantProd0_n_83 : STD_LOGIC;
  signal mantProd0_n_84 : STD_LOGIC;
  signal mantProd0_n_85 : STD_LOGIC;
  signal mantProd0_n_86 : STD_LOGIC;
  signal mantProd0_n_87 : STD_LOGIC;
  signal mantProd0_n_88 : STD_LOGIC;
  signal mantProd0_n_89 : STD_LOGIC;
  signal mantProd0_n_90 : STD_LOGIC;
  signal mantProd0_n_91 : STD_LOGIC;
  signal mantProd0_n_92 : STD_LOGIC;
  signal mantProd0_n_93 : STD_LOGIC;
  signal mantProd0_n_94 : STD_LOGIC;
  signal mantProd0_n_95 : STD_LOGIC;
  signal mantProd0_n_96 : STD_LOGIC;
  signal mantProd0_n_97 : STD_LOGIC;
  signal mantProd0_n_98 : STD_LOGIC;
  signal mantProd0_n_99 : STD_LOGIC;
  signal \mantProd_reg__0\ : STD_LOGIC_VECTOR ( 47 downto 22 );
  signal mantProd_reg_i_3_n_0 : STD_LOGIC;
  signal mantProd_reg_n_101 : STD_LOGIC;
  signal mantProd_reg_n_102 : STD_LOGIC;
  signal mantProd_reg_n_103 : STD_LOGIC;
  signal mantProd_reg_n_104 : STD_LOGIC;
  signal mantProd_reg_n_105 : STD_LOGIC;
  signal \^mul_done\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal plusOp : STD_LOGIC_VECTOR ( 22 downto 1 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_carry__4_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \result[0]_i_1_n_0\ : STD_LOGIC;
  signal \result[10]_i_1_n_0\ : STD_LOGIC;
  signal \result[11]_i_1_n_0\ : STD_LOGIC;
  signal \result[12]_i_1_n_0\ : STD_LOGIC;
  signal \result[13]_i_1_n_0\ : STD_LOGIC;
  signal \result[14]_i_1_n_0\ : STD_LOGIC;
  signal \result[15]_i_1_n_0\ : STD_LOGIC;
  signal \result[16]_i_1_n_0\ : STD_LOGIC;
  signal \result[17]_i_1_n_0\ : STD_LOGIC;
  signal \result[18]_i_1_n_0\ : STD_LOGIC;
  signal \result[19]_i_1_n_0\ : STD_LOGIC;
  signal \result[1]_i_1_n_0\ : STD_LOGIC;
  signal \result[20]_i_1_n_0\ : STD_LOGIC;
  signal \result[21]_i_1_n_0\ : STD_LOGIC;
  signal \result[21]_i_2_n_0\ : STD_LOGIC;
  signal \result[22]_i_1_n_0\ : STD_LOGIC;
  signal \result[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \result[24]_i_1_n_0\ : STD_LOGIC;
  signal \result[25]_i_1__0_n_0\ : STD_LOGIC;
  signal \result[26]_i_1_n_0\ : STD_LOGIC;
  signal \result[27]_i_1_n_0\ : STD_LOGIC;
  signal \result[28]_i_1_n_0\ : STD_LOGIC;
  signal \result[29]_i_1__0_n_0\ : STD_LOGIC;
  signal \result[2]_i_1_n_0\ : STD_LOGIC;
  signal \result[30]_i_1__0_n_0\ : STD_LOGIC;
  signal \result[30]_i_2_n_0\ : STD_LOGIC;
  signal \result[30]_i_3_n_0\ : STD_LOGIC;
  signal \result[30]_i_4_n_0\ : STD_LOGIC;
  signal \result[31]_i_10_n_0\ : STD_LOGIC;
  signal \result[31]_i_11_n_0\ : STD_LOGIC;
  signal \result[31]_i_12_n_0\ : STD_LOGIC;
  signal \result[31]_i_13_n_0\ : STD_LOGIC;
  signal \result[31]_i_14_n_0\ : STD_LOGIC;
  signal \result[31]_i_15_n_0\ : STD_LOGIC;
  signal \result[31]_i_16_n_0\ : STD_LOGIC;
  signal \result[31]_i_17_n_0\ : STD_LOGIC;
  signal \result[31]_i_18_n_0\ : STD_LOGIC;
  signal \result[31]_i_19_n_0\ : STD_LOGIC;
  signal \result[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \result[31]_i_20_n_0\ : STD_LOGIC;
  signal \result[31]_i_21_n_0\ : STD_LOGIC;
  signal \result[31]_i_22_n_0\ : STD_LOGIC;
  signal \result[31]_i_2_n_0\ : STD_LOGIC;
  signal \result[31]_i_3_n_0\ : STD_LOGIC;
  signal \result[31]_i_4_n_0\ : STD_LOGIC;
  signal \result[31]_i_5_n_0\ : STD_LOGIC;
  signal \result[31]_i_6_n_0\ : STD_LOGIC;
  signal \result[31]_i_7_n_0\ : STD_LOGIC;
  signal \result[31]_i_8_n_0\ : STD_LOGIC;
  signal \result[31]_i_9_n_0\ : STD_LOGIC;
  signal \result[3]_i_1_n_0\ : STD_LOGIC;
  signal \result[4]_i_1_n_0\ : STD_LOGIC;
  signal \result[5]_i_1_n_0\ : STD_LOGIC;
  signal \result[6]_i_1_n_0\ : STD_LOGIC;
  signal \result[7]_i_1_n_0\ : STD_LOGIC;
  signal \result[8]_i_1_n_0\ : STD_LOGIC;
  signal \result[9]_i_1_n_0\ : STD_LOGIC;
  signal signA : STD_LOGIC;
  signal signB : STD_LOGIC;
  signal signZ : STD_LOGIC;
  signal signZ_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal \NLW_expSum0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_expSum0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mantProd0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mantProd0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mantProd0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mantProd0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mantProd0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mantProd0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mantProd0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mantProd0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mantProd0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mantProd_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mantProd_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mantProd_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mantProd_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mantProd_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mantProd_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mantProd_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mantProd_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mantProd_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mantProd_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 31 );
  signal NLW_mantProd_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_plusOp_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_plusOp_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of expSum0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \expSum0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \expSum0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \expSum[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \expSum[4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \expSum[8]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \mantNorm_temp[0]_i_2\ : label is "soft_lutpair53";
  attribute METHODOLOGY_DRC_VIOS of mantProd0 : label is "{SYNTH-11 {cell *THIS*}}";
  attribute SOFT_HLUTNM of mantProd0_i_2 : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of mantProd_reg_i_3 : label is "soft_lutpair66";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS of plusOp_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \plusOp_carry__3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \plusOp_carry__4\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \result[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \result[10]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \result[11]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \result[12]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \result[13]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \result[14]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \result[15]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \result[16]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \result[17]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \result[18]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \result[19]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \result[1]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \result[20]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \result[21]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \result[2]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \result[31]_i_10\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \result[31]_i_11\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \result[3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \result[4]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \result[5]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \result[6]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \result[7]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \result[8]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \result[9]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair54";
begin
  E(0) <= \^e\(0);
  mul_done <= \^mul_done\;
\FSM_sequential_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40700000"
    )
        port map (
      I0 => \term_P_reg[0]\(0),
      I1 => \term_P_reg[0]\(2),
      I2 => \term_P_reg[0]\(1),
      I3 => \term_P_reg[0]\(3),
      I4 => \^mul_done\,
      I5 => \FSM_sequential_state_reg[0]_0\,
      O => \FSM_sequential_state_reg[0]\
    );
add_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444044"
    )
        port map (
      I0 => \term_P_reg[0]\(3),
      I1 => \term_P_reg[0]\(0),
      I2 => \term_P_reg[0]\(2),
      I3 => \term_P_reg[0]\(1),
      I4 => \^mul_done\,
      O => add_start
    );
\done_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \^mul_done\,
      O => \done_i_1__1_n_0\
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \done_i_1__1_n_0\,
      Q => \^mul_done\,
      R => '0'
    );
\expA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => signA_reg_0(23),
      Q => \expA_reg_n_0_[0]\,
      R => '0'
    );
\expA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => signA_reg_0(24),
      Q => \expA_reg_n_0_[1]\,
      R => '0'
    );
\expA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => signA_reg_0(25),
      Q => \expA_reg_n_0_[2]\,
      R => '0'
    );
\expA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => signA_reg_0(26),
      Q => \expA_reg_n_0_[3]\,
      R => '0'
    );
\expA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => signA_reg_0(27),
      Q => \expA_reg_n_0_[4]\,
      R => '0'
    );
\expA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => signA_reg_0(28),
      Q => \expA_reg_n_0_[5]\,
      R => '0'
    );
\expA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => signA_reg_0(29),
      Q => \expA_reg_n_0_[6]\,
      R => '0'
    );
\expA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => signA_reg_0(30),
      Q => \expA_reg_n_0_[7]\,
      R => '0'
    );
\expB[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      O => \expB[7]_i_1_n_0\
    );
\expB_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => Q(23),
      Q => \expB_reg_n_0_[0]\,
      R => '0'
    );
\expB_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => Q(24),
      Q => \expB_reg_n_0_[1]\,
      R => '0'
    );
\expB_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => Q(25),
      Q => \expB_reg_n_0_[2]\,
      R => '0'
    );
\expB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => Q(26),
      Q => \expB_reg_n_0_[3]\,
      R => '0'
    );
\expB_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => Q(27),
      Q => \expB_reg_n_0_[4]\,
      R => '0'
    );
\expB_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => Q(28),
      Q => \expB_reg_n_0_[5]\,
      R => '0'
    );
\expB_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => Q(29),
      Q => \expB_reg_n_0_[6]\,
      R => '0'
    );
\expB_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => Q(30),
      Q => \expB_reg_n_0_[7]\,
      R => '0'
    );
\expFinal[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \result[30]_i_2_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \expSum_reg_n_0_[8]\,
      O => \expFinal[7]_i_1_n_0\
    );
\expFinal_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expFinal[7]_i_1_n_0\,
      D => \expSum_reg_n_0_[0]\,
      Q => expFinal(0),
      R => '0'
    );
\expFinal_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expFinal[7]_i_1_n_0\,
      D => \expSum_reg_n_0_[1]\,
      Q => expFinal(1),
      R => '0'
    );
\expFinal_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expFinal[7]_i_1_n_0\,
      D => \expSum_reg_n_0_[2]\,
      Q => expFinal(2),
      R => '0'
    );
\expFinal_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expFinal[7]_i_1_n_0\,
      D => \expSum_reg_n_0_[3]\,
      Q => expFinal(3),
      R => '0'
    );
\expFinal_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expFinal[7]_i_1_n_0\,
      D => \expSum_reg_n_0_[4]\,
      Q => expFinal(4),
      R => '0'
    );
\expFinal_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expFinal[7]_i_1_n_0\,
      D => \expSum_reg_n_0_[5]\,
      Q => expFinal(5),
      R => '0'
    );
\expFinal_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expFinal[7]_i_1_n_0\,
      D => \expSum_reg_n_0_[6]\,
      Q => expFinal(6),
      R => '0'
    );
\expFinal_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expFinal[7]_i_1_n_0\,
      D => \expSum_reg_n_0_[7]\,
      Q => expFinal(7),
      R => '0'
    );
expSum0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => expSum0_carry_n_0,
      CO(2) => expSum0_carry_n_1,
      CO(1) => expSum0_carry_n_2,
      CO(0) => expSum0_carry_n_3,
      CYINIT => '1',
      DI(3) => \expA_reg_n_0_[3]\,
      DI(2) => \expA_reg_n_0_[2]\,
      DI(1) => \expA_reg_n_0_[1]\,
      DI(0) => \expA_reg_n_0_[0]\,
      O(3 downto 0) => expSum0(3 downto 0),
      S(3) => expSum0_carry_i_1_n_0,
      S(2) => expSum0_carry_i_2_n_0,
      S(1) => expSum0_carry_i_3_n_0,
      S(0) => expSum0_carry_i_4_n_0
    );
\expSum0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => expSum0_carry_n_0,
      CO(3) => \expSum0_carry__0_n_0\,
      CO(2) => \expSum0_carry__0_n_1\,
      CO(1) => \expSum0_carry__0_n_2\,
      CO(0) => \expSum0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \expA_reg_n_0_[7]\,
      DI(2) => \expA_reg_n_0_[6]\,
      DI(1) => \expA_reg_n_0_[5]\,
      DI(0) => \expA_reg_n_0_[4]\,
      O(3 downto 0) => expSum0(7 downto 4),
      S(3) => \expSum0_carry__0_i_1_n_0\,
      S(2) => \expSum0_carry__0_i_2_n_0\,
      S(1) => \expSum0_carry__0_i_3_n_0\,
      S(0) => \expSum0_carry__0_i_4_n_0\
    );
\expSum0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \expB_reg_n_0_[7]\,
      I1 => \expA_reg_n_0_[7]\,
      O => \expSum0_carry__0_i_1_n_0\
    );
\expSum0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \expA_reg_n_0_[6]\,
      I1 => \expB_reg_n_0_[6]\,
      O => \expSum0_carry__0_i_2_n_0\
    );
\expSum0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \expA_reg_n_0_[5]\,
      I1 => \expB_reg_n_0_[5]\,
      O => \expSum0_carry__0_i_3_n_0\
    );
\expSum0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \expA_reg_n_0_[4]\,
      I1 => \expB_reg_n_0_[4]\,
      O => \expSum0_carry__0_i_4_n_0\
    );
\expSum0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \expSum0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_expSum0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \expSum0_carry__1_n_2\,
      CO(0) => \NLW_expSum0_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \expB_reg_n_0_[7]\,
      O(3 downto 1) => \NLW_expSum0_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => expSum0(8),
      S(3 downto 1) => B"001",
      S(0) => \expSum0_carry__1_i_1_n_0\
    );
\expSum0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \expB_reg_n_0_[7]\,
      O => \expSum0_carry__1_i_1_n_0\
    );
expSum0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \expA_reg_n_0_[3]\,
      I1 => \expB_reg_n_0_[3]\,
      O => expSum0_carry_i_1_n_0
    );
expSum0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \expA_reg_n_0_[2]\,
      I1 => \expB_reg_n_0_[2]\,
      O => expSum0_carry_i_2_n_0
    );
expSum0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \expA_reg_n_0_[1]\,
      I1 => \expB_reg_n_0_[1]\,
      O => expSum0_carry_i_3_n_0
    );
expSum0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \expA_reg_n_0_[0]\,
      I1 => \expB_reg_n_0_[0]\,
      O => expSum0_carry_i_4_n_0
    );
\expSum[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02FE"
    )
        port map (
      I0 => expSum0(0),
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \expSum_reg_n_0_[0]\,
      O => \expSum[0]_i_1_n_0\
    );
\expSum[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FEFE02"
    )
        port map (
      I0 => expSum0(1),
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \expSum_reg_n_0_[0]\,
      I4 => \expSum_reg_n_0_[1]\,
      O => \expSum[1]_i_1_n_0\
    );
\expSum[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FEFE02FE02FE02"
    )
        port map (
      I0 => expSum0(2),
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \expSum_reg_n_0_[2]\,
      I4 => \expSum_reg_n_0_[1]\,
      I5 => \expSum_reg_n_0_[0]\,
      O => \expSum[2]_i_1_n_0\
    );
\expSum[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3FFFC000"
    )
        port map (
      I0 => expSum0(3),
      I1 => \expSum_reg_n_0_[0]\,
      I2 => \expSum_reg_n_0_[1]\,
      I3 => \expSum_reg_n_0_[2]\,
      I4 => \expSum_reg_n_0_[3]\,
      I5 => \expSum[8]_i_2_n_0\,
      O => \expSum[3]_i_1_n_0\
    );
\expSum[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FEFE02"
    )
        port map (
      I0 => expSum0(4),
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \expSum_reg_n_0_[4]\,
      I4 => \expSum[6]_i_2_n_0\,
      O => \expSum[4]_i_1_n_0\
    );
\expSum[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FEFE02FE02FE02"
    )
        port map (
      I0 => expSum0(5),
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \expSum_reg_n_0_[5]\,
      I4 => \expSum[6]_i_2_n_0\,
      I5 => \expSum_reg_n_0_[4]\,
      O => \expSum[5]_i_1_n_0\
    );
\expSum[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => expSum0(6),
      I1 => \expSum[8]_i_2_n_0\,
      I2 => \expSum_reg_n_0_[6]\,
      I3 => \expSum_reg_n_0_[5]\,
      I4 => \expSum_reg_n_0_[4]\,
      I5 => \expSum[6]_i_2_n_0\,
      O => \expSum[6]_i_1_n_0\
    );
\expSum[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \expSum_reg_n_0_[0]\,
      I1 => \expSum_reg_n_0_[1]\,
      I2 => \expSum_reg_n_0_[2]\,
      I3 => \expSum_reg_n_0_[3]\,
      O => \expSum[6]_i_2_n_0\
    );
\expSum[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FEFE02FE02FE02"
    )
        port map (
      I0 => expSum0(7),
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \expSum_reg_n_0_[7]\,
      I4 => \expSum[8]_i_3_n_0\,
      I5 => \expSum_reg_n_0_[6]\,
      O => \expSum[7]_i_1_n_0\
    );
\expSum[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => expSum0(8),
      I1 => \expSum[8]_i_2_n_0\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[6]\,
      I4 => \expSum[8]_i_3_n_0\,
      I5 => \expSum_reg_n_0_[7]\,
      O => \expSum[8]_i_1_n_0\
    );
\expSum[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      O => \expSum[8]_i_2_n_0\
    );
\expSum[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \expSum_reg_n_0_[0]\,
      I1 => \expSum_reg_n_0_[1]\,
      I2 => \expSum_reg_n_0_[2]\,
      I3 => \expSum_reg_n_0_[3]\,
      I4 => \expSum_reg_n_0_[4]\,
      I5 => \expSum_reg_n_0_[5]\,
      O => \expSum[8]_i_3_n_0\
    );
\expSum[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22A200A2"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \mantProd_reg__0\(47),
      I3 => \state_reg_n_0_[1]\,
      I4 => L(23),
      O => \expSum[9]_i_1_n_0\
    );
\expSum[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CCC3CCC3CCC5555"
    )
        port map (
      I0 => \expSum0_carry__1_n_2\,
      I1 => \expSum_reg_n_0_[9]\,
      I2 => \expSum[9]_i_3_n_0\,
      I3 => \expSum_reg_n_0_[8]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => \expSum[9]_i_2_n_0\
    );
\expSum[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \expSum_reg_n_0_[7]\,
      I1 => \expSum[6]_i_2_n_0\,
      I2 => \expSum_reg_n_0_[4]\,
      I3 => \expSum_reg_n_0_[5]\,
      I4 => \expSum_reg_n_0_[6]\,
      O => \expSum[9]_i_3_n_0\
    );
\expSum_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expSum[9]_i_1_n_0\,
      D => \expSum[0]_i_1_n_0\,
      Q => \expSum_reg_n_0_[0]\,
      R => '0'
    );
\expSum_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expSum[9]_i_1_n_0\,
      D => \expSum[1]_i_1_n_0\,
      Q => \expSum_reg_n_0_[1]\,
      R => '0'
    );
\expSum_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expSum[9]_i_1_n_0\,
      D => \expSum[2]_i_1_n_0\,
      Q => \expSum_reg_n_0_[2]\,
      R => '0'
    );
\expSum_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expSum[9]_i_1_n_0\,
      D => \expSum[3]_i_1_n_0\,
      Q => \expSum_reg_n_0_[3]\,
      R => '0'
    );
\expSum_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expSum[9]_i_1_n_0\,
      D => \expSum[4]_i_1_n_0\,
      Q => \expSum_reg_n_0_[4]\,
      R => '0'
    );
\expSum_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expSum[9]_i_1_n_0\,
      D => \expSum[5]_i_1_n_0\,
      Q => \expSum_reg_n_0_[5]\,
      R => '0'
    );
\expSum_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expSum[9]_i_1_n_0\,
      D => \expSum[6]_i_1_n_0\,
      Q => \expSum_reg_n_0_[6]\,
      R => '0'
    );
\expSum_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expSum[9]_i_1_n_0\,
      D => \expSum[7]_i_1_n_0\,
      Q => \expSum_reg_n_0_[7]\,
      R => '0'
    );
\expSum_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expSum[9]_i_1_n_0\,
      D => \expSum[8]_i_1_n_0\,
      Q => \expSum_reg_n_0_[8]\,
      R => '0'
    );
\expSum_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expSum[9]_i_1_n_0\,
      D => \expSum[9]_i_2_n_0\,
      Q => \expSum_reg_n_0_[9]\,
      R => '0'
    );
\fp_A[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF0FFFAFCF0FCFAF"
    )
        port map (
      I0 => \fp_B[31]_i_3\(23),
      I1 => \fp_A[23]_i_2_n_0\,
      I2 => \term_P_reg[0]\(0),
      I3 => \term_P_reg[0]\(1),
      I4 => \fp_A_reg[23]\,
      I5 => \fp_A_reg[29]\(0),
      O => \error_n_reg[29]\(0)
    );
\fp_A[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8080808"
    )
        port map (
      I0 => \^mul_done\,
      I1 => \fp_A_reg[29]_0\(0),
      I2 => \term_P_reg[0]\(2),
      I3 => add_done,
      I4 => fp_result(23),
      O => \fp_A[23]_i_2_n_0\
    );
\fp_A[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF0FFFAFCF0FCFAF"
    )
        port map (
      I0 => \fp_B[31]_i_3\(24),
      I1 => \fp_A[24]_i_2_n_0\,
      I2 => \term_P_reg[0]\(0),
      I3 => \term_P_reg[0]\(1),
      I4 => \fp_A_reg[23]\,
      I5 => \fp_A_reg[29]\(1),
      O => \error_n_reg[29]\(1)
    );
\fp_A[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8080808"
    )
        port map (
      I0 => \^mul_done\,
      I1 => \fp_A_reg[29]_0\(1),
      I2 => \term_P_reg[0]\(2),
      I3 => add_done,
      I4 => fp_result(24),
      O => \fp_A[24]_i_2_n_0\
    );
\fp_A[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FDD00DD"
    )
        port map (
      I0 => \^mul_done\,
      I1 => \fp_A_reg[29]_0\(2),
      I2 => add_done,
      I3 => \term_P_reg[0]\(2),
      I4 => \fp_A_reg[29]\(2),
      O => done_reg_32
    );
\fp_A[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FDD00DD"
    )
        port map (
      I0 => \^mul_done\,
      I1 => \fp_A_reg[29]_0\(3),
      I2 => add_done,
      I3 => \term_P_reg[0]\(2),
      I4 => \fp_A_reg[29]\(3),
      O => done_reg_33
    );
\fp_A[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF0FFFAFCF0FCFAF"
    )
        port map (
      I0 => \fp_B[31]_i_3\(27),
      I1 => \fp_A[27]_i_2_n_0\,
      I2 => \term_P_reg[0]\(0),
      I3 => \term_P_reg[0]\(1),
      I4 => \fp_A_reg[23]\,
      I5 => \fp_A_reg[29]\(4),
      O => \error_n_reg[29]\(2)
    );
\fp_A[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD0D0D0D"
    )
        port map (
      I0 => \^mul_done\,
      I1 => \fp_A_reg[29]_0\(4),
      I2 => \term_P_reg[0]\(2),
      I3 => add_done,
      I4 => fp_result(27),
      O => \fp_A[27]_i_2_n_0\
    );
\fp_A[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF0FFFAFCF0FCFAF"
    )
        port map (
      I0 => \fp_B[31]_i_3\(28),
      I1 => \fp_A[28]_i_2_n_0\,
      I2 => \term_P_reg[0]\(0),
      I3 => \term_P_reg[0]\(1),
      I4 => \fp_A_reg[23]\,
      I5 => \fp_A_reg[29]\(5),
      O => \error_n_reg[29]\(3)
    );
\fp_A[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD0D0D0D"
    )
        port map (
      I0 => \^mul_done\,
      I1 => \fp_A_reg[29]_0\(5),
      I2 => \term_P_reg[0]\(2),
      I3 => add_done,
      I4 => fp_result(28),
      O => \fp_A[28]_i_2_n_0\
    );
\fp_A[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF0FFFAFCF0FCFAF"
    )
        port map (
      I0 => \fp_B[31]_i_3\(29),
      I1 => \fp_A[29]_i_2_n_0\,
      I2 => \term_P_reg[0]\(0),
      I3 => \term_P_reg[0]\(1),
      I4 => \fp_A_reg[23]\,
      I5 => \fp_A_reg[29]\(6),
      O => \error_n_reg[29]\(4)
    );
\fp_A[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD0D0D0D"
    )
        port map (
      I0 => \^mul_done\,
      I1 => \fp_A_reg[29]_0\(6),
      I2 => \term_P_reg[0]\(2),
      I3 => add_done,
      I4 => fp_result(29),
      O => \fp_A[29]_i_2_n_0\
    );
\fp_B[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(0),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(0),
      O => done_reg_31
    );
\fp_B[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(10),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(10),
      O => done_reg_21
    );
\fp_B[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(11),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(11),
      O => done_reg_20
    );
\fp_B[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(12),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(12),
      O => done_reg_19
    );
\fp_B[13]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(13),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(13),
      O => done_reg_18
    );
\fp_B[14]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(14),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(14),
      O => done_reg_17
    );
\fp_B[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(15),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(15),
      O => done_reg_16
    );
\fp_B[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(16),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(16),
      O => done_reg_15
    );
\fp_B[17]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(17),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(17),
      O => done_reg_14
    );
\fp_B[18]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(18),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(18),
      O => done_reg_13
    );
\fp_B[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(19),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(19),
      O => done_reg_12
    );
\fp_B[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(1),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(1),
      O => done_reg_30
    );
\fp_B[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(20),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(20),
      O => done_reg_11
    );
\fp_B[21]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(21),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(21),
      O => done_reg_10
    );
\fp_B[22]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(22),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(22),
      O => done_reg_9
    );
\fp_B[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(23),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(23),
      O => done_reg_8
    );
\fp_B[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(24),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(24),
      O => done_reg_7
    );
\fp_B[25]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(25),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(25),
      O => done_reg_6
    );
\fp_B[26]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(26),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(26),
      O => done_reg_5
    );
\fp_B[27]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(27),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(27),
      O => done_reg_4
    );
\fp_B[28]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(28),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(28),
      O => done_reg_3
    );
\fp_B[29]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(29),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(29),
      O => done_reg_2
    );
\fp_B[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(2),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(2),
      O => done_reg_29
    );
\fp_B[30]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(30),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(30),
      O => done_reg_1
    );
\fp_B[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04040504"
    )
        port map (
      I0 => rst_fp,
      I1 => \term_P_reg[0]\(0),
      I2 => \term_P_reg[0]\(3),
      I3 => \term_P_reg[0]\(1),
      I4 => \term_P_reg[0]\(2),
      O => \^e\(0)
    );
\fp_B[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(31),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(31),
      O => done_reg_0
    );
\fp_B[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(3),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(3),
      O => done_reg_28
    );
\fp_B[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(4),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(4),
      O => done_reg_27
    );
\fp_B[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(5),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(5),
      O => done_reg_26
    );
\fp_B[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(6),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(6),
      O => done_reg_25
    );
\fp_B[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(7),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(7),
      O => done_reg_24
    );
\fp_B[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(8),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(8),
      O => done_reg_23
    );
\fp_B[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_result(9),
      I1 => \^mul_done\,
      I2 => \fp_B[31]_i_3\(9),
      O => done_reg_22
    );
fp_sub_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF37FF00003300"
    )
        port map (
      I0 => \^mul_done\,
      I1 => \term_P_reg[0]\(1),
      I2 => \term_P_reg[0]\(2),
      I3 => fp_sub_reg,
      I4 => rst_fp,
      I5 => fp_sub_reg_0,
      O => done_reg_34
    );
\mantNorm[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      O => \mantNorm[22]_i_1_n_0\
    );
\mantNorm_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(1),
      Q => mantNorm(0),
      R => '0'
    );
\mantNorm_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(11),
      Q => mantNorm(10),
      R => '0'
    );
\mantNorm_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(12),
      Q => mantNorm(11),
      R => '0'
    );
\mantNorm_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(13),
      Q => mantNorm(12),
      R => '0'
    );
\mantNorm_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(14),
      Q => mantNorm(13),
      R => '0'
    );
\mantNorm_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(15),
      Q => mantNorm(14),
      R => '0'
    );
\mantNorm_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(16),
      Q => mantNorm(15),
      R => '0'
    );
\mantNorm_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(17),
      Q => mantNorm(16),
      R => '0'
    );
\mantNorm_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(18),
      Q => mantNorm(17),
      R => '0'
    );
\mantNorm_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(19),
      Q => mantNorm(18),
      R => '0'
    );
\mantNorm_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(20),
      Q => mantNorm(19),
      R => '0'
    );
\mantNorm_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(2),
      Q => mantNorm(1),
      R => '0'
    );
\mantNorm_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(21),
      Q => mantNorm(20),
      R => '0'
    );
\mantNorm_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(22),
      Q => mantNorm(21),
      R => '0'
    );
\mantNorm_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(23),
      Q => mantNorm(22),
      R => '0'
    );
\mantNorm_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(3),
      Q => mantNorm(2),
      R => '0'
    );
\mantNorm_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(4),
      Q => mantNorm(3),
      R => '0'
    );
\mantNorm_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(5),
      Q => mantNorm(4),
      R => '0'
    );
\mantNorm_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(6),
      Q => mantNorm(5),
      R => '0'
    );
\mantNorm_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(7),
      Q => mantNorm(6),
      R => '0'
    );
\mantNorm_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(8),
      Q => mantNorm(7),
      R => '0'
    );
\mantNorm_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(9),
      Q => mantNorm(8),
      R => '0'
    );
\mantNorm_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm[22]_i_1_n_0\,
      D => L(10),
      Q => mantNorm(9),
      R => '0'
    );
\mantNorm_temp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => \mantProd_reg__0\(23),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(22),
      I3 => \state_reg_n_0_[2]\,
      I4 => \mantNorm_temp[0]_i_2_n_0\,
      I5 => \mantNorm_temp_reg_n_0_[0]\,
      O => \mantNorm_temp[0]_i_1_n_0\
    );
\mantNorm_temp[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      O => \mantNorm_temp[0]_i_2_n_0\
    );
\mantNorm_temp[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(33),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(32),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(9),
      O => p_1_in(10)
    );
\mantNorm_temp[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(34),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(33),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(10),
      O => p_1_in(11)
    );
\mantNorm_temp[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(35),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(34),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(11),
      O => p_1_in(12)
    );
\mantNorm_temp[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(36),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(35),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(12),
      O => p_1_in(13)
    );
\mantNorm_temp[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(37),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(36),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(13),
      O => p_1_in(14)
    );
\mantNorm_temp[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(38),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(37),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(14),
      O => p_1_in(15)
    );
\mantNorm_temp[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(39),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(38),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(15),
      O => p_1_in(16)
    );
\mantNorm_temp[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(40),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(39),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(16),
      O => p_1_in(17)
    );
\mantNorm_temp[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(41),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(40),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(17),
      O => p_1_in(18)
    );
\mantNorm_temp[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(42),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(41),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(18),
      O => p_1_in(19)
    );
\mantNorm_temp[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D1DDD111"
    )
        port map (
      I0 => L(1),
      I1 => \state_reg_n_0_[0]\,
      I2 => \mantProd_reg__0\(24),
      I3 => \mantProd_reg__0\(47),
      I4 => \mantProd_reg__0\(23),
      O => p_1_in(1)
    );
\mantNorm_temp[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(43),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(42),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(19),
      O => p_1_in(20)
    );
\mantNorm_temp[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(44),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(43),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(20),
      O => p_1_in(21)
    );
\mantNorm_temp[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(45),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(44),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(21),
      O => p_1_in(22)
    );
\mantNorm_temp[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4840"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \mantNorm_temp_reg_n_0_[0]\,
      O => \mantNorm_temp[23]_i_1_n_0\
    );
\mantNorm_temp[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(46),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(45),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(22),
      O => p_1_in(23)
    );
\mantNorm_temp[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(25),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(24),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(1),
      O => p_1_in(2)
    );
\mantNorm_temp[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(26),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(25),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(2),
      O => p_1_in(3)
    );
\mantNorm_temp[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(27),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(26),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(3),
      O => p_1_in(4)
    );
\mantNorm_temp[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(28),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(27),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(4),
      O => p_1_in(5)
    );
\mantNorm_temp[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(29),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(28),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(5),
      O => p_1_in(6)
    );
\mantNorm_temp[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(30),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(29),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(6),
      O => p_1_in(7)
    );
\mantNorm_temp[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(31),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(30),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(7),
      O => p_1_in(8)
    );
\mantNorm_temp[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mantProd_reg__0\(32),
      I1 => \mantProd_reg__0\(47),
      I2 => \mantProd_reg__0\(31),
      I3 => \state_reg_n_0_[0]\,
      I4 => plusOp(8),
      O => p_1_in(9)
    );
\mantNorm_temp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mantNorm_temp[0]_i_1_n_0\,
      Q => \mantNorm_temp_reg_n_0_[0]\,
      R => '0'
    );
\mantNorm_temp_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(10),
      Q => L(10),
      R => '0'
    );
\mantNorm_temp_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(11),
      Q => L(11),
      R => '0'
    );
\mantNorm_temp_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(12),
      Q => L(12),
      R => '0'
    );
\mantNorm_temp_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(13),
      Q => L(13),
      R => '0'
    );
\mantNorm_temp_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(14),
      Q => L(14),
      R => '0'
    );
\mantNorm_temp_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(15),
      Q => L(15),
      R => '0'
    );
\mantNorm_temp_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(16),
      Q => L(16),
      R => '0'
    );
\mantNorm_temp_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(17),
      Q => L(17),
      R => '0'
    );
\mantNorm_temp_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(18),
      Q => L(18),
      R => '0'
    );
\mantNorm_temp_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(19),
      Q => L(19),
      R => '0'
    );
\mantNorm_temp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(1),
      Q => L(1),
      R => '0'
    );
\mantNorm_temp_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(20),
      Q => L(20),
      R => '0'
    );
\mantNorm_temp_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(21),
      Q => L(21),
      R => '0'
    );
\mantNorm_temp_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(22),
      Q => L(22),
      R => '0'
    );
\mantNorm_temp_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(23),
      Q => L(23),
      R => '0'
    );
\mantNorm_temp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(2),
      Q => L(2),
      R => '0'
    );
\mantNorm_temp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(3),
      Q => L(3),
      R => '0'
    );
\mantNorm_temp_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(4),
      Q => L(4),
      R => '0'
    );
\mantNorm_temp_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(5),
      Q => L(5),
      R => '0'
    );
\mantNorm_temp_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(6),
      Q => L(6),
      R => '0'
    );
\mantNorm_temp_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(7),
      Q => L(7),
      R => '0'
    );
\mantNorm_temp_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(8),
      Q => L(8),
      R => '0'
    );
\mantNorm_temp_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantNorm_temp[23]_i_1_n_0\,
      D => p_1_in(9),
      Q => L(9),
      R => '0'
    );
mantProd0: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 24) => B"000000",
      A(23) => mantB1,
      A(22 downto 0) => Q(22 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mantProd0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => D(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mantProd0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mantProd0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mantProd0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \expB[7]_i_1_n_0\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => \^e\(0),
      CEB2 => \expB[7]_i_1_n_0\,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mantProd0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mantProd0_OVERFLOW_UNCONNECTED,
      P(47) => mantProd0_n_58,
      P(46) => mantProd0_n_59,
      P(45) => mantProd0_n_60,
      P(44) => mantProd0_n_61,
      P(43) => mantProd0_n_62,
      P(42) => mantProd0_n_63,
      P(41) => mantProd0_n_64,
      P(40) => mantProd0_n_65,
      P(39) => mantProd0_n_66,
      P(38) => mantProd0_n_67,
      P(37) => mantProd0_n_68,
      P(36) => mantProd0_n_69,
      P(35) => mantProd0_n_70,
      P(34) => mantProd0_n_71,
      P(33) => mantProd0_n_72,
      P(32) => mantProd0_n_73,
      P(31) => mantProd0_n_74,
      P(30) => mantProd0_n_75,
      P(29) => mantProd0_n_76,
      P(28) => mantProd0_n_77,
      P(27) => mantProd0_n_78,
      P(26) => mantProd0_n_79,
      P(25) => mantProd0_n_80,
      P(24) => mantProd0_n_81,
      P(23) => mantProd0_n_82,
      P(22) => mantProd0_n_83,
      P(21) => mantProd0_n_84,
      P(20) => mantProd0_n_85,
      P(19) => mantProd0_n_86,
      P(18) => mantProd0_n_87,
      P(17) => mantProd0_n_88,
      P(16) => mantProd0_n_89,
      P(15) => mantProd0_n_90,
      P(14) => mantProd0_n_91,
      P(13) => mantProd0_n_92,
      P(12) => mantProd0_n_93,
      P(11) => mantProd0_n_94,
      P(10) => mantProd0_n_95,
      P(9) => mantProd0_n_96,
      P(8) => mantProd0_n_97,
      P(7) => mantProd0_n_98,
      P(6) => mantProd0_n_99,
      P(5) => mantProd0_n_100,
      P(4) => mantProd0_n_101,
      P(3) => mantProd0_n_102,
      P(2) => mantProd0_n_103,
      P(1) => mantProd0_n_104,
      P(0) => mantProd0_n_105,
      PATTERNBDETECT => NLW_mantProd0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mantProd0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => mantProd0_n_106,
      PCOUT(46) => mantProd0_n_107,
      PCOUT(45) => mantProd0_n_108,
      PCOUT(44) => mantProd0_n_109,
      PCOUT(43) => mantProd0_n_110,
      PCOUT(42) => mantProd0_n_111,
      PCOUT(41) => mantProd0_n_112,
      PCOUT(40) => mantProd0_n_113,
      PCOUT(39) => mantProd0_n_114,
      PCOUT(38) => mantProd0_n_115,
      PCOUT(37) => mantProd0_n_116,
      PCOUT(36) => mantProd0_n_117,
      PCOUT(35) => mantProd0_n_118,
      PCOUT(34) => mantProd0_n_119,
      PCOUT(33) => mantProd0_n_120,
      PCOUT(32) => mantProd0_n_121,
      PCOUT(31) => mantProd0_n_122,
      PCOUT(30) => mantProd0_n_123,
      PCOUT(29) => mantProd0_n_124,
      PCOUT(28) => mantProd0_n_125,
      PCOUT(27) => mantProd0_n_126,
      PCOUT(26) => mantProd0_n_127,
      PCOUT(25) => mantProd0_n_128,
      PCOUT(24) => mantProd0_n_129,
      PCOUT(23) => mantProd0_n_130,
      PCOUT(22) => mantProd0_n_131,
      PCOUT(21) => mantProd0_n_132,
      PCOUT(20) => mantProd0_n_133,
      PCOUT(19) => mantProd0_n_134,
      PCOUT(18) => mantProd0_n_135,
      PCOUT(17) => mantProd0_n_136,
      PCOUT(16) => mantProd0_n_137,
      PCOUT(15) => mantProd0_n_138,
      PCOUT(14) => mantProd0_n_139,
      PCOUT(13) => mantProd0_n_140,
      PCOUT(12) => mantProd0_n_141,
      PCOUT(11) => mantProd0_n_142,
      PCOUT(10) => mantProd0_n_143,
      PCOUT(9) => mantProd0_n_144,
      PCOUT(8) => mantProd0_n_145,
      PCOUT(7) => mantProd0_n_146,
      PCOUT(6) => mantProd0_n_147,
      PCOUT(5) => mantProd0_n_148,
      PCOUT(4) => mantProd0_n_149,
      PCOUT(3) => mantProd0_n_150,
      PCOUT(2) => mantProd0_n_151,
      PCOUT(1) => mantProd0_n_152,
      PCOUT(0) => mantProd0_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mantProd0_UNDERFLOW_UNCONNECTED
    );
mantProd0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \expB_reg_n_0_[4]\,
      I1 => \expB_reg_n_0_[5]\,
      I2 => \expB_reg_n_0_[0]\,
      I3 => \expB_reg_n_0_[1]\,
      I4 => mantProd0_i_2_n_0,
      O => mantB1
    );
mantProd0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \expB_reg_n_0_[3]\,
      I1 => \expB_reg_n_0_[2]\,
      I2 => \expB_reg_n_0_[6]\,
      I3 => \expB_reg_n_0_[7]\,
      O => mantProd0_i_2_n_0
    );
mantProd_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 24) => B"000000",
      A(23) => mantB1,
      A(22 downto 0) => Q(22 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mantProd_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 7) => B"00000000000",
      B(6) => mantA1,
      B(5 downto 0) => signA_reg_0(22 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mantProd_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mantProd_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mantProd_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \expB[7]_i_1_n_0\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \expB[7]_i_1_n_0\,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => CEP,
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mantProd_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => NLW_mantProd_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 31) => NLW_mantProd_reg_P_UNCONNECTED(47 downto 31),
      P(30 downto 5) => \mantProd_reg__0\(47 downto 22),
      P(4) => mantProd_reg_n_101,
      P(3) => mantProd_reg_n_102,
      P(2) => mantProd_reg_n_103,
      P(1) => mantProd_reg_n_104,
      P(0) => mantProd_reg_n_105,
      PATTERNBDETECT => NLW_mantProd_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mantProd_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => mantProd0_n_106,
      PCIN(46) => mantProd0_n_107,
      PCIN(45) => mantProd0_n_108,
      PCIN(44) => mantProd0_n_109,
      PCIN(43) => mantProd0_n_110,
      PCIN(42) => mantProd0_n_111,
      PCIN(41) => mantProd0_n_112,
      PCIN(40) => mantProd0_n_113,
      PCIN(39) => mantProd0_n_114,
      PCIN(38) => mantProd0_n_115,
      PCIN(37) => mantProd0_n_116,
      PCIN(36) => mantProd0_n_117,
      PCIN(35) => mantProd0_n_118,
      PCIN(34) => mantProd0_n_119,
      PCIN(33) => mantProd0_n_120,
      PCIN(32) => mantProd0_n_121,
      PCIN(31) => mantProd0_n_122,
      PCIN(30) => mantProd0_n_123,
      PCIN(29) => mantProd0_n_124,
      PCIN(28) => mantProd0_n_125,
      PCIN(27) => mantProd0_n_126,
      PCIN(26) => mantProd0_n_127,
      PCIN(25) => mantProd0_n_128,
      PCIN(24) => mantProd0_n_129,
      PCIN(23) => mantProd0_n_130,
      PCIN(22) => mantProd0_n_131,
      PCIN(21) => mantProd0_n_132,
      PCIN(20) => mantProd0_n_133,
      PCIN(19) => mantProd0_n_134,
      PCIN(18) => mantProd0_n_135,
      PCIN(17) => mantProd0_n_136,
      PCIN(16) => mantProd0_n_137,
      PCIN(15) => mantProd0_n_138,
      PCIN(14) => mantProd0_n_139,
      PCIN(13) => mantProd0_n_140,
      PCIN(12) => mantProd0_n_141,
      PCIN(11) => mantProd0_n_142,
      PCIN(10) => mantProd0_n_143,
      PCIN(9) => mantProd0_n_144,
      PCIN(8) => mantProd0_n_145,
      PCIN(7) => mantProd0_n_146,
      PCIN(6) => mantProd0_n_147,
      PCIN(5) => mantProd0_n_148,
      PCIN(4) => mantProd0_n_149,
      PCIN(3) => mantProd0_n_150,
      PCIN(2) => mantProd0_n_151,
      PCIN(1) => mantProd0_n_152,
      PCIN(0) => mantProd0_n_153,
      PCOUT(47 downto 0) => NLW_mantProd_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mantProd_reg_UNDERFLOW_UNCONNECTED
    );
mantProd_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      O => CEP
    );
mantProd_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => mantProd_reg_i_3_n_0,
      I1 => \expA_reg_n_0_[1]\,
      I2 => \expA_reg_n_0_[0]\,
      I3 => \expA_reg_n_0_[3]\,
      I4 => \expA_reg_n_0_[2]\,
      O => mantA1
    );
mantProd_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \expA_reg_n_0_[5]\,
      I1 => \expA_reg_n_0_[4]\,
      I2 => \expA_reg_n_0_[6]\,
      I3 => \expA_reg_n_0_[7]\,
      O => mantProd_reg_i_3_n_0
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => L(1),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => L(5 downto 2)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => L(9 downto 6)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3 downto 0) => L(13 downto 10)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(16 downto 13),
      S(3 downto 0) => L(17 downto 14)
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(20 downto 17),
      S(3 downto 0) => L(21 downto 18)
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3 downto 1) => \NLW_plusOp_carry__4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \plusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_plusOp_carry__4_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => plusOp(22 downto 21),
      S(3 downto 2) => B"00",
      S(1 downto 0) => L(23 downto 22)
    );
\result[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(0),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[0]_i_1_n_0\
    );
\result[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(10),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[10]_i_1_n_0\
    );
\result[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(11),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[11]_i_1_n_0\
    );
\result[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(12),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[12]_i_1_n_0\
    );
\result[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(13),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[13]_i_1_n_0\
    );
\result[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(14),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[14]_i_1_n_0\
    );
\result[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(15),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[15]_i_1_n_0\
    );
\result[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(16),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[16]_i_1_n_0\
    );
\result[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(17),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[17]_i_1_n_0\
    );
\result[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(18),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[18]_i_1_n_0\
    );
\result[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(19),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[19]_i_1_n_0\
    );
\result[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(1),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[1]_i_1_n_0\
    );
\result[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(20),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[20]_i_1_n_0\
    );
\result[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B111"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \result[31]_i_3_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \result[30]_i_2_n_0\,
      O => \result[21]_i_1_n_0\
    );
\result[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(21),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[21]_i_2_n_0\
    );
\result[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \result[31]_i_4_n_0\,
      I1 => \expSum_reg_n_0_[9]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => mantNorm(22),
      I4 => \state_reg_n_0_[0]\,
      I5 => \result[30]_i_2_n_0\,
      O => \result[22]_i_1_n_0\
    );
\result[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFF4440000"
    )
        port map (
      I0 => \expSum_reg_n_0_[9]\,
      I1 => \expSum_reg_n_0_[8]\,
      I2 => \result[30]_i_2_n_0\,
      I3 => expFinal(0),
      I4 => \state_reg_n_0_[0]\,
      I5 => \result[30]_i_3_n_0\,
      O => \result[23]_i_1__0_n_0\
    );
\result[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFF4440000"
    )
        port map (
      I0 => \expSum_reg_n_0_[9]\,
      I1 => \expSum_reg_n_0_[8]\,
      I2 => \result[30]_i_2_n_0\,
      I3 => expFinal(1),
      I4 => \state_reg_n_0_[0]\,
      I5 => \result[30]_i_3_n_0\,
      O => \result[24]_i_1_n_0\
    );
\result[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFF4440000"
    )
        port map (
      I0 => \expSum_reg_n_0_[9]\,
      I1 => \expSum_reg_n_0_[8]\,
      I2 => \result[30]_i_2_n_0\,
      I3 => expFinal(2),
      I4 => \state_reg_n_0_[0]\,
      I5 => \result[30]_i_3_n_0\,
      O => \result[25]_i_1__0_n_0\
    );
\result[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFF4440000"
    )
        port map (
      I0 => \expSum_reg_n_0_[9]\,
      I1 => \expSum_reg_n_0_[8]\,
      I2 => \result[30]_i_2_n_0\,
      I3 => expFinal(3),
      I4 => \state_reg_n_0_[0]\,
      I5 => \result[30]_i_3_n_0\,
      O => \result[26]_i_1_n_0\
    );
\result[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFF4440000"
    )
        port map (
      I0 => \expSum_reg_n_0_[9]\,
      I1 => \expSum_reg_n_0_[8]\,
      I2 => \result[30]_i_2_n_0\,
      I3 => expFinal(4),
      I4 => \state_reg_n_0_[0]\,
      I5 => \result[30]_i_3_n_0\,
      O => \result[27]_i_1_n_0\
    );
\result[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFF4440000"
    )
        port map (
      I0 => \expSum_reg_n_0_[9]\,
      I1 => \expSum_reg_n_0_[8]\,
      I2 => \result[30]_i_2_n_0\,
      I3 => expFinal(5),
      I4 => \state_reg_n_0_[0]\,
      I5 => \result[30]_i_3_n_0\,
      O => \result[28]_i_1_n_0\
    );
\result[29]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFF4440000"
    )
        port map (
      I0 => \expSum_reg_n_0_[9]\,
      I1 => \expSum_reg_n_0_[8]\,
      I2 => \result[30]_i_2_n_0\,
      I3 => expFinal(6),
      I4 => \state_reg_n_0_[0]\,
      I5 => \result[30]_i_3_n_0\,
      O => \result[29]_i_1__0_n_0\
    );
\result[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(2),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[2]_i_1_n_0\
    );
\result[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFF4440000"
    )
        port map (
      I0 => \expSum_reg_n_0_[9]\,
      I1 => \expSum_reg_n_0_[8]\,
      I2 => \result[30]_i_2_n_0\,
      I3 => expFinal(7),
      I4 => \state_reg_n_0_[0]\,
      I5 => \result[30]_i_3_n_0\,
      O => \result[30]_i_1__0_n_0\
    );
\result[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => \expSum_reg_n_0_[9]\,
      I1 => \result[30]_i_4_n_0\,
      I2 => \expSum_reg_n_0_[5]\,
      I3 => \expSum_reg_n_0_[8]\,
      I4 => \expSum_reg_n_0_[7]\,
      O => \result[30]_i_2_n_0\
    );
\result[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \result[31]_i_5_n_0\,
      I1 => \result[31]_i_8_n_0\,
      I2 => \result[31]_i_6_n_0\,
      I3 => \result[31]_i_9_n_0\,
      I4 => \result[31]_i_7_n_0\,
      O => \result[30]_i_3_n_0\
    );
\result[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \expSum_reg_n_0_[1]\,
      I1 => \expSum_reg_n_0_[0]\,
      I2 => \expSum_reg_n_0_[2]\,
      I3 => \expSum_reg_n_0_[6]\,
      I4 => \expSum_reg_n_0_[3]\,
      I5 => \expSum_reg_n_0_[4]\,
      O => \result[30]_i_4_n_0\
    );
\result[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \expB_reg_n_0_[3]\,
      I1 => \expB_reg_n_0_[2]\,
      I2 => \expB_reg_n_0_[0]\,
      I3 => \expB_reg_n_0_[7]\,
      O => \result[31]_i_10_n_0\
    );
\result[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \expA_reg_n_0_[5]\,
      I1 => \expA_reg_n_0_[4]\,
      I2 => \expA_reg_n_0_[6]\,
      I3 => \expA_reg_n_0_[7]\,
      O => \result[31]_i_11_n_0\
    );
\result[31]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \expA_reg_n_0_[2]\,
      I1 => \expA_reg_n_0_[3]\,
      I2 => \expA_reg_n_0_[0]\,
      I3 => \expA_reg_n_0_[1]\,
      I4 => mantProd_reg_i_3_n_0,
      O => \result[31]_i_12_n_0\
    );
\result[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(20),
      I1 => Q(18),
      I2 => Q(22),
      I3 => Q(9),
      O => \result[31]_i_13_n_0\
    );
\result[31]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \result[31]_i_17_n_0\,
      I1 => \result[31]_i_18_n_0\,
      I2 => \result[31]_i_19_n_0\,
      I3 => Q(12),
      I4 => Q(13),
      I5 => Q(2),
      O => \result[31]_i_14_n_0\
    );
\result[31]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => signA_reg_0(20),
      I1 => signA_reg_0(18),
      I2 => signA_reg_0(22),
      I3 => signA_reg_0(9),
      O => \result[31]_i_15_n_0\
    );
\result[31]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \result[31]_i_20_n_0\,
      I1 => \result[31]_i_21_n_0\,
      I2 => \result[31]_i_22_n_0\,
      I3 => signA_reg_0(12),
      I4 => signA_reg_0(13),
      I5 => signA_reg_0(2),
      O => \result[31]_i_16_n_0\
    );
\result[31]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(16),
      I1 => Q(5),
      I2 => Q(19),
      I3 => Q(1),
      O => \result[31]_i_17_n_0\
    );
\result[31]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(14),
      I1 => Q(11),
      I2 => Q(17),
      I3 => Q(10),
      O => \result[31]_i_18_n_0\
    );
\result[31]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(15),
      I1 => Q(6),
      I2 => Q(3),
      I3 => Q(0),
      O => \result[31]_i_19_n_0\
    );
\result[31]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880F"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \result[31]_i_3_n_0\,
      I3 => \state_reg_n_0_[0]\,
      O => \result[31]_i_1__0_n_0\
    );
\result[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signZ,
      I1 => \result[31]_i_4_n_0\,
      O => \result[31]_i_2_n_0\
    );
\result[31]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => signA_reg_0(16),
      I1 => signA_reg_0(5),
      I2 => signA_reg_0(19),
      I3 => signA_reg_0(1),
      O => \result[31]_i_20_n_0\
    );
\result[31]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => signA_reg_0(14),
      I1 => signA_reg_0(11),
      I2 => signA_reg_0(17),
      I3 => signA_reg_0(10),
      O => \result[31]_i_21_n_0\
    );
\result[31]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => signA_reg_0(15),
      I1 => signA_reg_0(6),
      I2 => signA_reg_0(3),
      I3 => signA_reg_0(0),
      O => \result[31]_i_22_n_0\
    );
\result[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF10FF"
    )
        port map (
      I0 => \result[31]_i_5_n_0\,
      I1 => \result[31]_i_6_n_0\,
      I2 => \result[31]_i_7_n_0\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      O => \result[31]_i_3_n_0\
    );
\result[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F888"
    )
        port map (
      I0 => \result[31]_i_5_n_0\,
      I1 => \result[31]_i_8_n_0\,
      I2 => \result[31]_i_6_n_0\,
      I3 => \result[31]_i_9_n_0\,
      I4 => \state_reg_n_0_[0]\,
      O => \result[31]_i_4_n_0\
    );
\result[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \expB_reg_n_0_[1]\,
      I1 => \expB_reg_n_0_[6]\,
      I2 => \expB_reg_n_0_[4]\,
      I3 => \expB_reg_n_0_[5]\,
      I4 => \result[31]_i_10_n_0\,
      O => \result[31]_i_5_n_0\
    );
\result[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \expA_reg_n_0_[2]\,
      I1 => \expA_reg_n_0_[3]\,
      I2 => \expA_reg_n_0_[0]\,
      I3 => \expA_reg_n_0_[1]\,
      I4 => \result[31]_i_11_n_0\,
      O => \result[31]_i_6_n_0\
    );
\result[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EE"
    )
        port map (
      I0 => \result[31]_i_8_n_0\,
      I1 => mantB1,
      I2 => \result[31]_i_9_n_0\,
      I3 => \result[31]_i_12_n_0\,
      O => \result[31]_i_7_n_0\
    );
\result[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \result[31]_i_13_n_0\,
      I1 => Q(21),
      I2 => Q(7),
      I3 => Q(8),
      I4 => Q(4),
      I5 => \result[31]_i_14_n_0\,
      O => \result[31]_i_8_n_0\
    );
\result[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \result[31]_i_15_n_0\,
      I1 => signA_reg_0(21),
      I2 => signA_reg_0(7),
      I3 => signA_reg_0(8),
      I4 => signA_reg_0(4),
      I5 => \result[31]_i_16_n_0\,
      O => \result[31]_i_9_n_0\
    );
\result[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(3),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[3]_i_1_n_0\
    );
\result[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(4),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[4]_i_1_n_0\
    );
\result[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(5),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[5]_i_1_n_0\
    );
\result[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(6),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[6]_i_1_n_0\
    );
\result[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(7),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[7]_i_1_n_0\
    );
\result[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(8),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[8]_i_1_n_0\
    );
\result[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => mantNorm(9),
      I1 => \state_reg_n_0_[2]\,
      I2 => \expSum_reg_n_0_[8]\,
      I3 => \expSum_reg_n_0_[9]\,
      O => \result[9]_i_1_n_0\
    );
\result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[0]_i_1_n_0\,
      Q => fp_result(0),
      R => \result[21]_i_1_n_0\
    );
\result_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[10]_i_1_n_0\,
      Q => fp_result(10),
      R => \result[21]_i_1_n_0\
    );
\result_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[11]_i_1_n_0\,
      Q => fp_result(11),
      R => \result[21]_i_1_n_0\
    );
\result_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[12]_i_1_n_0\,
      Q => fp_result(12),
      R => \result[21]_i_1_n_0\
    );
\result_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[13]_i_1_n_0\,
      Q => fp_result(13),
      R => \result[21]_i_1_n_0\
    );
\result_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[14]_i_1_n_0\,
      Q => fp_result(14),
      R => \result[21]_i_1_n_0\
    );
\result_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[15]_i_1_n_0\,
      Q => fp_result(15),
      R => \result[21]_i_1_n_0\
    );
\result_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[16]_i_1_n_0\,
      Q => fp_result(16),
      R => \result[21]_i_1_n_0\
    );
\result_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[17]_i_1_n_0\,
      Q => fp_result(17),
      R => \result[21]_i_1_n_0\
    );
\result_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[18]_i_1_n_0\,
      Q => fp_result(18),
      R => \result[21]_i_1_n_0\
    );
\result_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[19]_i_1_n_0\,
      Q => fp_result(19),
      R => \result[21]_i_1_n_0\
    );
\result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[1]_i_1_n_0\,
      Q => fp_result(1),
      R => \result[21]_i_1_n_0\
    );
\result_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[20]_i_1_n_0\,
      Q => fp_result(20),
      R => \result[21]_i_1_n_0\
    );
\result_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[21]_i_2_n_0\,
      Q => fp_result(21),
      R => \result[21]_i_1_n_0\
    );
\result_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[22]_i_1_n_0\,
      Q => fp_result(22),
      R => '0'
    );
\result_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[23]_i_1__0_n_0\,
      Q => fp_result(23),
      R => '0'
    );
\result_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[24]_i_1_n_0\,
      Q => fp_result(24),
      R => '0'
    );
\result_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[25]_i_1__0_n_0\,
      Q => fp_result(25),
      R => '0'
    );
\result_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[26]_i_1_n_0\,
      Q => fp_result(26),
      R => '0'
    );
\result_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[27]_i_1_n_0\,
      Q => fp_result(27),
      R => '0'
    );
\result_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[28]_i_1_n_0\,
      Q => fp_result(28),
      R => '0'
    );
\result_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[29]_i_1__0_n_0\,
      Q => fp_result(29),
      R => '0'
    );
\result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[2]_i_1_n_0\,
      Q => fp_result(2),
      R => \result[21]_i_1_n_0\
    );
\result_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[30]_i_1__0_n_0\,
      Q => fp_result(30),
      R => '0'
    );
\result_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[31]_i_2_n_0\,
      Q => fp_result(31),
      R => '0'
    );
\result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[3]_i_1_n_0\,
      Q => fp_result(3),
      R => \result[21]_i_1_n_0\
    );
\result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[4]_i_1_n_0\,
      Q => fp_result(4),
      R => \result[21]_i_1_n_0\
    );
\result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[5]_i_1_n_0\,
      Q => fp_result(5),
      R => \result[21]_i_1_n_0\
    );
\result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[6]_i_1_n_0\,
      Q => fp_result(6),
      R => \result[21]_i_1_n_0\
    );
\result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[7]_i_1_n_0\,
      Q => fp_result(7),
      R => \result[21]_i_1_n_0\
    );
\result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[8]_i_1_n_0\,
      Q => fp_result(8),
      R => \result[21]_i_1_n_0\
    );
\result_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \result[9]_i_1_n_0\,
      Q => fp_result(9),
      R => \result[21]_i_1_n_0\
    );
signA_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => signA_reg_0(31),
      Q => signA,
      R => '0'
    );
signB_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \expB[7]_i_1_n_0\,
      D => Q(31),
      Q => signB,
      R => '0'
    );
signZ_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF6FF00000600"
    )
        port map (
      I0 => signB,
      I1 => signA,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => signZ,
      O => signZ_i_1_n_0
    );
signZ_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => signZ_i_1_n_0,
      Q => signZ,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A3A0"
    )
        port map (
      I0 => \state_reg[0]_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \result[31]_i_3_n_0\,
      O => state(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB88888"
    )
        port map (
      I0 => \state_reg[0]_0\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \result[31]_i_3_n_0\,
      O => state(1)
    );
\state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \state_reg[0]_0\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => state(2)
    );
\state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFE"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg[0]_0\,
      O => \state[3]_i_1_n_0\
    );
\state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8888888BBBB"
    )
        port map (
      I0 => \state_reg[0]_0\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \result[31]_i_3_n_0\,
      I5 => \state_reg_n_0_[0]\,
      O => state(3)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state[3]_i_1_n_0\,
      D => state(0),
      Q => \state_reg_n_0_[0]\,
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state[3]_i_1_n_0\,
      D => state(1),
      Q => \state_reg_n_0_[1]\,
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state[3]_i_1_n_0\,
      D => state(2),
      Q => \state_reg_n_0_[2]\,
      R => '0'
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state[3]_i_1_n_0\,
      D => state(3),
      Q => \state_reg_n_0_[3]\,
      R => '0'
    );
\term_D[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \term_P_reg[0]\(2),
      I1 => \term_P_reg[0]\(1),
      I2 => rst_fp,
      I3 => \^mul_done\,
      I4 => \term_P_reg[0]\(0),
      O => \FSM_sequential_state_reg[2]\(0)
    );
\term_P[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \term_P_reg[0]\(2),
      I1 => \term_P_reg[0]\(1),
      I2 => \term_P_reg[0]\(3),
      I3 => rst_fp,
      I4 => \^mul_done\,
      I5 => \term_P_reg[0]\(0),
      O => \FSM_sequential_state_reg[2]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pid_controller_0_0_conv_pwm_int is
  port (
    pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \multiplicand_reg[0]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_conv : in STD_LOGIC;
    \multiplicand_reg[11]\ : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pid_controller_0_0_conv_pwm_int : entity is "conv_pwm_int";
end design_1_pid_controller_0_0_conv_pwm_int;

architecture STRUCTURE of design_1_pid_controller_0_0_conv_pwm_int is
  signal mult_gata : STD_LOGIC;
  signal rezultat : STD_LOGIC_VECTOR ( 24 downto 0 );
begin
div_inst: entity work.design_1_pid_controller_0_0_RestoringDivision
     port map (
      Q(24 downto 0) => rezultat(24 downto 0),
      clk => clk,
      mult_gata => mult_gata,
      pwm_val(7 downto 0) => pwm_val(7 downto 0),
      rst_conv => rst_conv
    );
mult_inst: entity work.design_1_pid_controller_0_0_inmultitor_shift_add
     port map (
      Q(24 downto 0) => rezultat(24 downto 0),
      clk => clk,
      mult_gata => mult_gata,
      \multiplicand_reg[0]_0\ => \multiplicand_reg[0]\,
      \multiplicand_reg[11]_0\(11 downto 0) => \multiplicand_reg[11]\(11 downto 0),
      rst_conv => rst_conv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pid_controller_0_0_pid_core is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \control_output_u_reg[23]_0\ : out STD_LOGIC;
    \control_output_u_reg[23]_1\ : out STD_LOGIC;
    \control_output_u_reg[23]_2\ : out STD_LOGIC;
    \control_output_u_reg[20]_0\ : out STD_LOGIC;
    \control_output_u_reg[20]_1\ : out STD_LOGIC;
    start_f2i : out STD_LOGIC;
    done : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    rst_fp : in STD_LOGIC;
    \temp_int_v_reg[1]\ : in STD_LOGIC;
    pot_val : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \temp_int_v_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \temp_int_v_reg[9]\ : in STD_LOGIC;
    \temp_int_v_reg[0]_0\ : in STD_LOGIC;
    start_f2i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    \fp_B_reg[31]_0\ : in STD_LOGIC_VECTOR ( 29 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pid_controller_0_0_pid_core : entity is "pid_core";
end design_1_pid_controller_0_0_pid_core;

architecture STRUCTURE of design_1_pid_controller_0_0_pid_core is
  signal A : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ADD_SUB_UNIT_n_31 : STD_LOGIC;
  signal ADD_SUB_UNIT_n_35 : STD_LOGIC;
  signal ADD_SUB_UNIT_n_68 : STD_LOGIC;
  signal B : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \FSM_sequential_state[3]_i_3_n_0\ : STD_LOGIC;
  signal MUL_UNIT_n_0 : STD_LOGIC;
  signal MUL_UNIT_n_11 : STD_LOGIC;
  signal MUL_UNIT_n_12 : STD_LOGIC;
  signal MUL_UNIT_n_13 : STD_LOGIC;
  signal MUL_UNIT_n_14 : STD_LOGIC;
  signal MUL_UNIT_n_15 : STD_LOGIC;
  signal MUL_UNIT_n_16 : STD_LOGIC;
  signal MUL_UNIT_n_17 : STD_LOGIC;
  signal MUL_UNIT_n_18 : STD_LOGIC;
  signal MUL_UNIT_n_19 : STD_LOGIC;
  signal MUL_UNIT_n_20 : STD_LOGIC;
  signal MUL_UNIT_n_21 : STD_LOGIC;
  signal MUL_UNIT_n_22 : STD_LOGIC;
  signal MUL_UNIT_n_23 : STD_LOGIC;
  signal MUL_UNIT_n_24 : STD_LOGIC;
  signal MUL_UNIT_n_25 : STD_LOGIC;
  signal MUL_UNIT_n_26 : STD_LOGIC;
  signal MUL_UNIT_n_27 : STD_LOGIC;
  signal MUL_UNIT_n_28 : STD_LOGIC;
  signal MUL_UNIT_n_29 : STD_LOGIC;
  signal MUL_UNIT_n_30 : STD_LOGIC;
  signal MUL_UNIT_n_31 : STD_LOGIC;
  signal MUL_UNIT_n_32 : STD_LOGIC;
  signal MUL_UNIT_n_33 : STD_LOGIC;
  signal MUL_UNIT_n_34 : STD_LOGIC;
  signal MUL_UNIT_n_35 : STD_LOGIC;
  signal MUL_UNIT_n_36 : STD_LOGIC;
  signal MUL_UNIT_n_37 : STD_LOGIC;
  signal MUL_UNIT_n_38 : STD_LOGIC;
  signal MUL_UNIT_n_39 : STD_LOGIC;
  signal MUL_UNIT_n_40 : STD_LOGIC;
  signal MUL_UNIT_n_41 : STD_LOGIC;
  signal MUL_UNIT_n_42 : STD_LOGIC;
  signal MUL_UNIT_n_43 : STD_LOGIC;
  signal MUL_UNIT_n_44 : STD_LOGIC;
  signal MUL_UNIT_n_45 : STD_LOGIC;
  signal MUL_UNIT_n_9 : STD_LOGIC;
  signal add_done : STD_LOGIC;
  signal add_start : STD_LOGIC;
  signal add_start_reg_n_0 : STD_LOGIC;
  signal control_output_u0 : STD_LOGIC;
  signal \^control_output_u_reg[23]_0\ : STD_LOGIC;
  signal \^control_output_u_reg[23]_2\ : STD_LOGIC;
  signal \^done\ : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal error_n0 : STD_LOGIC;
  signal error_n_1 : STD_LOGIC;
  signal \error_n_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[10]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[11]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[12]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[13]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[14]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[15]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[16]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[17]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[18]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[19]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[20]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[21]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[22]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[23]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[24]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[25]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[26]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[27]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[28]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[29]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[2]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[30]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[31]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[3]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[4]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[5]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[6]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[7]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[8]\ : STD_LOGIC;
  signal \error_n_1_reg_n_0_[9]\ : STD_LOGIC;
  signal \error_n__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fp_A : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fp_B : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fp_result : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fp_sub_i_2_n_0 : STD_LOGIC;
  signal fp_sub_reg_n_0 : STD_LOGIC;
  signal integral_sum : STD_LOGIC;
  signal \integral_sum_reg_n_0_[0]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[10]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[11]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[12]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[13]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[14]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[15]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[16]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[17]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[18]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[19]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[1]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[20]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[21]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[22]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[23]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[24]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[25]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[26]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[27]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[28]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[29]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[2]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[30]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[31]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[3]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[4]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[5]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[6]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[7]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[8]\ : STD_LOGIC;
  signal \integral_sum_reg_n_0_[9]\ : STD_LOGIC;
  signal mul_done : STD_LOGIC;
  signal mul_start : STD_LOGIC;
  signal mul_start_reg_n_0 : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal temp_error_diff0 : STD_LOGIC;
  signal \temp_error_diff__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \temp_int_v[0]_i_2_n_0\ : STD_LOGIC;
  signal \temp_int_v[0]_i_3_n_0\ : STD_LOGIC;
  signal \temp_int_v[0]_i_4_n_0\ : STD_LOGIC;
  signal \temp_int_v[0]_i_5_n_0\ : STD_LOGIC;
  signal \temp_int_v[0]_i_6_n_0\ : STD_LOGIC;
  signal \temp_int_v[0]_i_7_n_0\ : STD_LOGIC;
  signal \temp_int_v[0]_i_8_n_0\ : STD_LOGIC;
  signal \temp_int_v[10]_i_2_n_0\ : STD_LOGIC;
  signal \temp_int_v[11]_i_4_n_0\ : STD_LOGIC;
  signal \temp_int_v[1]_i_2_n_0\ : STD_LOGIC;
  signal \temp_int_v[1]_i_3_n_0\ : STD_LOGIC;
  signal \temp_int_v[1]_i_4_n_0\ : STD_LOGIC;
  signal \temp_int_v[1]_i_5_n_0\ : STD_LOGIC;
  signal \temp_int_v[2]_i_2_n_0\ : STD_LOGIC;
  signal \temp_int_v[2]_i_3_n_0\ : STD_LOGIC;
  signal \temp_int_v[2]_i_4_n_0\ : STD_LOGIC;
  signal \temp_int_v[2]_i_5_n_0\ : STD_LOGIC;
  signal \temp_int_v[3]_i_2_n_0\ : STD_LOGIC;
  signal \temp_int_v[3]_i_3_n_0\ : STD_LOGIC;
  signal \temp_int_v[3]_i_4_n_0\ : STD_LOGIC;
  signal \temp_int_v[3]_i_5_n_0\ : STD_LOGIC;
  signal \temp_int_v[3]_i_6_n_0\ : STD_LOGIC;
  signal \temp_int_v[4]_i_2_n_0\ : STD_LOGIC;
  signal \temp_int_v[4]_i_3_n_0\ : STD_LOGIC;
  signal \temp_int_v[4]_i_4_n_0\ : STD_LOGIC;
  signal \temp_int_v[5]_i_2_n_0\ : STD_LOGIC;
  signal \temp_int_v[5]_i_3_n_0\ : STD_LOGIC;
  signal \temp_int_v[5]_i_4_n_0\ : STD_LOGIC;
  signal \temp_int_v[6]_i_2_n_0\ : STD_LOGIC;
  signal \temp_int_v[6]_i_3_n_0\ : STD_LOGIC;
  signal \temp_int_v[6]_i_4_n_0\ : STD_LOGIC;
  signal \temp_int_v[6]_i_5_n_0\ : STD_LOGIC;
  signal \temp_int_v[8]_i_4_n_0\ : STD_LOGIC;
  signal \temp_int_v[9]_i_3_n_0\ : STD_LOGIC;
  signal term_D0 : STD_LOGIC;
  signal \term_D__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal term_I : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal term_I0 : STD_LOGIC;
  signal term_P0 : STD_LOGIC;
  signal \term_P__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal u_val_fp : STD_LOGIC_VECTOR ( 30 downto 12 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1__0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1__0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_3\ : label is "soft_lutpair78";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "calc_i_mul:0011,calc_i_add:0100,calc_p:0010,finished:1010,calc_error:0001,idle:0000,update_error:1001,calc_u_add1:0111,calc_u_add2:1000,calc_d_mul:0110,iSTATE:1011,calc_d_sub:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "calc_i_mul:0011,calc_i_add:0100,calc_p:0010,finished:1010,calc_error:0001,idle:0000,update_error:1001,calc_u_add1:0111,calc_u_add2:1000,calc_d_mul:0110,iSTATE:1011,calc_d_sub:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "calc_i_mul:0011,calc_i_add:0100,calc_p:0010,finished:1010,calc_error:0001,idle:0000,update_error:1001,calc_u_add1:0111,calc_u_add2:1000,calc_d_mul:0110,iSTATE:1011,calc_d_sub:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "calc_i_mul:0011,calc_i_add:0100,calc_p:0010,finished:1010,calc_error:0001,idle:0000,update_error:1001,calc_u_add1:0111,calc_u_add2:1000,calc_d_mul:0110,iSTATE:1011,calc_d_sub:0101";
  attribute SOFT_HLUTNM of done_i_1 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \temp_int_v[0]_i_3\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \temp_int_v[0]_i_4\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \temp_int_v[10]_i_2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \temp_int_v[11]_i_3\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \temp_int_v[1]_i_5\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \temp_int_v[2]_i_4\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \temp_int_v[3]_i_4\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \temp_int_v[3]_i_5\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \temp_int_v[3]_i_6\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \temp_int_v[4]_i_4\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \temp_int_v[5]_i_4\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \temp_int_v[6]_i_2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \temp_int_v[6]_i_3\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \temp_int_v[6]_i_4\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \temp_int_v[8]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \temp_int_v[8]_i_4\ : label is "soft_lutpair70";
begin
  \control_output_u_reg[23]_0\ <= \^control_output_u_reg[23]_0\;
  \control_output_u_reg[23]_2\ <= \^control_output_u_reg[23]_2\;
  done <= \^done\;
  p_0_in <= \^p_0_in\;
ADD_SUB_UNIT: entity work.design_1_pid_controller_0_0_vm_add_sub
     port map (
      B_sgn_reg_0(31 downto 0) => B(31 downto 0),
      B_sgn_reg_1 => fp_sub_reg_n_0,
      D(26 downto 25) => fp_A(31 downto 30),
      D(24 downto 23) => fp_A(26 downto 25),
      D(22 downto 0) => fp_A(22 downto 0),
      E(0) => temp_error_diff0,
      \FSM_sequential_state_reg[0]_0\(0) => control_output_u0,
      \FSM_sequential_state_reg[0]_1\ => ADD_SUB_UNIT_n_35,
      \FSM_sequential_state_reg[0]_2\ => \FSM_sequential_state_reg[0]_0\,
      \FSM_sequential_state_reg[0]_3\ => \FSM_sequential_state[3]_i_3_n_0\,
      \FSM_sequential_state_reg[0]_4\ => MUL_UNIT_n_9,
      \FSM_sequential_state_reg[1]_0\(0) => term_I0,
      \FSM_sequential_state_reg[1]_1\(31 downto 0) => fp_B(31 downto 0),
      \FSM_sequential_state_reg[2]_0\(0) => error_n0,
      \FSM_sequential_state_reg[2]_1\ => add_start_reg_n_0,
      Q(31 downto 0) => A(31 downto 0),
      UNCONN_OUT(4 downto 2) => fp_result(29 downto 27),
      UNCONN_OUT(1 downto 0) => fp_result(24 downto 23),
      add_done => add_done,
      clk => clk,
      done_reg_0(0) => integral_sum,
      done_reg_1 => ADD_SUB_UNIT_n_68,
      \error_n_reg[0]\(3 downto 0) => state(3 downto 0),
      \fp_A_reg[25]\ => MUL_UNIT_n_43,
      \fp_A_reg[26]\ => MUL_UNIT_n_44,
      \fp_A_reg[31]\(31 downto 0) => \error_n__0\(31 downto 0),
      \fp_A_reg[31]_0\(24 downto 23) => \term_P__0\(31 downto 30),
      \fp_A_reg[31]_0\(22 downto 0) => \term_P__0\(22 downto 0),
      \fp_A_reg[31]_1\(24) => \integral_sum_reg_n_0_[31]\,
      \fp_A_reg[31]_1\(23) => \integral_sum_reg_n_0_[30]\,
      \fp_A_reg[31]_1\(22) => \integral_sum_reg_n_0_[22]\,
      \fp_A_reg[31]_1\(21) => \integral_sum_reg_n_0_[21]\,
      \fp_A_reg[31]_1\(20) => \integral_sum_reg_n_0_[20]\,
      \fp_A_reg[31]_1\(19) => \integral_sum_reg_n_0_[19]\,
      \fp_A_reg[31]_1\(18) => \integral_sum_reg_n_0_[18]\,
      \fp_A_reg[31]_1\(17) => \integral_sum_reg_n_0_[17]\,
      \fp_A_reg[31]_1\(16) => \integral_sum_reg_n_0_[16]\,
      \fp_A_reg[31]_1\(15) => \integral_sum_reg_n_0_[15]\,
      \fp_A_reg[31]_1\(14) => \integral_sum_reg_n_0_[14]\,
      \fp_A_reg[31]_1\(13) => \integral_sum_reg_n_0_[13]\,
      \fp_A_reg[31]_1\(12) => \integral_sum_reg_n_0_[12]\,
      \fp_A_reg[31]_1\(11) => \integral_sum_reg_n_0_[11]\,
      \fp_A_reg[31]_1\(10) => \integral_sum_reg_n_0_[10]\,
      \fp_A_reg[31]_1\(9) => \integral_sum_reg_n_0_[9]\,
      \fp_A_reg[31]_1\(8) => \integral_sum_reg_n_0_[8]\,
      \fp_A_reg[31]_1\(7) => \integral_sum_reg_n_0_[7]\,
      \fp_A_reg[31]_1\(6) => \integral_sum_reg_n_0_[6]\,
      \fp_A_reg[31]_1\(5) => \integral_sum_reg_n_0_[5]\,
      \fp_A_reg[31]_1\(4) => \integral_sum_reg_n_0_[4]\,
      \fp_A_reg[31]_1\(3) => \integral_sum_reg_n_0_[3]\,
      \fp_A_reg[31]_1\(2) => \integral_sum_reg_n_0_[2]\,
      \fp_A_reg[31]_1\(1) => \integral_sum_reg_n_0_[1]\,
      \fp_A_reg[31]_1\(0) => \integral_sum_reg_n_0_[0]\,
      \fp_B_reg[0]\ => MUL_UNIT_n_42,
      \fp_B_reg[10]\ => MUL_UNIT_n_32,
      \fp_B_reg[11]\ => MUL_UNIT_n_31,
      \fp_B_reg[12]\ => MUL_UNIT_n_30,
      \fp_B_reg[13]\ => MUL_UNIT_n_29,
      \fp_B_reg[14]\ => MUL_UNIT_n_28,
      \fp_B_reg[15]\ => MUL_UNIT_n_27,
      \fp_B_reg[16]\ => MUL_UNIT_n_26,
      \fp_B_reg[17]\ => MUL_UNIT_n_25,
      \fp_B_reg[18]\ => MUL_UNIT_n_24,
      \fp_B_reg[19]\ => MUL_UNIT_n_23,
      \fp_B_reg[1]\ => MUL_UNIT_n_41,
      \fp_B_reg[20]\ => MUL_UNIT_n_22,
      \fp_B_reg[21]\ => MUL_UNIT_n_21,
      \fp_B_reg[22]\ => MUL_UNIT_n_20,
      \fp_B_reg[23]\ => MUL_UNIT_n_19,
      \fp_B_reg[24]\ => MUL_UNIT_n_18,
      \fp_B_reg[25]\ => MUL_UNIT_n_17,
      \fp_B_reg[26]\ => MUL_UNIT_n_16,
      \fp_B_reg[27]\ => MUL_UNIT_n_15,
      \fp_B_reg[28]\ => MUL_UNIT_n_14,
      \fp_B_reg[29]\ => MUL_UNIT_n_13,
      \fp_B_reg[2]\ => MUL_UNIT_n_40,
      \fp_B_reg[30]\ => MUL_UNIT_n_12,
      \fp_B_reg[31]\(31 downto 0) => \temp_error_diff__0\(31 downto 0),
      \fp_B_reg[31]_0\(31) => \error_n_1_reg_n_0_[31]\,
      \fp_B_reg[31]_0\(30) => \error_n_1_reg_n_0_[30]\,
      \fp_B_reg[31]_0\(29) => \error_n_1_reg_n_0_[29]\,
      \fp_B_reg[31]_0\(28) => \error_n_1_reg_n_0_[28]\,
      \fp_B_reg[31]_0\(27) => \error_n_1_reg_n_0_[27]\,
      \fp_B_reg[31]_0\(26) => \error_n_1_reg_n_0_[26]\,
      \fp_B_reg[31]_0\(25) => \error_n_1_reg_n_0_[25]\,
      \fp_B_reg[31]_0\(24) => \error_n_1_reg_n_0_[24]\,
      \fp_B_reg[31]_0\(23) => \error_n_1_reg_n_0_[23]\,
      \fp_B_reg[31]_0\(22) => \error_n_1_reg_n_0_[22]\,
      \fp_B_reg[31]_0\(21) => \error_n_1_reg_n_0_[21]\,
      \fp_B_reg[31]_0\(20) => \error_n_1_reg_n_0_[20]\,
      \fp_B_reg[31]_0\(19) => \error_n_1_reg_n_0_[19]\,
      \fp_B_reg[31]_0\(18) => \error_n_1_reg_n_0_[18]\,
      \fp_B_reg[31]_0\(17) => \error_n_1_reg_n_0_[17]\,
      \fp_B_reg[31]_0\(16) => \error_n_1_reg_n_0_[16]\,
      \fp_B_reg[31]_0\(15) => \error_n_1_reg_n_0_[15]\,
      \fp_B_reg[31]_0\(14) => \error_n_1_reg_n_0_[14]\,
      \fp_B_reg[31]_0\(13) => \error_n_1_reg_n_0_[13]\,
      \fp_B_reg[31]_0\(12) => \error_n_1_reg_n_0_[12]\,
      \fp_B_reg[31]_0\(11) => \error_n_1_reg_n_0_[11]\,
      \fp_B_reg[31]_0\(10) => \error_n_1_reg_n_0_[10]\,
      \fp_B_reg[31]_0\(9) => \error_n_1_reg_n_0_[9]\,
      \fp_B_reg[31]_0\(8) => \error_n_1_reg_n_0_[8]\,
      \fp_B_reg[31]_0\(7) => \error_n_1_reg_n_0_[7]\,
      \fp_B_reg[31]_0\(6) => \error_n_1_reg_n_0_[6]\,
      \fp_B_reg[31]_0\(5) => \error_n_1_reg_n_0_[5]\,
      \fp_B_reg[31]_0\(4) => \error_n_1_reg_n_0_[4]\,
      \fp_B_reg[31]_0\(3) => \error_n_1_reg_n_0_[3]\,
      \fp_B_reg[31]_0\(2) => \error_n_1_reg_n_0_[2]\,
      \fp_B_reg[31]_0\(1) => \error_n_1_reg_n_0_[1]\,
      \fp_B_reg[31]_0\(0) => \error_n_1_reg_n_0_[0]\,
      \fp_B_reg[31]_1\(29 downto 0) => \fp_B_reg[31]_0\(29 downto 0),
      \fp_B_reg[31]_2\(31 downto 0) => \term_D__0\(31 downto 0),
      \fp_B_reg[31]_3\(31 downto 0) => term_I(31 downto 0),
      \fp_B_reg[31]_4\ => MUL_UNIT_n_11,
      \fp_B_reg[3]\ => MUL_UNIT_n_39,
      \fp_B_reg[4]\ => MUL_UNIT_n_38,
      \fp_B_reg[5]\ => MUL_UNIT_n_37,
      \fp_B_reg[6]\ => MUL_UNIT_n_36,
      \fp_B_reg[7]\ => MUL_UNIT_n_35,
      \fp_B_reg[8]\ => MUL_UNIT_n_34,
      \fp_B_reg[9]\ => MUL_UNIT_n_33,
      fp_result(26 downto 25) => fp_result(31 downto 30),
      fp_result(24 downto 23) => fp_result(26 downto 25),
      fp_result(22 downto 0) => fp_result(22 downto 0),
      mul_done => mul_done,
      mul_start => mul_start,
      rst_fp => rst_fp,
      start_pid_reg(0) => ADD_SUB_UNIT_n_31
    );
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80BF"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]_0\,
      I1 => state(1),
      I2 => state(3),
      I3 => state(0),
      O => \state__0\(0)
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FB0"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]_0\,
      I1 => state(3),
      I2 => state(1),
      I3 => state(0),
      O => \state__0\(1)
    );
\FSM_sequential_state[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006C"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => state(3),
      O => \state__0\(2)
    );
\FSM_sequential_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F8080"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => \FSM_sequential_state_reg[0]_0\,
      I4 => state(3),
      O => \state__0\(3)
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      O => \FSM_sequential_state[3]_i_3_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ADD_SUB_UNIT_n_31,
      CLR => rst_fp,
      D => \state__0\(0),
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ADD_SUB_UNIT_n_31,
      CLR => rst_fp,
      D => \state__0\(1),
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ADD_SUB_UNIT_n_31,
      CLR => rst_fp,
      D => \state__0\(2),
      Q => state(2)
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ADD_SUB_UNIT_n_31,
      CLR => rst_fp,
      D => \state__0\(3),
      Q => state(3)
    );
MUL_UNIT: entity work.design_1_pid_controller_0_0_vm_mul
     port map (
      D(16 downto 0) => fp_A(16 downto 0),
      E(0) => MUL_UNIT_n_0,
      \FSM_sequential_state_reg[0]\ => MUL_UNIT_n_9,
      \FSM_sequential_state_reg[0]_0\ => ADD_SUB_UNIT_n_35,
      \FSM_sequential_state_reg[2]\(0) => term_D0,
      \FSM_sequential_state_reg[2]_0\(0) => term_P0,
      Q(31 downto 0) => B(31 downto 0),
      add_done => add_done,
      add_start => add_start,
      clk => clk,
      done_reg_0 => MUL_UNIT_n_11,
      done_reg_1 => MUL_UNIT_n_12,
      done_reg_10 => MUL_UNIT_n_21,
      done_reg_11 => MUL_UNIT_n_22,
      done_reg_12 => MUL_UNIT_n_23,
      done_reg_13 => MUL_UNIT_n_24,
      done_reg_14 => MUL_UNIT_n_25,
      done_reg_15 => MUL_UNIT_n_26,
      done_reg_16 => MUL_UNIT_n_27,
      done_reg_17 => MUL_UNIT_n_28,
      done_reg_18 => MUL_UNIT_n_29,
      done_reg_19 => MUL_UNIT_n_30,
      done_reg_2 => MUL_UNIT_n_13,
      done_reg_20 => MUL_UNIT_n_31,
      done_reg_21 => MUL_UNIT_n_32,
      done_reg_22 => MUL_UNIT_n_33,
      done_reg_23 => MUL_UNIT_n_34,
      done_reg_24 => MUL_UNIT_n_35,
      done_reg_25 => MUL_UNIT_n_36,
      done_reg_26 => MUL_UNIT_n_37,
      done_reg_27 => MUL_UNIT_n_38,
      done_reg_28 => MUL_UNIT_n_39,
      done_reg_29 => MUL_UNIT_n_40,
      done_reg_3 => MUL_UNIT_n_14,
      done_reg_30 => MUL_UNIT_n_41,
      done_reg_31 => MUL_UNIT_n_42,
      done_reg_32 => MUL_UNIT_n_43,
      done_reg_33 => MUL_UNIT_n_44,
      done_reg_34 => MUL_UNIT_n_45,
      done_reg_4 => MUL_UNIT_n_15,
      done_reg_5 => MUL_UNIT_n_16,
      done_reg_6 => MUL_UNIT_n_17,
      done_reg_7 => MUL_UNIT_n_18,
      done_reg_8 => MUL_UNIT_n_19,
      done_reg_9 => MUL_UNIT_n_20,
      \error_n_reg[29]\(4 downto 2) => fp_A(29 downto 27),
      \error_n_reg[29]\(1 downto 0) => fp_A(24 downto 23),
      \fp_A_reg[23]\ => ADD_SUB_UNIT_n_68,
      \fp_A_reg[29]\(6 downto 0) => \term_P__0\(29 downto 23),
      \fp_A_reg[29]_0\(6) => \integral_sum_reg_n_0_[29]\,
      \fp_A_reg[29]_0\(5) => \integral_sum_reg_n_0_[28]\,
      \fp_A_reg[29]_0\(4) => \integral_sum_reg_n_0_[27]\,
      \fp_A_reg[29]_0\(3) => \integral_sum_reg_n_0_[26]\,
      \fp_A_reg[29]_0\(2) => \integral_sum_reg_n_0_[25]\,
      \fp_A_reg[29]_0\(1) => \integral_sum_reg_n_0_[24]\,
      \fp_A_reg[29]_0\(0) => \integral_sum_reg_n_0_[23]\,
      \fp_B[31]_i_3\(31 downto 0) => \error_n__0\(31 downto 0),
      fp_result(31 downto 0) => fp_result(31 downto 0),
      fp_sub_reg => fp_sub_i_2_n_0,
      fp_sub_reg_0 => fp_sub_reg_n_0,
      mul_done => mul_done,
      rst_fp => rst_fp,
      signA_reg_0(31 downto 0) => A(31 downto 0),
      \state_reg[0]_0\ => mul_start_reg_n_0,
      \term_P_reg[0]\(3 downto 0) => state(3 downto 0)
    );
add_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^p_0_in\,
      D => add_start,
      Q => add_start_reg_n_0,
      R => '0'
    );
\control_output_u_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(12),
      Q => u_val_fp(12),
      R => '0'
    );
\control_output_u_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(13),
      Q => u_val_fp(13),
      R => '0'
    );
\control_output_u_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(14),
      Q => u_val_fp(14),
      R => '0'
    );
\control_output_u_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(15),
      Q => u_val_fp(15),
      R => '0'
    );
\control_output_u_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(16),
      Q => u_val_fp(16),
      R => '0'
    );
\control_output_u_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(17),
      Q => u_val_fp(17),
      R => '0'
    );
\control_output_u_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(18),
      Q => u_val_fp(18),
      R => '0'
    );
\control_output_u_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(19),
      Q => u_val_fp(19),
      R => '0'
    );
\control_output_u_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(20),
      Q => u_val_fp(20),
      R => '0'
    );
\control_output_u_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(21),
      Q => u_val_fp(21),
      R => '0'
    );
\control_output_u_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(22),
      Q => u_val_fp(22),
      R => '0'
    );
\control_output_u_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(23),
      Q => u_val_fp(23),
      R => '0'
    );
\control_output_u_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(24),
      Q => u_val_fp(24),
      R => '0'
    );
\control_output_u_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(25),
      Q => u_val_fp(25),
      R => '0'
    );
\control_output_u_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(26),
      Q => u_val_fp(26),
      R => '0'
    );
\control_output_u_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(27),
      Q => u_val_fp(27),
      R => '0'
    );
\control_output_u_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(28),
      Q => u_val_fp(28),
      R => '0'
    );
\control_output_u_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(29),
      Q => u_val_fp(29),
      R => '0'
    );
\control_output_u_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(30),
      Q => u_val_fp(30),
      R => '0'
    );
\control_output_u_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => control_output_u0,
      D => fp_result(31),
      Q => Q(0),
      R => '0'
    );
done_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      O => done_i_1_n_0
    );
done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst_fp,
      D => done_i_1_n_0,
      Q => \^done\
    );
\error_n_1[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      O => error_n_1
    );
\error_n_1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(0),
      Q => \error_n_1_reg_n_0_[0]\
    );
\error_n_1_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(10),
      Q => \error_n_1_reg_n_0_[10]\
    );
\error_n_1_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(11),
      Q => \error_n_1_reg_n_0_[11]\
    );
\error_n_1_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(12),
      Q => \error_n_1_reg_n_0_[12]\
    );
\error_n_1_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(13),
      Q => \error_n_1_reg_n_0_[13]\
    );
\error_n_1_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(14),
      Q => \error_n_1_reg_n_0_[14]\
    );
\error_n_1_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(15),
      Q => \error_n_1_reg_n_0_[15]\
    );
\error_n_1_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(16),
      Q => \error_n_1_reg_n_0_[16]\
    );
\error_n_1_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(17),
      Q => \error_n_1_reg_n_0_[17]\
    );
\error_n_1_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(18),
      Q => \error_n_1_reg_n_0_[18]\
    );
\error_n_1_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(19),
      Q => \error_n_1_reg_n_0_[19]\
    );
\error_n_1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(1),
      Q => \error_n_1_reg_n_0_[1]\
    );
\error_n_1_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(20),
      Q => \error_n_1_reg_n_0_[20]\
    );
\error_n_1_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(21),
      Q => \error_n_1_reg_n_0_[21]\
    );
\error_n_1_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(22),
      Q => \error_n_1_reg_n_0_[22]\
    );
\error_n_1_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(23),
      Q => \error_n_1_reg_n_0_[23]\
    );
\error_n_1_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(24),
      Q => \error_n_1_reg_n_0_[24]\
    );
\error_n_1_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(25),
      Q => \error_n_1_reg_n_0_[25]\
    );
\error_n_1_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(26),
      Q => \error_n_1_reg_n_0_[26]\
    );
\error_n_1_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(27),
      Q => \error_n_1_reg_n_0_[27]\
    );
\error_n_1_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(28),
      Q => \error_n_1_reg_n_0_[28]\
    );
\error_n_1_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(29),
      Q => \error_n_1_reg_n_0_[29]\
    );
\error_n_1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(2),
      Q => \error_n_1_reg_n_0_[2]\
    );
\error_n_1_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(30),
      Q => \error_n_1_reg_n_0_[30]\
    );
\error_n_1_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(31),
      Q => \error_n_1_reg_n_0_[31]\
    );
\error_n_1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(3),
      Q => \error_n_1_reg_n_0_[3]\
    );
\error_n_1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(4),
      Q => \error_n_1_reg_n_0_[4]\
    );
\error_n_1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(5),
      Q => \error_n_1_reg_n_0_[5]\
    );
\error_n_1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(6),
      Q => \error_n_1_reg_n_0_[6]\
    );
\error_n_1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(7),
      Q => \error_n_1_reg_n_0_[7]\
    );
\error_n_1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(8),
      Q => \error_n_1_reg_n_0_[8]\
    );
\error_n_1_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n_1,
      CLR => rst_fp,
      D => \error_n__0\(9),
      Q => \error_n_1_reg_n_0_[9]\
    );
\error_n_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(0),
      Q => \error_n__0\(0),
      R => '0'
    );
\error_n_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(10),
      Q => \error_n__0\(10),
      R => '0'
    );
\error_n_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(11),
      Q => \error_n__0\(11),
      R => '0'
    );
\error_n_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(12),
      Q => \error_n__0\(12),
      R => '0'
    );
\error_n_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(13),
      Q => \error_n__0\(13),
      R => '0'
    );
\error_n_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(14),
      Q => \error_n__0\(14),
      R => '0'
    );
\error_n_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(15),
      Q => \error_n__0\(15),
      R => '0'
    );
\error_n_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(16),
      Q => \error_n__0\(16),
      R => '0'
    );
\error_n_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(17),
      Q => \error_n__0\(17),
      R => '0'
    );
\error_n_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(18),
      Q => \error_n__0\(18),
      R => '0'
    );
\error_n_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(19),
      Q => \error_n__0\(19),
      R => '0'
    );
\error_n_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(1),
      Q => \error_n__0\(1),
      R => '0'
    );
\error_n_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(20),
      Q => \error_n__0\(20),
      R => '0'
    );
\error_n_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(21),
      Q => \error_n__0\(21),
      R => '0'
    );
\error_n_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(22),
      Q => \error_n__0\(22),
      R => '0'
    );
\error_n_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(23),
      Q => \error_n__0\(23),
      R => '0'
    );
\error_n_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(24),
      Q => \error_n__0\(24),
      R => '0'
    );
\error_n_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(25),
      Q => \error_n__0\(25),
      R => '0'
    );
\error_n_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(26),
      Q => \error_n__0\(26),
      R => '0'
    );
\error_n_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(27),
      Q => \error_n__0\(27),
      R => '0'
    );
\error_n_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(28),
      Q => \error_n__0\(28),
      R => '0'
    );
\error_n_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(29),
      Q => \error_n__0\(29),
      R => '0'
    );
\error_n_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(2),
      Q => \error_n__0\(2),
      R => '0'
    );
\error_n_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(30),
      Q => \error_n__0\(30),
      R => '0'
    );
\error_n_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(31),
      Q => \error_n__0\(31),
      R => '0'
    );
\error_n_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(3),
      Q => \error_n__0\(3),
      R => '0'
    );
\error_n_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(4),
      Q => \error_n__0\(4),
      R => '0'
    );
\error_n_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(5),
      Q => \error_n__0\(5),
      R => '0'
    );
\error_n_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(6),
      Q => \error_n__0\(6),
      R => '0'
    );
\error_n_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(7),
      Q => \error_n__0\(7),
      R => '0'
    );
\error_n_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(8),
      Q => \error_n__0\(8),
      R => '0'
    );
\error_n_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => error_n0,
      D => fp_result(9),
      Q => \error_n__0\(9),
      R => '0'
    );
\fp_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(0),
      Q => A(0),
      R => '0'
    );
\fp_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(10),
      Q => A(10),
      R => '0'
    );
\fp_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(11),
      Q => A(11),
      R => '0'
    );
\fp_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(12),
      Q => A(12),
      R => '0'
    );
\fp_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(13),
      Q => A(13),
      R => '0'
    );
\fp_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(14),
      Q => A(14),
      R => '0'
    );
\fp_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(15),
      Q => A(15),
      R => '0'
    );
\fp_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(16),
      Q => A(16),
      R => '0'
    );
\fp_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(17),
      Q => A(17),
      R => '0'
    );
\fp_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(18),
      Q => A(18),
      R => '0'
    );
\fp_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(19),
      Q => A(19),
      R => '0'
    );
\fp_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(1),
      Q => A(1),
      R => '0'
    );
\fp_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(20),
      Q => A(20),
      R => '0'
    );
\fp_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(21),
      Q => A(21),
      R => '0'
    );
\fp_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(22),
      Q => A(22),
      R => '0'
    );
\fp_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(23),
      Q => A(23),
      R => '0'
    );
\fp_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(24),
      Q => A(24),
      R => '0'
    );
\fp_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(25),
      Q => A(25),
      R => '0'
    );
\fp_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(26),
      Q => A(26),
      R => '0'
    );
\fp_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(27),
      Q => A(27),
      R => '0'
    );
\fp_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(28),
      Q => A(28),
      R => '0'
    );
\fp_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(29),
      Q => A(29),
      R => '0'
    );
\fp_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(2),
      Q => A(2),
      R => '0'
    );
\fp_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(30),
      Q => A(30),
      R => '0'
    );
\fp_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(31),
      Q => A(31),
      R => '0'
    );
\fp_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(3),
      Q => A(3),
      R => '0'
    );
\fp_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(4),
      Q => A(4),
      R => '0'
    );
\fp_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(5),
      Q => A(5),
      R => '0'
    );
\fp_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(6),
      Q => A(6),
      R => '0'
    );
\fp_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(7),
      Q => A(7),
      R => '0'
    );
\fp_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(8),
      Q => A(8),
      R => '0'
    );
\fp_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_A(9),
      Q => A(9),
      R => '0'
    );
\fp_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(0),
      Q => B(0),
      R => '0'
    );
\fp_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(10),
      Q => B(10),
      R => '0'
    );
\fp_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(11),
      Q => B(11),
      R => '0'
    );
\fp_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(12),
      Q => B(12),
      R => '0'
    );
\fp_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(13),
      Q => B(13),
      R => '0'
    );
\fp_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(14),
      Q => B(14),
      R => '0'
    );
\fp_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(15),
      Q => B(15),
      R => '0'
    );
\fp_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(16),
      Q => B(16),
      R => '0'
    );
\fp_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(17),
      Q => B(17),
      R => '0'
    );
\fp_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(18),
      Q => B(18),
      R => '0'
    );
\fp_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(19),
      Q => B(19),
      R => '0'
    );
\fp_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(1),
      Q => B(1),
      R => '0'
    );
\fp_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(20),
      Q => B(20),
      R => '0'
    );
\fp_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(21),
      Q => B(21),
      R => '0'
    );
\fp_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(22),
      Q => B(22),
      R => '0'
    );
\fp_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(23),
      Q => B(23),
      R => '0'
    );
\fp_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(24),
      Q => B(24),
      R => '0'
    );
\fp_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(25),
      Q => B(25),
      R => '0'
    );
\fp_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(26),
      Q => B(26),
      R => '0'
    );
\fp_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(27),
      Q => B(27),
      R => '0'
    );
\fp_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(28),
      Q => B(28),
      R => '0'
    );
\fp_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(29),
      Q => B(29),
      R => '0'
    );
\fp_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(2),
      Q => B(2),
      R => '0'
    );
\fp_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(30),
      Q => B(30),
      R => '0'
    );
\fp_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(31),
      Q => B(31),
      R => '0'
    );
\fp_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(3),
      Q => B(3),
      R => '0'
    );
\fp_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(4),
      Q => B(4),
      R => '0'
    );
\fp_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(5),
      Q => B(5),
      R => '0'
    );
\fp_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(6),
      Q => B(6),
      R => '0'
    );
\fp_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(7),
      Q => B(7),
      R => '0'
    );
\fp_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(8),
      Q => B(8),
      R => '0'
    );
\fp_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => MUL_UNIT_n_0,
      D => fp_B(9),
      Q => B(9),
      R => '0'
    );
fp_sub_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      O => fp_sub_i_2_n_0
    );
fp_sub_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => MUL_UNIT_n_45,
      Q => fp_sub_reg_n_0,
      R => '0'
    );
\integral_sum_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(0),
      Q => \integral_sum_reg_n_0_[0]\
    );
\integral_sum_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(10),
      Q => \integral_sum_reg_n_0_[10]\
    );
\integral_sum_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(11),
      Q => \integral_sum_reg_n_0_[11]\
    );
\integral_sum_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(12),
      Q => \integral_sum_reg_n_0_[12]\
    );
\integral_sum_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(13),
      Q => \integral_sum_reg_n_0_[13]\
    );
\integral_sum_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(14),
      Q => \integral_sum_reg_n_0_[14]\
    );
\integral_sum_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(15),
      Q => \integral_sum_reg_n_0_[15]\
    );
\integral_sum_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(16),
      Q => \integral_sum_reg_n_0_[16]\
    );
\integral_sum_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(17),
      Q => \integral_sum_reg_n_0_[17]\
    );
\integral_sum_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(18),
      Q => \integral_sum_reg_n_0_[18]\
    );
\integral_sum_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(19),
      Q => \integral_sum_reg_n_0_[19]\
    );
\integral_sum_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(1),
      Q => \integral_sum_reg_n_0_[1]\
    );
\integral_sum_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(20),
      Q => \integral_sum_reg_n_0_[20]\
    );
\integral_sum_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(21),
      Q => \integral_sum_reg_n_0_[21]\
    );
\integral_sum_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(22),
      Q => \integral_sum_reg_n_0_[22]\
    );
\integral_sum_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(23),
      Q => \integral_sum_reg_n_0_[23]\
    );
\integral_sum_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(24),
      Q => \integral_sum_reg_n_0_[24]\
    );
\integral_sum_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(25),
      Q => \integral_sum_reg_n_0_[25]\
    );
\integral_sum_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(26),
      Q => \integral_sum_reg_n_0_[26]\
    );
\integral_sum_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(27),
      Q => \integral_sum_reg_n_0_[27]\
    );
\integral_sum_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(28),
      Q => \integral_sum_reg_n_0_[28]\
    );
\integral_sum_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(29),
      Q => \integral_sum_reg_n_0_[29]\
    );
\integral_sum_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(2),
      Q => \integral_sum_reg_n_0_[2]\
    );
\integral_sum_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(30),
      Q => \integral_sum_reg_n_0_[30]\
    );
\integral_sum_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(31),
      Q => \integral_sum_reg_n_0_[31]\
    );
\integral_sum_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(3),
      Q => \integral_sum_reg_n_0_[3]\
    );
\integral_sum_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(4),
      Q => \integral_sum_reg_n_0_[4]\
    );
\integral_sum_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(5),
      Q => \integral_sum_reg_n_0_[5]\
    );
\integral_sum_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(6),
      Q => \integral_sum_reg_n_0_[6]\
    );
\integral_sum_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(7),
      Q => \integral_sum_reg_n_0_[7]\
    );
\integral_sum_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(8),
      Q => \integral_sum_reg_n_0_[8]\
    );
\integral_sum_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => integral_sum,
      CLR => rst_fp,
      D => fp_result(9),
      Q => \integral_sum_reg_n_0_[9]\
    );
mul_start_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_fp,
      O => \^p_0_in\
    );
mul_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^p_0_in\,
      D => mul_start,
      Q => mul_start_reg_n_0,
      R => '0'
    );
start_f2i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => start_f2i_reg(0),
      I1 => \^done\,
      O => start_f2i
    );
\temp_error_diff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(0),
      Q => \temp_error_diff__0\(0),
      R => '0'
    );
\temp_error_diff_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(10),
      Q => \temp_error_diff__0\(10),
      R => '0'
    );
\temp_error_diff_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(11),
      Q => \temp_error_diff__0\(11),
      R => '0'
    );
\temp_error_diff_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(12),
      Q => \temp_error_diff__0\(12),
      R => '0'
    );
\temp_error_diff_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(13),
      Q => \temp_error_diff__0\(13),
      R => '0'
    );
\temp_error_diff_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(14),
      Q => \temp_error_diff__0\(14),
      R => '0'
    );
\temp_error_diff_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(15),
      Q => \temp_error_diff__0\(15),
      R => '0'
    );
\temp_error_diff_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(16),
      Q => \temp_error_diff__0\(16),
      R => '0'
    );
\temp_error_diff_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(17),
      Q => \temp_error_diff__0\(17),
      R => '0'
    );
\temp_error_diff_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(18),
      Q => \temp_error_diff__0\(18),
      R => '0'
    );
\temp_error_diff_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(19),
      Q => \temp_error_diff__0\(19),
      R => '0'
    );
\temp_error_diff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(1),
      Q => \temp_error_diff__0\(1),
      R => '0'
    );
\temp_error_diff_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(20),
      Q => \temp_error_diff__0\(20),
      R => '0'
    );
\temp_error_diff_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(21),
      Q => \temp_error_diff__0\(21),
      R => '0'
    );
\temp_error_diff_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(22),
      Q => \temp_error_diff__0\(22),
      R => '0'
    );
\temp_error_diff_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(23),
      Q => \temp_error_diff__0\(23),
      R => '0'
    );
\temp_error_diff_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(24),
      Q => \temp_error_diff__0\(24),
      R => '0'
    );
\temp_error_diff_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(25),
      Q => \temp_error_diff__0\(25),
      R => '0'
    );
\temp_error_diff_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(26),
      Q => \temp_error_diff__0\(26),
      R => '0'
    );
\temp_error_diff_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(27),
      Q => \temp_error_diff__0\(27),
      R => '0'
    );
\temp_error_diff_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(28),
      Q => \temp_error_diff__0\(28),
      R => '0'
    );
\temp_error_diff_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(29),
      Q => \temp_error_diff__0\(29),
      R => '0'
    );
\temp_error_diff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(2),
      Q => \temp_error_diff__0\(2),
      R => '0'
    );
\temp_error_diff_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(30),
      Q => \temp_error_diff__0\(30),
      R => '0'
    );
\temp_error_diff_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(31),
      Q => \temp_error_diff__0\(31),
      R => '0'
    );
\temp_error_diff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(3),
      Q => \temp_error_diff__0\(3),
      R => '0'
    );
\temp_error_diff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(4),
      Q => \temp_error_diff__0\(4),
      R => '0'
    );
\temp_error_diff_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(5),
      Q => \temp_error_diff__0\(5),
      R => '0'
    );
\temp_error_diff_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(6),
      Q => \temp_error_diff__0\(6),
      R => '0'
    );
\temp_error_diff_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(7),
      Q => \temp_error_diff__0\(7),
      R => '0'
    );
\temp_error_diff_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(8),
      Q => \temp_error_diff__0\(8),
      R => '0'
    );
\temp_error_diff_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => temp_error_diff0,
      D => fp_result(9),
      Q => \temp_error_diff__0\(9),
      R => '0'
    );
\temp_int_v[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => \temp_int_v[0]_i_2_n_0\,
      I1 => \temp_int_v[0]_i_3_n_0\,
      I2 => \temp_int_v[0]_i_4_n_0\,
      I3 => \temp_int_v[0]_i_5_n_0\,
      I4 => \temp_int_v[0]_i_6_n_0\,
      O => D(0)
    );
\temp_int_v[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800F80088008800"
    )
        port map (
      I0 => \temp_int_v[0]_i_3_n_0\,
      I1 => u_val_fp(19),
      I2 => \temp_int_v[0]_i_7_n_0\,
      I3 => \temp_int_v[4]_i_4_n_0\,
      I4 => \temp_int_v_reg[0]_0\,
      I5 => \temp_int_v_reg[0]\(3),
      O => \temp_int_v[0]_i_2_n_0\
    );
\temp_int_v[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => u_val_fp(25),
      I1 => \temp_int_v[11]_i_4_n_0\,
      I2 => u_val_fp(26),
      O => \temp_int_v[0]_i_3_n_0\
    );
\temp_int_v[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => u_val_fp(20),
      I1 => u_val_fp(24),
      I2 => u_val_fp(21),
      I3 => u_val_fp(23),
      I4 => u_val_fp(22),
      O => \temp_int_v[0]_i_4_n_0\
    );
\temp_int_v[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^control_output_u_reg[23]_2\,
      I1 => u_val_fp(15),
      I2 => \temp_int_v[6]_i_3_n_0\,
      I3 => u_val_fp(14),
      I4 => u_val_fp(13),
      I5 => \temp_int_v[10]_i_2_n_0\,
      O => \temp_int_v[0]_i_5_n_0\
    );
\temp_int_v[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \temp_int_v[0]_i_8_n_0\,
      I1 => \^control_output_u_reg[23]_0\,
      I2 => u_val_fp(12),
      I3 => \temp_int_v_reg[1]\,
      I4 => pot_val(0),
      I5 => \temp_int_v_reg[0]\(0),
      O => \temp_int_v[0]_i_6_n_0\
    );
\temp_int_v[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => u_val_fp(27),
      I1 => u_val_fp(28),
      I2 => u_val_fp(25),
      I3 => u_val_fp(26),
      I4 => u_val_fp(30),
      I5 => u_val_fp(29),
      O => \temp_int_v[0]_i_7_n_0\
    );
\temp_int_v[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0000F0AA0000"
    )
        port map (
      I0 => u_val_fp(18),
      I1 => u_val_fp(16),
      I2 => u_val_fp(17),
      I3 => u_val_fp(23),
      I4 => \temp_int_v[8]_i_4_n_0\,
      I5 => u_val_fp(24),
      O => \temp_int_v[0]_i_8_n_0\
    );
\temp_int_v[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \^control_output_u_reg[23]_0\,
      I1 => u_val_fp(22),
      I2 => pot_val(8),
      I3 => \temp_int_v_reg[0]\(0),
      I4 => \temp_int_v[10]_i_2_n_0\,
      I5 => \temp_int_v_reg[1]\,
      O => D(8)
    );
\temp_int_v[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => u_val_fp(26),
      I1 => \temp_int_v[11]_i_4_n_0\,
      I2 => u_val_fp(25),
      I3 => u_val_fp(24),
      I4 => u_val_fp(23),
      O => \temp_int_v[10]_i_2_n_0\
    );
\temp_int_v[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => u_val_fp(23),
      I1 => u_val_fp(24),
      I2 => u_val_fp(26),
      I3 => \temp_int_v[11]_i_4_n_0\,
      I4 => u_val_fp(25),
      O => \^control_output_u_reg[23]_0\
    );
\temp_int_v[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => u_val_fp(27),
      I1 => u_val_fp(28),
      I2 => u_val_fp(30),
      I3 => u_val_fp(29),
      I4 => \temp_int_v_reg[0]_0\,
      I5 => \temp_int_v_reg[0]\(3),
      O => \temp_int_v[11]_i_4_n_0\
    );
\temp_int_v[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
        port map (
      I0 => \temp_int_v[1]_i_2_n_0\,
      I1 => \temp_int_v[1]_i_3_n_0\,
      I2 => \temp_int_v_reg[1]\,
      I3 => \temp_int_v[1]_i_4_n_0\,
      I4 => u_val_fp(18),
      I5 => \temp_int_v[6]_i_4_n_0\,
      O => D(1)
    );
\temp_int_v[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \temp_int_v[2]_i_4_n_0\,
      I1 => u_val_fp(17),
      I2 => \^control_output_u_reg[23]_2\,
      I3 => u_val_fp(16),
      I4 => u_val_fp(14),
      I5 => \temp_int_v[10]_i_2_n_0\,
      O => \temp_int_v[1]_i_2_n_0\
    );
\temp_int_v[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^control_output_u_reg[23]_0\,
      I1 => u_val_fp(13),
      I2 => pot_val(1),
      I3 => \temp_int_v_reg[0]\(0),
      I4 => \temp_int_v[3]_i_6_n_0\,
      I5 => \temp_int_v[1]_i_5_n_0\,
      O => \temp_int_v[1]_i_3_n_0\
    );
\temp_int_v[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0A0E000C0A0E0"
    )
        port map (
      I0 => u_val_fp(21),
      I1 => u_val_fp(22),
      I2 => \temp_int_v[0]_i_3_n_0\,
      I3 => u_val_fp(24),
      I4 => u_val_fp(23),
      I5 => u_val_fp(20),
      O => \temp_int_v[1]_i_4_n_0\
    );
\temp_int_v[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => u_val_fp(23),
      I1 => u_val_fp(24),
      O => \temp_int_v[1]_i_5_n_0\
    );
\temp_int_v[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \^control_output_u_reg[23]_0\,
      I1 => u_val_fp(14),
      I2 => pot_val(2),
      I3 => \temp_int_v_reg[0]\(0),
      I4 => \temp_int_v[2]_i_2_n_0\,
      I5 => \temp_int_v[2]_i_3_n_0\,
      O => D(2)
    );
\temp_int_v[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \temp_int_v[2]_i_4_n_0\,
      I1 => u_val_fp(18),
      I2 => \^control_output_u_reg[23]_2\,
      I3 => u_val_fp(17),
      I4 => u_val_fp(16),
      I5 => \temp_int_v[6]_i_3_n_0\,
      O => \temp_int_v[2]_i_2_n_0\
    );
\temp_int_v[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEEAAFAAAEEAAAA"
    )
        port map (
      I0 => \temp_int_v[2]_i_5_n_0\,
      I1 => \temp_int_v[3]_i_6_n_0\,
      I2 => u_val_fp(20),
      I3 => u_val_fp(24),
      I4 => u_val_fp(23),
      I5 => \temp_int_v[8]_i_4_n_0\,
      O => \temp_int_v[2]_i_3_n_0\
    );
\temp_int_v[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => u_val_fp(23),
      I1 => u_val_fp(24),
      I2 => \temp_int_v[8]_i_4_n_0\,
      O => \temp_int_v[2]_i_4_n_0\
    );
\temp_int_v[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAAAAAEAAAEAAA"
    )
        port map (
      I0 => \temp_int_v_reg[1]\,
      I1 => u_val_fp(22),
      I2 => u_val_fp(24),
      I3 => \temp_int_v[0]_i_3_n_0\,
      I4 => u_val_fp(21),
      I5 => u_val_fp(23),
      O => \temp_int_v[2]_i_5_n_0\
    );
\temp_int_v[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \temp_int_v[3]_i_2_n_0\,
      I1 => \temp_int_v[3]_i_3_n_0\,
      I2 => pot_val(3),
      I3 => \temp_int_v_reg[0]\(0),
      I4 => \temp_int_v[3]_i_4_n_0\,
      O => D(3)
    );
\temp_int_v[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAAEAAAEAAA"
    )
        port map (
      I0 => \temp_int_v_reg[1]\,
      I1 => u_val_fp(24),
      I2 => u_val_fp(22),
      I3 => \temp_int_v[0]_i_3_n_0\,
      I4 => u_val_fp(21),
      I5 => \temp_int_v[5]_i_4_n_0\,
      O => \temp_int_v[3]_i_2_n_0\
    );
\temp_int_v[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC840C840C840"
    )
        port map (
      I0 => u_val_fp(24),
      I1 => \temp_int_v[3]_i_5_n_0\,
      I2 => u_val_fp(20),
      I3 => u_val_fp(18),
      I4 => u_val_fp(17),
      I5 => \temp_int_v[6]_i_3_n_0\,
      O => \temp_int_v[3]_i_3_n_0\
    );
\temp_int_v[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF202020"
    )
        port map (
      I0 => u_val_fp(24),
      I1 => u_val_fp(23),
      I2 => \temp_int_v[3]_i_6_n_0\,
      I3 => u_val_fp(16),
      I4 => \temp_int_v[10]_i_2_n_0\,
      O => \temp_int_v[3]_i_4_n_0\
    );
\temp_int_v[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temp_int_v[8]_i_4_n_0\,
      I1 => u_val_fp(23),
      O => \temp_int_v[3]_i_5_n_0\
    );
\temp_int_v[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20F02030"
    )
        port map (
      I0 => u_val_fp(15),
      I1 => u_val_fp(25),
      I2 => \temp_int_v[11]_i_4_n_0\,
      I3 => u_val_fp(26),
      I4 => u_val_fp(19),
      O => \temp_int_v[3]_i_6_n_0\
    );
\temp_int_v[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => \temp_int_v_reg[0]\(1),
      I1 => \temp_int_v_reg[0]\(2),
      I2 => \temp_int_v[4]_i_2_n_0\,
      I3 => u_val_fp(18),
      I4 => \temp_int_v[6]_i_3_n_0\,
      I5 => \temp_int_v[4]_i_3_n_0\,
      O => D(4)
    );
\temp_int_v[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E000F000A000000"
    )
        port map (
      I0 => \temp_int_v[0]_i_4_n_0\,
      I1 => u_val_fp(19),
      I2 => u_val_fp(26),
      I3 => \temp_int_v[11]_i_4_n_0\,
      I4 => u_val_fp(25),
      I5 => \temp_int_v[4]_i_4_n_0\,
      O => \temp_int_v[4]_i_2_n_0\
    );
\temp_int_v[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \temp_int_v[10]_i_2_n_0\,
      I1 => u_val_fp(17),
      I2 => \^control_output_u_reg[23]_0\,
      I3 => u_val_fp(16),
      I4 => \temp_int_v_reg[0]\(0),
      I5 => pot_val(4),
      O => \temp_int_v[4]_i_3_n_0\
    );
\temp_int_v[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => u_val_fp(23),
      I1 => u_val_fp(24),
      O => \temp_int_v[4]_i_4_n_0\
    );
\temp_int_v[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \temp_int_v[5]_i_2_n_0\,
      I1 => u_val_fp(19),
      I2 => \temp_int_v[6]_i_3_n_0\,
      I3 => \temp_int_v[5]_i_3_n_0\,
      I4 => \temp_int_v[5]_i_4_n_0\,
      I5 => \temp_int_v_reg[1]\,
      O => D(5)
    );
\temp_int_v[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AA0000CCEE0000"
    )
        port map (
      I0 => u_val_fp(21),
      I1 => u_val_fp(22),
      I2 => u_val_fp(20),
      I3 => u_val_fp(23),
      I4 => \temp_int_v[8]_i_4_n_0\,
      I5 => u_val_fp(24),
      O => \temp_int_v[5]_i_2_n_0\
    );
\temp_int_v[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \temp_int_v[10]_i_2_n_0\,
      I1 => u_val_fp(18),
      I2 => \^control_output_u_reg[23]_0\,
      I3 => u_val_fp(17),
      I4 => \temp_int_v_reg[0]\(0),
      I5 => pot_val(5),
      O => \temp_int_v[5]_i_3_n_0\
    );
\temp_int_v[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => u_val_fp(24),
      I1 => u_val_fp(23),
      I2 => \temp_int_v[8]_i_4_n_0\,
      O => \temp_int_v[5]_i_4_n_0\
    );
\temp_int_v[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \temp_int_v[6]_i_2_n_0\,
      I1 => u_val_fp(20),
      I2 => \temp_int_v[6]_i_3_n_0\,
      I3 => \temp_int_v_reg[1]\,
      I4 => \temp_int_v[6]_i_4_n_0\,
      I5 => \temp_int_v[6]_i_5_n_0\,
      O => D(6)
    );
\temp_int_v[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA00000"
    )
        port map (
      I0 => u_val_fp(21),
      I1 => u_val_fp(22),
      I2 => u_val_fp(23),
      I3 => u_val_fp(24),
      I4 => \temp_int_v[8]_i_4_n_0\,
      O => \temp_int_v[6]_i_2_n_0\
    );
\temp_int_v[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => u_val_fp(26),
      I1 => \temp_int_v[11]_i_4_n_0\,
      I2 => u_val_fp(25),
      I3 => u_val_fp(24),
      I4 => u_val_fp(23),
      O => \temp_int_v[6]_i_3_n_0\
    );
\temp_int_v[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => u_val_fp(23),
      I1 => \temp_int_v[8]_i_4_n_0\,
      I2 => u_val_fp(24),
      O => \temp_int_v[6]_i_4_n_0\
    );
\temp_int_v[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \temp_int_v[10]_i_2_n_0\,
      I1 => u_val_fp(19),
      I2 => \^control_output_u_reg[23]_0\,
      I3 => u_val_fp(18),
      I4 => \temp_int_v_reg[0]\(0),
      I5 => pot_val(6),
      O => \temp_int_v[6]_i_5_n_0\
    );
\temp_int_v[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC040C040C040"
    )
        port map (
      I0 => u_val_fp(23),
      I1 => u_val_fp(24),
      I2 => \temp_int_v[8]_i_4_n_0\,
      I3 => u_val_fp(22),
      I4 => u_val_fp(21),
      I5 => \temp_int_v[6]_i_3_n_0\,
      O => \control_output_u_reg[23]_1\
    );
\temp_int_v[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \temp_int_v[10]_i_2_n_0\,
      I1 => u_val_fp(20),
      I2 => \^control_output_u_reg[23]_0\,
      I3 => u_val_fp(19),
      I4 => \temp_int_v_reg[0]\(0),
      I5 => pot_val(7),
      O => \control_output_u_reg[20]_1\
    );
\temp_int_v[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => u_val_fp(23),
      I1 => \temp_int_v[8]_i_4_n_0\,
      I2 => u_val_fp(24),
      O => \^control_output_u_reg[23]_2\
    );
\temp_int_v[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C008C8C0C008080"
    )
        port map (
      I0 => u_val_fp(20),
      I1 => \temp_int_v[9]_i_3_n_0\,
      I2 => u_val_fp(24),
      I3 => u_val_fp(21),
      I4 => u_val_fp(23),
      I5 => u_val_fp(22),
      O => \control_output_u_reg[20]_0\
    );
\temp_int_v[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => u_val_fp(26),
      I1 => \temp_int_v[11]_i_4_n_0\,
      I2 => u_val_fp(25),
      O => \temp_int_v[8]_i_4_n_0\
    );
\temp_int_v[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAAFAFABABA"
    )
        port map (
      I0 => \temp_int_v_reg[9]\,
      I1 => u_val_fp(24),
      I2 => \temp_int_v[9]_i_3_n_0\,
      I3 => u_val_fp(22),
      I4 => u_val_fp(21),
      I5 => u_val_fp(23),
      O => D(7)
    );
\temp_int_v[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => u_val_fp(25),
      I1 => \temp_int_v[11]_i_4_n_0\,
      I2 => u_val_fp(26),
      O => \temp_int_v[9]_i_3_n_0\
    );
\term_D_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(0),
      Q => \term_D__0\(0),
      R => '0'
    );
\term_D_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(10),
      Q => \term_D__0\(10),
      R => '0'
    );
\term_D_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(11),
      Q => \term_D__0\(11),
      R => '0'
    );
\term_D_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(12),
      Q => \term_D__0\(12),
      R => '0'
    );
\term_D_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(13),
      Q => \term_D__0\(13),
      R => '0'
    );
\term_D_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(14),
      Q => \term_D__0\(14),
      R => '0'
    );
\term_D_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(15),
      Q => \term_D__0\(15),
      R => '0'
    );
\term_D_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(16),
      Q => \term_D__0\(16),
      R => '0'
    );
\term_D_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(17),
      Q => \term_D__0\(17),
      R => '0'
    );
\term_D_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(18),
      Q => \term_D__0\(18),
      R => '0'
    );
\term_D_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(19),
      Q => \term_D__0\(19),
      R => '0'
    );
\term_D_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(1),
      Q => \term_D__0\(1),
      R => '0'
    );
\term_D_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(20),
      Q => \term_D__0\(20),
      R => '0'
    );
\term_D_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(21),
      Q => \term_D__0\(21),
      R => '0'
    );
\term_D_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(22),
      Q => \term_D__0\(22),
      R => '0'
    );
\term_D_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(23),
      Q => \term_D__0\(23),
      R => '0'
    );
\term_D_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(24),
      Q => \term_D__0\(24),
      R => '0'
    );
\term_D_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(25),
      Q => \term_D__0\(25),
      R => '0'
    );
\term_D_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(26),
      Q => \term_D__0\(26),
      R => '0'
    );
\term_D_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(27),
      Q => \term_D__0\(27),
      R => '0'
    );
\term_D_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(28),
      Q => \term_D__0\(28),
      R => '0'
    );
\term_D_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(29),
      Q => \term_D__0\(29),
      R => '0'
    );
\term_D_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(2),
      Q => \term_D__0\(2),
      R => '0'
    );
\term_D_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(30),
      Q => \term_D__0\(30),
      R => '0'
    );
\term_D_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(31),
      Q => \term_D__0\(31),
      R => '0'
    );
\term_D_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(3),
      Q => \term_D__0\(3),
      R => '0'
    );
\term_D_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(4),
      Q => \term_D__0\(4),
      R => '0'
    );
\term_D_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(5),
      Q => \term_D__0\(5),
      R => '0'
    );
\term_D_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(6),
      Q => \term_D__0\(6),
      R => '0'
    );
\term_D_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(7),
      Q => \term_D__0\(7),
      R => '0'
    );
\term_D_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(8),
      Q => \term_D__0\(8),
      R => '0'
    );
\term_D_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_D0,
      D => fp_result(9),
      Q => \term_D__0\(9),
      R => '0'
    );
\term_I_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(0),
      Q => term_I(0),
      R => '0'
    );
\term_I_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(10),
      Q => term_I(10),
      R => '0'
    );
\term_I_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(11),
      Q => term_I(11),
      R => '0'
    );
\term_I_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(12),
      Q => term_I(12),
      R => '0'
    );
\term_I_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(13),
      Q => term_I(13),
      R => '0'
    );
\term_I_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(14),
      Q => term_I(14),
      R => '0'
    );
\term_I_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(15),
      Q => term_I(15),
      R => '0'
    );
\term_I_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(16),
      Q => term_I(16),
      R => '0'
    );
\term_I_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(17),
      Q => term_I(17),
      R => '0'
    );
\term_I_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(18),
      Q => term_I(18),
      R => '0'
    );
\term_I_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(19),
      Q => term_I(19),
      R => '0'
    );
\term_I_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(1),
      Q => term_I(1),
      R => '0'
    );
\term_I_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(20),
      Q => term_I(20),
      R => '0'
    );
\term_I_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(21),
      Q => term_I(21),
      R => '0'
    );
\term_I_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(22),
      Q => term_I(22),
      R => '0'
    );
\term_I_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(23),
      Q => term_I(23),
      R => '0'
    );
\term_I_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(24),
      Q => term_I(24),
      R => '0'
    );
\term_I_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(25),
      Q => term_I(25),
      R => '0'
    );
\term_I_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(26),
      Q => term_I(26),
      R => '0'
    );
\term_I_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(27),
      Q => term_I(27),
      R => '0'
    );
\term_I_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(28),
      Q => term_I(28),
      R => '0'
    );
\term_I_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(29),
      Q => term_I(29),
      R => '0'
    );
\term_I_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(2),
      Q => term_I(2),
      R => '0'
    );
\term_I_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(30),
      Q => term_I(30),
      R => '0'
    );
\term_I_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(31),
      Q => term_I(31),
      R => '0'
    );
\term_I_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(3),
      Q => term_I(3),
      R => '0'
    );
\term_I_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(4),
      Q => term_I(4),
      R => '0'
    );
\term_I_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(5),
      Q => term_I(5),
      R => '0'
    );
\term_I_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(6),
      Q => term_I(6),
      R => '0'
    );
\term_I_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(7),
      Q => term_I(7),
      R => '0'
    );
\term_I_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(8),
      Q => term_I(8),
      R => '0'
    );
\term_I_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_I0,
      D => fp_result(9),
      Q => term_I(9),
      R => '0'
    );
\term_P_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(0),
      Q => \term_P__0\(0),
      R => '0'
    );
\term_P_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(10),
      Q => \term_P__0\(10),
      R => '0'
    );
\term_P_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(11),
      Q => \term_P__0\(11),
      R => '0'
    );
\term_P_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(12),
      Q => \term_P__0\(12),
      R => '0'
    );
\term_P_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(13),
      Q => \term_P__0\(13),
      R => '0'
    );
\term_P_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(14),
      Q => \term_P__0\(14),
      R => '0'
    );
\term_P_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(15),
      Q => \term_P__0\(15),
      R => '0'
    );
\term_P_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(16),
      Q => \term_P__0\(16),
      R => '0'
    );
\term_P_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(17),
      Q => \term_P__0\(17),
      R => '0'
    );
\term_P_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(18),
      Q => \term_P__0\(18),
      R => '0'
    );
\term_P_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(19),
      Q => \term_P__0\(19),
      R => '0'
    );
\term_P_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(1),
      Q => \term_P__0\(1),
      R => '0'
    );
\term_P_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(20),
      Q => \term_P__0\(20),
      R => '0'
    );
\term_P_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(21),
      Q => \term_P__0\(21),
      R => '0'
    );
\term_P_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(22),
      Q => \term_P__0\(22),
      R => '0'
    );
\term_P_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(23),
      Q => \term_P__0\(23),
      R => '0'
    );
\term_P_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(24),
      Q => \term_P__0\(24),
      R => '0'
    );
\term_P_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(25),
      Q => \term_P__0\(25),
      R => '0'
    );
\term_P_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(26),
      Q => \term_P__0\(26),
      R => '0'
    );
\term_P_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(27),
      Q => \term_P__0\(27),
      R => '0'
    );
\term_P_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(28),
      Q => \term_P__0\(28),
      R => '0'
    );
\term_P_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(29),
      Q => \term_P__0\(29),
      R => '0'
    );
\term_P_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(2),
      Q => \term_P__0\(2),
      R => '0'
    );
\term_P_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(30),
      Q => \term_P__0\(30),
      R => '0'
    );
\term_P_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(31),
      Q => \term_P__0\(31),
      R => '0'
    );
\term_P_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(3),
      Q => \term_P__0\(3),
      R => '0'
    );
\term_P_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(4),
      Q => \term_P__0\(4),
      R => '0'
    );
\term_P_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(5),
      Q => \term_P__0\(5),
      R => '0'
    );
\term_P_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(6),
      Q => \term_P__0\(6),
      R => '0'
    );
\term_P_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(7),
      Q => \term_P__0\(7),
      R => '0'
    );
\term_P_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(8),
      Q => \term_P__0\(8),
      R => '0'
    );
\term_P_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => term_P0,
      D => fp_result(9),
      Q => \term_P__0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pid_controller_0_0_pid_controller is
  port (
    pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    done : out STD_LOGIC;
    rst_fp : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_conv : in STD_LOGIC;
    pot_val : in STD_LOGIC_VECTOR ( 11 downto 0 );
    start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pid_controller_0_0_pid_controller : entity is "pid_controller";
end design_1_pid_controller_0_0_pid_controller;

architecture STRUCTURE of design_1_pid_controller_0_0_pid_controller is
  signal \FSM_onehot_secv[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_secv_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_secv_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_secv_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_secv_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_secv_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_secv_reg_n_0_[5]\ : STD_LOGIC;
  signal conv_inst_n_0 : STD_LOGIC;
  signal conv_inst_n_1 : STD_LOGIC;
  signal conv_inst_n_3 : STD_LOGIC;
  signal conv_inst_n_4 : STD_LOGIC;
  signal conv_inst_n_5 : STD_LOGIC;
  signal conv_inst_n_6 : STD_LOGIC;
  signal conv_inst_n_8 : STD_LOGIC;
  signal done_pid : STD_LOGIC;
  signal fp_exp_u : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal pid_inst_n_1 : STD_LOGIC;
  signal pid_inst_n_10 : STD_LOGIC;
  signal pid_inst_n_11 : STD_LOGIC;
  signal pid_inst_n_12 : STD_LOGIC;
  signal pid_inst_n_13 : STD_LOGIC;
  signal pid_inst_n_14 : STD_LOGIC;
  signal pid_inst_n_2 : STD_LOGIC;
  signal pid_inst_n_3 : STD_LOGIC;
  signal pid_inst_n_4 : STD_LOGIC;
  signal pid_inst_n_5 : STD_LOGIC;
  signal pid_inst_n_6 : STD_LOGIC;
  signal pid_inst_n_7 : STD_LOGIC;
  signal pid_inst_n_8 : STD_LOGIC;
  signal pid_inst_n_9 : STD_LOGIC;
  signal pv_val_fp : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal start_f2i : STD_LOGIC;
  signal start_f2i_reg_n_0 : STD_LOGIC;
  signal start_i2f : STD_LOGIC;
  signal start_i2f_reg_n_0 : STD_LOGIC;
  signal start_pid : STD_LOGIC;
  signal start_pid_reg_n_0 : STD_LOGIC;
  signal start_pwm : STD_LOGIC;
  signal start_pwm_reg_n_0 : STD_LOGIC;
  signal u_val_fp : STD_LOGIC_VECTOR ( 31 to 31 );
  signal u_val_int : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_secv_reg[0]\ : label is "s_i2f:0000010,s_pid:0000100,s_f2i:0001000,s_pwm:0010000,s_done:0100000,s_idle:0000001,iSTATE:1000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_secv_reg[1]\ : label is "s_i2f:0000010,s_pid:0000100,s_f2i:0001000,s_pwm:0010000,s_done:0100000,s_idle:0000001,iSTATE:1000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_secv_reg[2]\ : label is "s_i2f:0000010,s_pid:0000100,s_f2i:0001000,s_pwm:0010000,s_done:0100000,s_idle:0000001,iSTATE:1000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_secv_reg[3]\ : label is "s_i2f:0000010,s_pid:0000100,s_f2i:0001000,s_pwm:0010000,s_done:0100000,s_idle:0000001,iSTATE:1000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_secv_reg[4]\ : label is "s_i2f:0000010,s_pid:0000100,s_f2i:0001000,s_pwm:0010000,s_done:0100000,s_idle:0000001,iSTATE:1000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_secv_reg[5]\ : label is "s_i2f:0000010,s_pid:0000100,s_f2i:0001000,s_pwm:0010000,s_done:0100000,s_idle:0000001,iSTATE:1000000";
begin
\FSM_onehot_secv[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_secv_reg_n_0_[5]\,
      I1 => start,
      O => \FSM_onehot_secv[0]_i_1_n_0\
    );
\FSM_onehot_secv_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => conv_inst_n_8,
      D => \FSM_onehot_secv[0]_i_1_n_0\,
      PRE => rst_fp,
      Q => \FSM_onehot_secv_reg_n_0_[0]\
    );
\FSM_onehot_secv_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => conv_inst_n_8,
      CLR => rst_fp,
      D => \FSM_onehot_secv_reg_n_0_[0]\,
      Q => \FSM_onehot_secv_reg_n_0_[1]\
    );
\FSM_onehot_secv_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => conv_inst_n_8,
      CLR => rst_fp,
      D => \FSM_onehot_secv_reg_n_0_[1]\,
      Q => \FSM_onehot_secv_reg_n_0_[2]\
    );
\FSM_onehot_secv_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => conv_inst_n_8,
      CLR => rst_fp,
      D => \FSM_onehot_secv_reg_n_0_[2]\,
      Q => \FSM_onehot_secv_reg_n_0_[3]\
    );
\FSM_onehot_secv_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => conv_inst_n_8,
      CLR => rst_fp,
      D => \FSM_onehot_secv_reg_n_0_[3]\,
      Q => \FSM_onehot_secv_reg_n_0_[4]\
    );
\FSM_onehot_secv_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => conv_inst_n_8,
      CLR => rst_fp,
      D => \FSM_onehot_secv_reg_n_0_[4]\,
      Q => \FSM_onehot_secv_reg_n_0_[5]\
    );
conv_inst: entity work.design_1_pid_controller_0_0_fp_converter
     port map (
      D(8) => pid_inst_n_1,
      D(7) => pid_inst_n_2,
      D(6) => pid_inst_n_3,
      D(5) => pid_inst_n_4,
      D(4) => pid_inst_n_5,
      D(3) => pid_inst_n_6,
      D(2) => pid_inst_n_7,
      D(1) => pid_inst_n_8,
      D(0) => pid_inst_n_9,
      E(0) => conv_inst_n_8,
      \FSM_onehot_secv_reg[0]\(5) => \FSM_onehot_secv_reg_n_0_[5]\,
      \FSM_onehot_secv_reg[0]\(4) => \FSM_onehot_secv_reg_n_0_[4]\,
      \FSM_onehot_secv_reg[0]\(3) => \FSM_onehot_secv_reg_n_0_[3]\,
      \FSM_onehot_secv_reg[0]\(2) => \FSM_onehot_secv_reg_n_0_[2]\,
      \FSM_onehot_secv_reg[0]\(1) => \FSM_onehot_secv_reg_n_0_[1]\,
      \FSM_onehot_secv_reg[0]\(0) => \FSM_onehot_secv_reg_n_0_[0]\,
      \FSM_onehot_state_reg[0]_0\ => conv_inst_n_6,
      \FSM_onehot_state_reg[1]_0\ => conv_inst_n_5,
      Q(3) => conv_inst_n_0,
      Q(2) => conv_inst_n_1,
      Q(1) => fp_exp_u,
      Q(0) => conv_inst_n_3,
      clk => clk,
      control_output_u(0) => u_val_fp(31),
      done => done_pid,
      fp_sign_reg_0 => conv_inst_n_4,
      fp_sign_reg_1 => start_f2i_reg_n_0,
      fp_sign_reg_2 => start_i2f_reg_n_0,
      \out_fp_reg[31]_0\(29 downto 27) => pv_val_fp(31 downto 29),
      \out_fp_reg[31]_0\(26 downto 0) => pv_val_fp(26 downto 0),
      \out_int_reg[11]_0\(11 downto 0) => u_val_int(11 downto 0),
      pot_val(2) => pot_val(11),
      pot_val(1 downto 0) => pot_val(9 downto 8),
      rst_fp => rst_fp,
      start => start,
      start_pid => start_pid,
      start_pwm => start_pwm,
      \temp_int_v_reg[11]_0\ => pid_inst_n_10,
      \temp_int_v_reg[7]_0\ => pid_inst_n_11,
      \temp_int_v_reg[7]_1\ => pid_inst_n_14,
      \temp_int_v_reg[8]_0\ => pid_inst_n_12,
      \temp_int_v_reg[8]_1\ => pid_inst_n_13
    );
done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst_fp,
      D => \FSM_onehot_secv_reg_n_0_[5]\,
      Q => done
    );
pid_inst: entity work.design_1_pid_controller_0_0_pid_core
     port map (
      D(8) => pid_inst_n_1,
      D(7) => pid_inst_n_2,
      D(6) => pid_inst_n_3,
      D(5) => pid_inst_n_4,
      D(4) => pid_inst_n_5,
      D(3) => pid_inst_n_6,
      D(2) => pid_inst_n_7,
      D(1) => pid_inst_n_8,
      D(0) => pid_inst_n_9,
      \FSM_sequential_state_reg[0]_0\ => start_pid_reg_n_0,
      Q(0) => u_val_fp(31),
      clk => clk,
      \control_output_u_reg[20]_0\ => pid_inst_n_13,
      \control_output_u_reg[20]_1\ => pid_inst_n_14,
      \control_output_u_reg[23]_0\ => pid_inst_n_10,
      \control_output_u_reg[23]_1\ => pid_inst_n_11,
      \control_output_u_reg[23]_2\ => pid_inst_n_12,
      done => done_pid,
      \fp_B_reg[31]_0\(29 downto 27) => pv_val_fp(31 downto 29),
      \fp_B_reg[31]_0\(26 downto 0) => pv_val_fp(26 downto 0),
      p_0_in => p_0_in,
      pot_val(8) => pot_val(10),
      pot_val(7 downto 0) => pot_val(7 downto 0),
      rst_fp => rst_fp,
      start_f2i => start_f2i,
      start_f2i_reg(0) => \FSM_onehot_secv_reg_n_0_[2]\,
      \temp_int_v_reg[0]\(3) => conv_inst_n_0,
      \temp_int_v_reg[0]\(2) => conv_inst_n_1,
      \temp_int_v_reg[0]\(1) => fp_exp_u,
      \temp_int_v_reg[0]\(0) => conv_inst_n_3,
      \temp_int_v_reg[0]_0\ => conv_inst_n_4,
      \temp_int_v_reg[1]\ => conv_inst_n_5,
      \temp_int_v_reg[9]\ => conv_inst_n_6
    );
pwm_inst: entity work.design_1_pid_controller_0_0_conv_pwm_int
     port map (
      clk => clk,
      \multiplicand_reg[0]\ => start_pwm_reg_n_0,
      \multiplicand_reg[11]\(11 downto 0) => u_val_int(11 downto 0),
      pwm_val(7 downto 0) => pwm_val(7 downto 0),
      rst_conv => rst_conv
    );
start_f2i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      D => start_f2i,
      Q => start_f2i_reg_n_0,
      R => '0'
    );
start_i2f_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_secv_reg_n_0_[0]\,
      I1 => start,
      O => start_i2f
    );
start_i2f_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      D => start_i2f,
      Q => start_i2f_reg_n_0,
      R => '0'
    );
start_pid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      D => start_pid,
      Q => start_pid_reg_n_0,
      R => '0'
    );
start_pwm_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      D => start_pwm,
      Q => start_pwm_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pid_controller_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_conv : in STD_LOGIC;
    rst_fp : in STD_LOGIC;
    start : in STD_LOGIC;
    pot_val : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pid_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pid_controller_0_0 : entity is "design_1_pid_controller_0_0,pid_controller,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_pid_controller_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_pid_controller_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_pid_controller_0_0 : entity is "pid_controller,Vivado 2024.1";
end design_1_pid_controller_0_0;

architecture STRUCTURE of design_1_pid_controller_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
inst: entity work.design_1_pid_controller_0_0_pid_controller
     port map (
      clk => clk,
      done => done,
      pot_val(11 downto 0) => pot_val(11 downto 0),
      pwm_val(7 downto 0) => pwm_val(7 downto 0),
      rst_conv => rst_conv,
      rst_fp => rst_fp,
      start => start
    );
end STRUCTURE;

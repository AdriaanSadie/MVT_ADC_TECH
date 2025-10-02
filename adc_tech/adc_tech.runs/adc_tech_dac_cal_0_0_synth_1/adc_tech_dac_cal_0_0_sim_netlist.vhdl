-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Oct  1 13:02:24 2025
-- Host        : ZA-WASADIE1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adc_tech_dac_cal_0_0_sim_netlist.vhdl
-- Design      : adc_tech_dac_cal_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_cal is
  port (
    counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    debug : out STD_LOGIC_VECTOR ( 1 downto 0 );
    counting_flag : out STD_LOGIC;
    bram_we : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    pulse_in : in STD_LOGIC;
    sync_in : in STD_LOGIC;
    control : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_cal;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_cal is
  signal \FSM_onehot_dac_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dac_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dac_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dac_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dac_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dac_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dac_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dac_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dac_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dac_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dac_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dac_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dac_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_dac_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_dac_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_dac_state_reg_n_0_[2]\ : STD_LOGIC;
  signal addr_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \addr_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \addr_count_4_reg_n_0_[2]\ : STD_LOGIC;
  signal \addr_count_4_reg_n_0_[3]\ : STD_LOGIC;
  signal \addr_count_4_reg_n_0_[4]\ : STD_LOGIC;
  signal \addr_count_4_reg_n_0_[5]\ : STD_LOGIC;
  signal \addr_count_4_reg_n_0_[6]\ : STD_LOGIC;
  signal \addr_count_4_reg_n_0_[7]\ : STD_LOGIC;
  signal \addr_count_4_reg_n_0_[8]\ : STD_LOGIC;
  signal \addr_count_4_reg_n_0_[9]\ : STD_LOGIC;
  signal \bram_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \^bram_we\ : STD_LOGIC;
  signal bram_we_i_1_n_0 : STD_LOGIC;
  signal \counter[31]_i_1_n_0\ : STD_LOGIC;
  signal \^counting_flag\ : STD_LOGIC;
  signal counting_flag_i_1_n_0 : STD_LOGIC;
  signal counting_flag_i_2_n_0 : STD_LOGIC;
  signal dac_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \dac_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[15]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[16]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[17]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[18]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[19]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[20]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[21]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[22]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[23]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[24]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[25]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[26]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[27]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[28]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[29]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[30]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[31]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \debug[0]_i_1_n_0\ : STD_LOGIC;
  signal \debug[1]_i_1_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_10\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_11\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_12\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_13\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_14\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_15\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_8\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_9\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_10\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_11\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_12\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_13\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_14\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_15\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_8\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_9\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_10\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_11\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_12\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_13\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_14\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_15\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_9\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_10\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_11\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_12\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_13\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_14\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_15\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_8\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_9\ : STD_LOGIC;
  signal pulse_in_r1 : STD_LOGIC;
  signal pulse_in_r2 : STD_LOGIC;
  signal sync_in_r1 : STD_LOGIC;
  signal sync_in_r2 : STD_LOGIC;
  signal \NLW_plusOp_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_plusOp_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_dac_state[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_dac_state[2]_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_dac_state_reg[0]\ : label is "dac_s_count:010,dac_s_idle:001,dac_s_write:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_dac_state_reg[1]\ : label is "dac_s_count:010,dac_s_idle:001,dac_s_write:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_dac_state_reg[2]\ : label is "dac_s_count:010,dac_s_idle:001,dac_s_write:100";
  attribute SOFT_HLUTNM of \addr_count[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addr_count[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addr_count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \addr_count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \addr_count[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \addr_count[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of bram_we_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of counting_flag_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \dac_counter[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \dac_counter[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dac_counter[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dac_counter[12]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dac_counter[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dac_counter[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dac_counter[15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dac_counter[16]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dac_counter[17]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dac_counter[18]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dac_counter[19]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dac_counter[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \dac_counter[20]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dac_counter[21]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dac_counter[22]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dac_counter[23]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dac_counter[24]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dac_counter[25]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dac_counter[26]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dac_counter[27]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dac_counter[28]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dac_counter[29]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dac_counter[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dac_counter[30]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dac_counter[31]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dac_counter[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dac_counter[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dac_counter[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dac_counter[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dac_counter[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dac_counter[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \dac_counter[9]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \debug[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \debug[1]_i_1\ : label is "soft_lutpair20";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__2\ : label is 35;
begin
  bram_we <= \^bram_we\;
  counting_flag <= \^counting_flag\;
\FSM_onehot_dac_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEA"
    )
        port map (
      I0 => \FSM_onehot_dac_state[0]_i_2_n_0\,
      I1 => \FSM_onehot_dac_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_dac_state[1]_i_5_n_0\,
      I3 => \FSM_onehot_dac_state[1]_i_4_n_0\,
      I4 => \FSM_onehot_dac_state[1]_i_3_n_0\,
      I5 => \FSM_onehot_dac_state[1]_i_2_n_0\,
      O => \FSM_onehot_dac_state[0]_i_1_n_0\
    );
\FSM_onehot_dac_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_dac_state_reg_n_0_[1]\,
      I1 => addr_count(7),
      I2 => \FSM_onehot_dac_state_reg_n_0_[2]\,
      O => \FSM_onehot_dac_state[0]_i_2_n_0\
    );
\FSM_onehot_dac_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_onehot_dac_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_dac_state[1]_i_2_n_0\,
      I2 => \FSM_onehot_dac_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_dac_state[1]_i_4_n_0\,
      I4 => \FSM_onehot_dac_state[1]_i_5_n_0\,
      O => \FSM_onehot_dac_state[1]_i_1_n_0\
    );
\FSM_onehot_dac_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => control(14),
      I1 => control(15),
      I2 => control(12),
      I3 => control(13),
      I4 => \FSM_onehot_dac_state[1]_i_6_n_0\,
      O => \FSM_onehot_dac_state[1]_i_2_n_0\
    );
\FSM_onehot_dac_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => control(22),
      I1 => control(23),
      I2 => control(20),
      I3 => control(21),
      I4 => \FSM_onehot_dac_state[1]_i_7_n_0\,
      O => \FSM_onehot_dac_state[1]_i_3_n_0\
    );
\FSM_onehot_dac_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_dac_state[1]_i_8_n_0\,
      I1 => control(2),
      I2 => control(3),
      I3 => control(0),
      I4 => control(1),
      O => \FSM_onehot_dac_state[1]_i_4_n_0\
    );
\FSM_onehot_dac_state[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => control(6),
      I1 => control(7),
      I2 => control(4),
      I3 => control(5),
      I4 => \FSM_onehot_dac_state[1]_i_9_n_0\,
      O => \FSM_onehot_dac_state[1]_i_5_n_0\
    );
\FSM_onehot_dac_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => control(17),
      I1 => control(16),
      I2 => control(19),
      I3 => control(18),
      O => \FSM_onehot_dac_state[1]_i_6_n_0\
    );
\FSM_onehot_dac_state[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => control(25),
      I1 => control(24),
      I2 => control(27),
      I3 => control(26),
      O => \FSM_onehot_dac_state[1]_i_7_n_0\
    );
\FSM_onehot_dac_state[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFF"
    )
        port map (
      I0 => control(30),
      I1 => control(31),
      I2 => control(28),
      I3 => control(29),
      I4 => sync_in_r1,
      I5 => sync_in_r2,
      O => \FSM_onehot_dac_state[1]_i_8_n_0\
    );
\FSM_onehot_dac_state[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => control(9),
      I1 => control(8),
      I2 => control(11),
      I3 => control(10),
      O => \FSM_onehot_dac_state[1]_i_9_n_0\
    );
\FSM_onehot_dac_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEEEEEE"
    )
        port map (
      I0 => \FSM_onehot_dac_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_dac_state_reg_n_0_[0]\,
      I2 => pulse_in_r2,
      I3 => pulse_in_r1,
      I4 => \FSM_onehot_dac_state_reg_n_0_[1]\,
      O => \FSM_onehot_dac_state[2]_i_1_n_0\
    );
\FSM_onehot_dac_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_dac_state_reg_n_0_[1]\,
      I1 => addr_count(7),
      O => \FSM_onehot_dac_state[2]_i_2_n_0\
    );
\FSM_onehot_dac_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_dac_state[2]_i_1_n_0\,
      D => \FSM_onehot_dac_state[0]_i_1_n_0\,
      PRE => counting_flag_i_2_n_0,
      Q => \FSM_onehot_dac_state_reg_n_0_[0]\
    );
\FSM_onehot_dac_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_dac_state[2]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \FSM_onehot_dac_state[1]_i_1_n_0\,
      Q => \FSM_onehot_dac_state_reg_n_0_[1]\
    );
\FSM_onehot_dac_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_dac_state[2]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \FSM_onehot_dac_state[2]_i_2_n_0\,
      Q => \FSM_onehot_dac_state_reg_n_0_[2]\
    );
\addr_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_count(0),
      O => plusOp(0)
    );
\addr_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr_count(0),
      I1 => addr_count(1),
      O => plusOp(1)
    );
\addr_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => addr_count(1),
      I1 => addr_count(0),
      I2 => addr_count(2),
      O => plusOp(2)
    );
\addr_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => addr_count(2),
      I1 => addr_count(0),
      I2 => addr_count(1),
      I3 => addr_count(3),
      O => plusOp(3)
    );
\addr_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => addr_count(3),
      I1 => addr_count(1),
      I2 => addr_count(0),
      I3 => addr_count(2),
      I4 => addr_count(4),
      O => plusOp(4)
    );
\addr_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => addr_count(4),
      I1 => addr_count(2),
      I2 => addr_count(0),
      I3 => addr_count(1),
      I4 => addr_count(3),
      I5 => addr_count(5),
      O => plusOp(5)
    );
\addr_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \addr_count[7]_i_2_n_0\,
      I1 => addr_count(6),
      O => plusOp(6)
    );
\addr_count[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => addr_count(6),
      I1 => \addr_count[7]_i_2_n_0\,
      O => plusOp(7)
    );
\addr_count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => addr_count(4),
      I1 => addr_count(2),
      I2 => addr_count(0),
      I3 => addr_count(1),
      I4 => addr_count(3),
      I5 => addr_count(5),
      O => \addr_count[7]_i_2_n_0\
    );
\addr_count_4_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => addr_count(0),
      Q => \addr_count_4_reg_n_0_[2]\
    );
\addr_count_4_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => addr_count(1),
      Q => \addr_count_4_reg_n_0_[3]\
    );
\addr_count_4_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => addr_count(2),
      Q => \addr_count_4_reg_n_0_[4]\
    );
\addr_count_4_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => addr_count(3),
      Q => \addr_count_4_reg_n_0_[5]\
    );
\addr_count_4_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => addr_count(4),
      Q => \addr_count_4_reg_n_0_[6]\
    );
\addr_count_4_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => addr_count(5),
      Q => \addr_count_4_reg_n_0_[7]\
    );
\addr_count_4_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => addr_count(6),
      Q => \addr_count_4_reg_n_0_[8]\
    );
\addr_count_4_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => addr_count(7),
      Q => \addr_count_4_reg_n_0_[9]\
    );
\addr_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => plusOp(0),
      Q => addr_count(0)
    );
\addr_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => plusOp(1),
      Q => addr_count(1)
    );
\addr_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => plusOp(2),
      Q => addr_count(2)
    );
\addr_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => plusOp(3),
      Q => addr_count(3)
    );
\addr_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => plusOp(4),
      Q => addr_count(4)
    );
\addr_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => plusOp(5),
      Q => addr_count(5)
    );
\addr_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => plusOp(6),
      Q => addr_count(6)
    );
\addr_count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => plusOp(7),
      Q => addr_count(7)
    );
\bram_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \addr_count_4_reg_n_0_[2]\,
      Q => bram_addr(0)
    );
\bram_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \addr_count_4_reg_n_0_[3]\,
      Q => bram_addr(1)
    );
\bram_addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \addr_count_4_reg_n_0_[4]\,
      Q => bram_addr(2)
    );
\bram_addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \addr_count_4_reg_n_0_[5]\,
      Q => bram_addr(3)
    );
\bram_addr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \addr_count_4_reg_n_0_[6]\,
      Q => bram_addr(4)
    );
\bram_addr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \addr_count_4_reg_n_0_[7]\,
      Q => bram_addr(5)
    );
\bram_addr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \addr_count_4_reg_n_0_[8]\,
      Q => bram_addr(6)
    );
\bram_addr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \addr_count_4_reg_n_0_[9]\,
      Q => bram_addr(7)
    );
\bram_data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \FSM_onehot_dac_state_reg_n_0_[1]\,
      I3 => addr_count(7),
      O => \bram_data[31]_i_1_n_0\
    );
\bram_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(0),
      Q => bram_data(0)
    );
\bram_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(10),
      Q => bram_data(10)
    );
\bram_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(11),
      Q => bram_data(11)
    );
\bram_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(12),
      Q => bram_data(12)
    );
\bram_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(13),
      Q => bram_data(13)
    );
\bram_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(14),
      Q => bram_data(14)
    );
\bram_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(15),
      Q => bram_data(15)
    );
\bram_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(16),
      Q => bram_data(16)
    );
\bram_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(17),
      Q => bram_data(17)
    );
\bram_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(18),
      Q => bram_data(18)
    );
\bram_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(19),
      Q => bram_data(19)
    );
\bram_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(1),
      Q => bram_data(1)
    );
\bram_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(20),
      Q => bram_data(20)
    );
\bram_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(21),
      Q => bram_data(21)
    );
\bram_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(22),
      Q => bram_data(22)
    );
\bram_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(23),
      Q => bram_data(23)
    );
\bram_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(24),
      Q => bram_data(24)
    );
\bram_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(25),
      Q => bram_data(25)
    );
\bram_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(26),
      Q => bram_data(26)
    );
\bram_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(27),
      Q => bram_data(27)
    );
\bram_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(28),
      Q => bram_data(28)
    );
\bram_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(29),
      Q => bram_data(29)
    );
\bram_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(2),
      Q => bram_data(2)
    );
\bram_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(30),
      Q => bram_data(30)
    );
\bram_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(31),
      Q => bram_data(31)
    );
\bram_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(3),
      Q => bram_data(3)
    );
\bram_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(4),
      Q => bram_data(4)
    );
\bram_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(5),
      Q => bram_data(5)
    );
\bram_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(6),
      Q => bram_data(6)
    );
\bram_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(7),
      Q => bram_data(7)
    );
\bram_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(8),
      Q => bram_data(8)
    );
\bram_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(9),
      Q => bram_data(9)
    );
bram_we_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDCC"
    )
        port map (
      I0 => \bram_data[31]_i_1_n_0\,
      I1 => \FSM_onehot_dac_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_dac_state_reg_n_0_[0]\,
      I3 => \^bram_we\,
      O => bram_we_i_1_n_0
    );
bram_we_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => counting_flag_i_2_n_0,
      D => bram_we_i_1_n_0,
      Q => \^bram_we\
    );
\counter[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_dac_state_reg_n_0_[1]\,
      I1 => pulse_in_r1,
      I2 => pulse_in_r2,
      O => \counter[31]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(0),
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(10),
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(11),
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(12),
      Q => counter(12)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(13),
      Q => counter(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(14),
      Q => counter(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(15),
      Q => counter(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(16),
      Q => counter(16)
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(17),
      Q => counter(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(18),
      Q => counter(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(19),
      Q => counter(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(1),
      Q => counter(1)
    );
\counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(20),
      Q => counter(20)
    );
\counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(21),
      Q => counter(21)
    );
\counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(22),
      Q => counter(22)
    );
\counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(23),
      Q => counter(23)
    );
\counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(24),
      Q => counter(24)
    );
\counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(25),
      Q => counter(25)
    );
\counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(26),
      Q => counter(26)
    );
\counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(27),
      Q => counter(27)
    );
\counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(28),
      Q => counter(28)
    );
\counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(29),
      Q => counter(29)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(2),
      Q => counter(2)
    );
\counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(30),
      Q => counter(30)
    );
\counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(31),
      Q => counter(31)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(4),
      Q => counter(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(7),
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(8),
      Q => counter(8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(9),
      Q => counter(9)
    );
counting_flag_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => \FSM_onehot_dac_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_dac_state_reg_n_0_[1]\,
      I2 => \^counting_flag\,
      O => counting_flag_i_1_n_0
    );
counting_flag_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => counting_flag_i_2_n_0
    );
counting_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => counting_flag_i_2_n_0,
      D => counting_flag_i_1_n_0,
      Q => \^counting_flag\
    );
\dac_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => dac_counter(0),
      O => \dac_counter[0]_i_1_n_0\
    );
\dac_counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__0_n_14\,
      O => \dac_counter[10]_i_1_n_0\
    );
\dac_counter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__0_n_13\,
      O => \dac_counter[11]_i_1_n_0\
    );
\dac_counter[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__0_n_12\,
      O => \dac_counter[12]_i_1_n_0\
    );
\dac_counter[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__0_n_11\,
      O => \dac_counter[13]_i_1_n_0\
    );
\dac_counter[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__0_n_10\,
      O => \dac_counter[14]_i_1_n_0\
    );
\dac_counter[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__0_n_9\,
      O => \dac_counter[15]_i_1_n_0\
    );
\dac_counter[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__0_n_8\,
      O => \dac_counter[16]_i_1_n_0\
    );
\dac_counter[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__1_n_15\,
      O => \dac_counter[17]_i_1_n_0\
    );
\dac_counter[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__1_n_14\,
      O => \dac_counter[18]_i_1_n_0\
    );
\dac_counter[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__1_n_13\,
      O => \dac_counter[19]_i_1_n_0\
    );
\dac_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry_n_15\,
      O => \dac_counter[1]_i_1_n_0\
    );
\dac_counter[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__1_n_12\,
      O => \dac_counter[20]_i_1_n_0\
    );
\dac_counter[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__1_n_11\,
      O => \dac_counter[21]_i_1_n_0\
    );
\dac_counter[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__1_n_10\,
      O => \dac_counter[22]_i_1_n_0\
    );
\dac_counter[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__1_n_9\,
      O => \dac_counter[23]_i_1_n_0\
    );
\dac_counter[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__1_n_8\,
      O => \dac_counter[24]_i_1_n_0\
    );
\dac_counter[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__2_n_15\,
      O => \dac_counter[25]_i_1_n_0\
    );
\dac_counter[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__2_n_14\,
      O => \dac_counter[26]_i_1_n_0\
    );
\dac_counter[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__2_n_13\,
      O => \dac_counter[27]_i_1_n_0\
    );
\dac_counter[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__2_n_12\,
      O => \dac_counter[28]_i_1_n_0\
    );
\dac_counter[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__2_n_11\,
      O => \dac_counter[29]_i_1_n_0\
    );
\dac_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry_n_14\,
      O => \dac_counter[2]_i_1_n_0\
    );
\dac_counter[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__2_n_10\,
      O => \dac_counter[30]_i_1_n_0\
    );
\dac_counter[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__2_n_9\,
      O => \dac_counter[31]_i_1_n_0\
    );
\dac_counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry_n_13\,
      O => \dac_counter[3]_i_1_n_0\
    );
\dac_counter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry_n_12\,
      O => \dac_counter[4]_i_1_n_0\
    );
\dac_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry_n_11\,
      O => \dac_counter[5]_i_1_n_0\
    );
\dac_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry_n_10\,
      O => \dac_counter[6]_i_1_n_0\
    );
\dac_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry_n_9\,
      O => \dac_counter[7]_i_1_n_0\
    );
\dac_counter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry_n_8\,
      O => \dac_counter[8]_i_1_n_0\
    );
\dac_counter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => \plusOp_inferred__0/i__carry__0_n_15\,
      O => \dac_counter[9]_i_1_n_0\
    );
\dac_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[0]_i_1_n_0\,
      Q => dac_counter(0)
    );
\dac_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[10]_i_1_n_0\,
      Q => dac_counter(10)
    );
\dac_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[11]_i_1_n_0\,
      Q => dac_counter(11)
    );
\dac_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[12]_i_1_n_0\,
      Q => dac_counter(12)
    );
\dac_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[13]_i_1_n_0\,
      Q => dac_counter(13)
    );
\dac_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[14]_i_1_n_0\,
      Q => dac_counter(14)
    );
\dac_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[15]_i_1_n_0\,
      Q => dac_counter(15)
    );
\dac_counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[16]_i_1_n_0\,
      Q => dac_counter(16)
    );
\dac_counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[17]_i_1_n_0\,
      Q => dac_counter(17)
    );
\dac_counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[18]_i_1_n_0\,
      Q => dac_counter(18)
    );
\dac_counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[19]_i_1_n_0\,
      Q => dac_counter(19)
    );
\dac_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[1]_i_1_n_0\,
      Q => dac_counter(1)
    );
\dac_counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[20]_i_1_n_0\,
      Q => dac_counter(20)
    );
\dac_counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[21]_i_1_n_0\,
      Q => dac_counter(21)
    );
\dac_counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[22]_i_1_n_0\,
      Q => dac_counter(22)
    );
\dac_counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[23]_i_1_n_0\,
      Q => dac_counter(23)
    );
\dac_counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[24]_i_1_n_0\,
      Q => dac_counter(24)
    );
\dac_counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[25]_i_1_n_0\,
      Q => dac_counter(25)
    );
\dac_counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[26]_i_1_n_0\,
      Q => dac_counter(26)
    );
\dac_counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[27]_i_1_n_0\,
      Q => dac_counter(27)
    );
\dac_counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[28]_i_1_n_0\,
      Q => dac_counter(28)
    );
\dac_counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[29]_i_1_n_0\,
      Q => dac_counter(29)
    );
\dac_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[2]_i_1_n_0\,
      Q => dac_counter(2)
    );
\dac_counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[30]_i_1_n_0\,
      Q => dac_counter(30)
    );
\dac_counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[31]_i_1_n_0\,
      Q => dac_counter(31)
    );
\dac_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[3]_i_1_n_0\,
      Q => dac_counter(3)
    );
\dac_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[4]_i_1_n_0\,
      Q => dac_counter(4)
    );
\dac_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[5]_i_1_n_0\,
      Q => dac_counter(5)
    );
\dac_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[6]_i_1_n_0\,
      Q => dac_counter(6)
    );
\dac_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[7]_i_1_n_0\,
      Q => dac_counter(7)
    );
\dac_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[8]_i_1_n_0\,
      Q => dac_counter(8)
    );
\dac_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_dac_state_reg_n_0_[1]\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter[9]_i_1_n_0\,
      Q => dac_counter(9)
    );
\debug[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_dac_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_dac_state_reg_n_0_[2]\,
      O => \debug[0]_i_1_n_0\
    );
\debug[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_dac_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_dac_state_reg_n_0_[2]\,
      O => \debug[1]_i_1_n_0\
    );
\debug_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => counting_flag_i_2_n_0,
      D => \debug[0]_i_1_n_0\,
      Q => debug(0)
    );
\debug_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => counting_flag_i_2_n_0,
      D => \debug[1]_i_1_n_0\,
      Q => debug(1)
    );
\plusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => dac_counter(0),
      CI_TOP => '0',
      CO(7) => \plusOp_inferred__0/i__carry_n_0\,
      CO(6) => \plusOp_inferred__0/i__carry_n_1\,
      CO(5) => \plusOp_inferred__0/i__carry_n_2\,
      CO(4) => \plusOp_inferred__0/i__carry_n_3\,
      CO(3) => \plusOp_inferred__0/i__carry_n_4\,
      CO(2) => \plusOp_inferred__0/i__carry_n_5\,
      CO(1) => \plusOp_inferred__0/i__carry_n_6\,
      CO(0) => \plusOp_inferred__0/i__carry_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \plusOp_inferred__0/i__carry_n_8\,
      O(6) => \plusOp_inferred__0/i__carry_n_9\,
      O(5) => \plusOp_inferred__0/i__carry_n_10\,
      O(4) => \plusOp_inferred__0/i__carry_n_11\,
      O(3) => \plusOp_inferred__0/i__carry_n_12\,
      O(2) => \plusOp_inferred__0/i__carry_n_13\,
      O(1) => \plusOp_inferred__0/i__carry_n_14\,
      O(0) => \plusOp_inferred__0/i__carry_n_15\,
      S(7 downto 0) => dac_counter(8 downto 1)
    );
\plusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp_inferred__0/i__carry_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(6) => \plusOp_inferred__0/i__carry__0_n_1\,
      CO(5) => \plusOp_inferred__0/i__carry__0_n_2\,
      CO(4) => \plusOp_inferred__0/i__carry__0_n_3\,
      CO(3) => \plusOp_inferred__0/i__carry__0_n_4\,
      CO(2) => \plusOp_inferred__0/i__carry__0_n_5\,
      CO(1) => \plusOp_inferred__0/i__carry__0_n_6\,
      CO(0) => \plusOp_inferred__0/i__carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \plusOp_inferred__0/i__carry__0_n_8\,
      O(6) => \plusOp_inferred__0/i__carry__0_n_9\,
      O(5) => \plusOp_inferred__0/i__carry__0_n_10\,
      O(4) => \plusOp_inferred__0/i__carry__0_n_11\,
      O(3) => \plusOp_inferred__0/i__carry__0_n_12\,
      O(2) => \plusOp_inferred__0/i__carry__0_n_13\,
      O(1) => \plusOp_inferred__0/i__carry__0_n_14\,
      O(0) => \plusOp_inferred__0/i__carry__0_n_15\,
      S(7 downto 0) => dac_counter(16 downto 9)
    );
\plusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp_inferred__0/i__carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp_inferred__0/i__carry__1_n_0\,
      CO(6) => \plusOp_inferred__0/i__carry__1_n_1\,
      CO(5) => \plusOp_inferred__0/i__carry__1_n_2\,
      CO(4) => \plusOp_inferred__0/i__carry__1_n_3\,
      CO(3) => \plusOp_inferred__0/i__carry__1_n_4\,
      CO(2) => \plusOp_inferred__0/i__carry__1_n_5\,
      CO(1) => \plusOp_inferred__0/i__carry__1_n_6\,
      CO(0) => \plusOp_inferred__0/i__carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \plusOp_inferred__0/i__carry__1_n_8\,
      O(6) => \plusOp_inferred__0/i__carry__1_n_9\,
      O(5) => \plusOp_inferred__0/i__carry__1_n_10\,
      O(4) => \plusOp_inferred__0/i__carry__1_n_11\,
      O(3) => \plusOp_inferred__0/i__carry__1_n_12\,
      O(2) => \plusOp_inferred__0/i__carry__1_n_13\,
      O(1) => \plusOp_inferred__0/i__carry__1_n_14\,
      O(0) => \plusOp_inferred__0/i__carry__1_n_15\,
      S(7 downto 0) => dac_counter(24 downto 17)
    );
\plusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp_inferred__0/i__carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_plusOp_inferred__0/i__carry__2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \plusOp_inferred__0/i__carry__2_n_2\,
      CO(4) => \plusOp_inferred__0/i__carry__2_n_3\,
      CO(3) => \plusOp_inferred__0/i__carry__2_n_4\,
      CO(2) => \plusOp_inferred__0/i__carry__2_n_5\,
      CO(1) => \plusOp_inferred__0/i__carry__2_n_6\,
      CO(0) => \plusOp_inferred__0/i__carry__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_plusOp_inferred__0/i__carry__2_O_UNCONNECTED\(7),
      O(6) => \plusOp_inferred__0/i__carry__2_n_9\,
      O(5) => \plusOp_inferred__0/i__carry__2_n_10\,
      O(4) => \plusOp_inferred__0/i__carry__2_n_11\,
      O(3) => \plusOp_inferred__0/i__carry__2_n_12\,
      O(2) => \plusOp_inferred__0/i__carry__2_n_13\,
      O(1) => \plusOp_inferred__0/i__carry__2_n_14\,
      O(0) => \plusOp_inferred__0/i__carry__2_n_15\,
      S(7) => '0',
      S(6 downto 0) => dac_counter(31 downto 25)
    );
pulse_in_r1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst_n,
      D => pulse_in,
      Q => pulse_in_r1,
      R => '0'
    );
pulse_in_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst_n,
      D => pulse_in_r1,
      Q => pulse_in_r2,
      R => '0'
    );
sync_in_r1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => counting_flag_i_2_n_0,
      D => sync_in,
      Q => sync_in_r1
    );
sync_in_r2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => counting_flag_i_2_n_0,
      D => sync_in_r1,
      Q => sync_in_r2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    sync_in : in STD_LOGIC;
    pulse_in : in STD_LOGIC;
    control : in STD_LOGIC_VECTOR ( 31 downto 0 );
    counting_flag : out STD_LOGIC;
    counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_we : out STD_LOGIC;
    debug : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "adc_tech_dac_cal_0_0,dac_cal,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dac_cal,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr\ : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \^debug\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN adc_tech_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute x_interface_parameter of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  bram_addr(15) <= \<const0>\;
  bram_addr(14) <= \<const0>\;
  bram_addr(13) <= \<const0>\;
  bram_addr(12) <= \<const0>\;
  bram_addr(11) <= \<const0>\;
  bram_addr(10) <= \<const0>\;
  bram_addr(9 downto 2) <= \^bram_addr\(9 downto 2);
  bram_addr(1) <= \<const0>\;
  bram_addr(0) <= \<const0>\;
  debug(2) <= \<const0>\;
  debug(1 downto 0) <= \^debug\(1 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_cal
     port map (
      bram_addr(7 downto 0) => \^bram_addr\(9 downto 2),
      bram_data(31 downto 0) => bram_data(31 downto 0),
      bram_we => bram_we,
      clk => clk,
      control(31 downto 0) => control(31 downto 0),
      counter(31 downto 0) => counter(31 downto 0),
      counting_flag => counting_flag,
      debug(1 downto 0) => \^debug\(1 downto 0),
      pulse_in => pulse_in,
      rst_n => rst_n,
      sync_in => sync_in
    );
end STRUCTURE;

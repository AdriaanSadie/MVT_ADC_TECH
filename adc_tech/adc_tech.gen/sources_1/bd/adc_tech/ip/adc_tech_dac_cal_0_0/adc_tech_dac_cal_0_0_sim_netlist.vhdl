-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Oct 23 14:31:47 2025
-- Host        : ZA-WASADIE1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/work/Technology/Vivado/MVT_ADC_TECH/adc_tech/adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_dac_cal_0_0/adc_tech_dac_cal_0_0_sim_netlist.vhdl
-- Design      : adc_tech_dac_cal_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adc_tech_dac_cal_0_0_dac_cal is
  port (
    counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    debug : out STD_LOGIC_VECTOR ( 2 downto 0 );
    counting_flag : out STD_LOGIC;
    bram_we : out STD_LOGIC;
    control : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pulse_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    sync_in : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adc_tech_dac_cal_0_0_dac_cal : entity is "dac_cal";
end adc_tech_dac_cal_0_0_dac_cal;

architecture STRUCTURE of adc_tech_dac_cal_0_0_dac_cal is
  signal \FSM_sequential_dac_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_dac_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_dac_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_dac_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_dac_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_sequential_dac_state_reg_n_0_[1]\ : STD_LOGIC;
  signal addr_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \addr_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \addr_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \addr_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \addr_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr_count[7]_i_2_n_0\ : STD_LOGIC;
  signal addr_count_4 : STD_LOGIC;
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
  signal dac_bit_i : STD_LOGIC;
  signal dac_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \dac_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[19]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[20]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[21]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[22]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[23]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[24]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[25]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[26]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[27]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[28]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[29]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[30]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[31]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \dac_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal dac_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dac_state011_out : STD_LOGIC;
  signal \dac_state0__1\ : STD_LOGIC;
  signal dac_state14_out : STD_LOGIC;
  signal dac_state18_out : STD_LOGIC;
  signal \debug[0]_i_1_n_0\ : STD_LOGIC;
  signal \debug[1]_i_1_n_0\ : STD_LOGIC;
  signal \debug[2]_i_1_n_0\ : STD_LOGIC;
  signal delay_counter : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \delay_counter[19]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[19]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal in12 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal p_0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_carry__1_n_7\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_4 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_7\ : STD_LOGIC;
  signal pulse_in_r1 : STD_LOGIC;
  signal pulse_in_r1_i_4_n_0 : STD_LOGIC;
  signal pulse_in_r1_i_5_n_0 : STD_LOGIC;
  signal pulse_in_r1_i_6_n_0 : STD_LOGIC;
  signal pulse_in_r1_i_7_n_0 : STD_LOGIC;
  signal pulse_in_r1_reg_i_2_n_0 : STD_LOGIC;
  signal pulse_in_r1_reg_i_3_n_0 : STD_LOGIC;
  signal pulse_in_r2 : STD_LOGIC;
  signal sync_in_r1 : STD_LOGIC;
  signal sync_in_r2 : STD_LOGIC;
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_plusOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_plusOp_inferred__1/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_plusOp_inferred__1/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_dac_state_reg[0]\ : label is "dac_s_count:01,dac_s_debounce:11,dac_s_idle:00,dac_s_write:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_dac_state_reg[1]\ : label is "dac_s_count:01,dac_s_debounce:11,dac_s_idle:00,dac_s_write:10";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr_count[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \addr_count[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \addr_count[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \addr_count[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \addr_count[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \addr_count[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of counting_flag_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \debug[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \debug[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \debug[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \delay_counter[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \delay_counter[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \delay_counter[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \delay_counter[12]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \delay_counter[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \delay_counter[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \delay_counter[15]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \delay_counter[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \delay_counter[17]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \delay_counter[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \delay_counter[19]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \delay_counter[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \delay_counter[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \delay_counter[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \delay_counter[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \delay_counter[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \delay_counter[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \delay_counter[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \delay_counter[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \delay_counter[9]_i_1\ : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__2\ : label is 35;
begin
  bram_we <= \^bram_we\;
  counting_flag <= \^counting_flag\;
\FSM_sequential_dac_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F04F40"
    )
        port map (
      I0 => dac_state18_out,
      I1 => dac_state14_out,
      I2 => \FSM_sequential_dac_state_reg_n_0_[0]\,
      I3 => dac_state011_out,
      I4 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      O => dac_state(0)
    );
\FSM_sequential_dac_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222222222220"
    )
        port map (
      I0 => sync_in_r1,
      I1 => sync_in_r2,
      I2 => control(3),
      I3 => control(2),
      I4 => control(0),
      I5 => control(1),
      O => dac_state011_out
    );
\FSM_sequential_dac_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFFFEFFFFFFFF"
    )
        port map (
      I0 => dac_state14_out,
      I1 => \dac_state0__1\,
      I2 => dac_state18_out,
      I3 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I4 => p_0_in,
      I5 => \FSM_sequential_dac_state_reg_n_0_[0]\,
      O => \FSM_sequential_dac_state[1]_i_1_n_0\
    );
\FSM_sequential_dac_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04004444"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \FSM_sequential_dac_state_reg_n_0_[0]\,
      I2 => dac_state18_out,
      I3 => dac_state14_out,
      I4 => addr_count(7),
      O => dac_state(1)
    );
\FSM_sequential_dac_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1055FFFF"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[15]\,
      I1 => \FSM_sequential_dac_state[1]_i_4_n_0\,
      I2 => \FSM_sequential_dac_state[1]_i_5_n_0\,
      I3 => \delay_counter_reg_n_0_[14]\,
      I4 => \FSM_sequential_dac_state[1]_i_6_n_0\,
      O => p_0_in
    );
\FSM_sequential_dac_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[11]\,
      I1 => \delay_counter_reg_n_0_[10]\,
      I2 => \delay_counter_reg_n_0_[13]\,
      I3 => \delay_counter_reg_n_0_[12]\,
      O => \FSM_sequential_dac_state[1]_i_4_n_0\
    );
\FSM_sequential_dac_state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[6]\,
      I1 => \delay_counter_reg_n_0_[7]\,
      I2 => \delay_counter_reg_n_0_[8]\,
      I3 => \delay_counter_reg_n_0_[9]\,
      O => \FSM_sequential_dac_state[1]_i_5_n_0\
    );
\FSM_sequential_dac_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[17]\,
      I1 => \delay_counter_reg_n_0_[16]\,
      I2 => \delay_counter_reg_n_0_[19]\,
      I3 => \delay_counter_reg_n_0_[18]\,
      O => \FSM_sequential_dac_state[1]_i_6_n_0\
    );
\FSM_sequential_dac_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state[1]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_state(0),
      Q => \FSM_sequential_dac_state_reg_n_0_[0]\
    );
\FSM_sequential_dac_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state[1]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => dac_state(1),
      Q => \FSM_sequential_dac_state_reg_n_0_[1]\
    );
\addr_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_count(0),
      O => \addr_count[0]_i_1_n_0\
    );
\addr_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr_count(0),
      I1 => addr_count(1),
      O => \addr_count[1]_i_1_n_0\
    );
\addr_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => addr_count(0),
      I1 => addr_count(1),
      I2 => addr_count(2),
      O => \addr_count[2]_i_1_n_0\
    );
\addr_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => addr_count(1),
      I1 => addr_count(0),
      I2 => addr_count(2),
      I3 => addr_count(3),
      O => \addr_count[3]_i_1_n_0\
    );
\addr_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => addr_count(2),
      I1 => addr_count(0),
      I2 => addr_count(1),
      I3 => addr_count(3),
      I4 => addr_count(4),
      O => \addr_count[4]_i_1_n_0\
    );
\addr_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => addr_count(3),
      I1 => addr_count(1),
      I2 => addr_count(0),
      I3 => addr_count(2),
      I4 => addr_count(4),
      I5 => addr_count(5),
      O => \addr_count[5]_i_1_n_0\
    );
\addr_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_count[7]_i_2_n_0\,
      I1 => addr_count(6),
      O => \addr_count[6]_i_1_n_0\
    );
\addr_count[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \addr_count[7]_i_2_n_0\,
      I1 => addr_count(6),
      O => \addr_count[7]_i_1_n_0\
    );
\addr_count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => addr_count(5),
      I1 => addr_count(3),
      I2 => addr_count(1),
      I3 => addr_count(0),
      I4 => addr_count(2),
      I5 => addr_count(4),
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
      D => \addr_count[0]_i_1_n_0\,
      Q => addr_count(0)
    );
\addr_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \addr_count[1]_i_1_n_0\,
      Q => addr_count(1)
    );
\addr_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \addr_count[2]_i_1_n_0\,
      Q => addr_count(2)
    );
\addr_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \addr_count[3]_i_1_n_0\,
      Q => addr_count(3)
    );
\addr_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \addr_count[4]_i_1_n_0\,
      Q => addr_count(4)
    );
\addr_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \addr_count[5]_i_1_n_0\,
      Q => addr_count(5)
    );
\addr_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \addr_count[6]_i_1_n_0\,
      Q => addr_count(6)
    );
\addr_count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \addr_count[7]_i_1_n_0\,
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
\bram_data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004000440040"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \FSM_sequential_dac_state_reg_n_0_[0]\,
      I2 => dac_state18_out,
      I3 => addr_count(7),
      I4 => \dac_state0__1\,
      I5 => dac_state14_out,
      O => \bram_data[31]_i_1_n_0\
    );
\bram_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[0]\,
      Q => bram_data(0)
    );
\bram_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[10]\,
      Q => bram_data(10)
    );
\bram_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[11]\,
      Q => bram_data(11)
    );
\bram_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[12]\,
      Q => bram_data(12)
    );
\bram_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[13]\,
      Q => bram_data(13)
    );
\bram_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[14]\,
      Q => bram_data(14)
    );
\bram_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[15]\,
      Q => bram_data(15)
    );
\bram_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[16]\,
      Q => bram_data(16)
    );
\bram_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[17]\,
      Q => bram_data(17)
    );
\bram_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[18]\,
      Q => bram_data(18)
    );
\bram_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[19]\,
      Q => bram_data(19)
    );
\bram_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[1]\,
      Q => bram_data(1)
    );
\bram_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[20]\,
      Q => bram_data(20)
    );
\bram_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[21]\,
      Q => bram_data(21)
    );
\bram_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[22]\,
      Q => bram_data(22)
    );
\bram_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[23]\,
      Q => bram_data(23)
    );
\bram_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[24]\,
      Q => bram_data(24)
    );
\bram_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[25]\,
      Q => bram_data(25)
    );
\bram_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[26]\,
      Q => bram_data(26)
    );
\bram_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[27]\,
      Q => bram_data(27)
    );
\bram_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[28]\,
      Q => bram_data(28)
    );
\bram_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[29]\,
      Q => bram_data(29)
    );
\bram_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[2]\,
      Q => bram_data(2)
    );
\bram_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[30]\,
      Q => bram_data(30)
    );
\bram_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[31]\,
      Q => bram_data(31)
    );
\bram_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[3]\,
      Q => bram_data(3)
    );
\bram_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[4]\,
      Q => bram_data(4)
    );
\bram_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[5]\,
      Q => bram_data(5)
    );
\bram_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[6]\,
      Q => bram_data(6)
    );
\bram_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[7]\,
      Q => bram_data(7)
    );
\bram_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[8]\,
      Q => bram_data(8)
    );
\bram_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[9]\,
      Q => bram_data(9)
    );
bram_we_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F250"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[0]\,
      I1 => addr_count_4,
      I2 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I3 => \^bram_we\,
      O => bram_we_i_1_n_0
    );
bram_we_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2232"
    )
        port map (
      I0 => dac_state18_out,
      I1 => addr_count(7),
      I2 => \dac_state0__1\,
      I3 => dac_state14_out,
      O => addr_count_4
    );
bram_we_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => counting_flag_i_2_n_0,
      D => bram_we_i_1_n_0,
      Q => \^bram_we\
    );
\counter[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444040"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \FSM_sequential_dac_state_reg_n_0_[0]\,
      I2 => dac_state18_out,
      I3 => dac_state14_out,
      I4 => \dac_state0__1\,
      O => \counter[31]_i_1_n_0\
    );
\counter[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => control(3),
      I3 => control(1),
      I4 => control(2),
      I5 => control(0),
      O => dac_state18_out
    );
\counter[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      I2 => control(3),
      I3 => control(2),
      I4 => control(0),
      I5 => control(1),
      O => dac_state14_out
    );
\counter[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => control(1),
      I2 => control(0),
      I3 => control(2),
      I4 => control(3),
      I5 => pulse_in_r1,
      O => \dac_state0__1\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[0]\,
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[10]\,
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[11]\,
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[12]\,
      Q => counter(12)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[13]\,
      Q => counter(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[14]\,
      Q => counter(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[15]\,
      Q => counter(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[16]\,
      Q => counter(16)
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[17]\,
      Q => counter(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[18]\,
      Q => counter(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[19]\,
      Q => counter(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[1]\,
      Q => counter(1)
    );
\counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[20]\,
      Q => counter(20)
    );
\counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[21]\,
      Q => counter(21)
    );
\counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[22]\,
      Q => counter(22)
    );
\counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[23]\,
      Q => counter(23)
    );
\counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[24]\,
      Q => counter(24)
    );
\counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[25]\,
      Q => counter(25)
    );
\counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[26]\,
      Q => counter(26)
    );
\counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[27]\,
      Q => counter(27)
    );
\counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[28]\,
      Q => counter(28)
    );
\counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[29]\,
      Q => counter(29)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[2]\,
      Q => counter(2)
    );
\counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[30]\,
      Q => counter(30)
    );
\counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[31]\,
      Q => counter(31)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[3]\,
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[4]\,
      Q => counter(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[5]\,
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[6]\,
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[7]\,
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[8]\,
      Q => counter(8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => \dac_counter_reg_n_0_[9]\,
      Q => counter(9)
    );
counting_flag_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^counting_flag\,
      I1 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I2 => \FSM_sequential_dac_state_reg_n_0_[0]\,
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
\dac_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A0F0B"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => \dac_counter_reg_n_0_[0]\,
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(0)
    );
\dac_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(10),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(10)
    );
\dac_counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(11),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(11)
    );
\dac_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(12),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(12)
    );
\dac_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(13),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(13)
    );
\dac_counter[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(14),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(14)
    );
\dac_counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(15),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(15)
    );
\dac_counter[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(16),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(16)
    );
\dac_counter[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(17),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(17)
    );
\dac_counter[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(18),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(18)
    );
\dac_counter[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(19),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(19)
    );
\dac_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(1),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(1)
    );
\dac_counter[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(20),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(20)
    );
\dac_counter[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(21),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(21)
    );
\dac_counter[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(22),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(22)
    );
\dac_counter[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(23),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(23)
    );
\dac_counter[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(24),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(24)
    );
\dac_counter[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(25),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(25)
    );
\dac_counter[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(26),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(26)
    );
\dac_counter[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(27),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(27)
    );
\dac_counter[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(28),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(28)
    );
\dac_counter[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(29),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(29)
    );
\dac_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(2),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(2)
    );
\dac_counter[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(30),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(30)
    );
\dac_counter[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(31),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(31)
    );
\dac_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(3),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(3)
    );
\dac_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(4),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(4)
    );
\dac_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(5),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(5)
    );
\dac_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(6),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(6)
    );
\dac_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(7),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(7)
    );
\dac_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(8),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(8)
    );
\dac_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0F0B0"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \dac_state0__1\,
      I2 => in12(9),
      I3 => dac_state14_out,
      I4 => dac_state18_out,
      O => dac_counter(9)
    );
\dac_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(0),
      Q => \dac_counter_reg_n_0_[0]\
    );
\dac_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(10),
      Q => \dac_counter_reg_n_0_[10]\
    );
\dac_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(11),
      Q => \dac_counter_reg_n_0_[11]\
    );
\dac_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(12),
      Q => \dac_counter_reg_n_0_[12]\
    );
\dac_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(13),
      Q => \dac_counter_reg_n_0_[13]\
    );
\dac_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(14),
      Q => \dac_counter_reg_n_0_[14]\
    );
\dac_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(15),
      Q => \dac_counter_reg_n_0_[15]\
    );
\dac_counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(16),
      Q => \dac_counter_reg_n_0_[16]\
    );
\dac_counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(17),
      Q => \dac_counter_reg_n_0_[17]\
    );
\dac_counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(18),
      Q => \dac_counter_reg_n_0_[18]\
    );
\dac_counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(19),
      Q => \dac_counter_reg_n_0_[19]\
    );
\dac_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(1),
      Q => \dac_counter_reg_n_0_[1]\
    );
\dac_counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(20),
      Q => \dac_counter_reg_n_0_[20]\
    );
\dac_counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(21),
      Q => \dac_counter_reg_n_0_[21]\
    );
\dac_counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(22),
      Q => \dac_counter_reg_n_0_[22]\
    );
\dac_counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(23),
      Q => \dac_counter_reg_n_0_[23]\
    );
\dac_counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(24),
      Q => \dac_counter_reg_n_0_[24]\
    );
\dac_counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(25),
      Q => \dac_counter_reg_n_0_[25]\
    );
\dac_counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(26),
      Q => \dac_counter_reg_n_0_[26]\
    );
\dac_counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(27),
      Q => \dac_counter_reg_n_0_[27]\
    );
\dac_counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(28),
      Q => \dac_counter_reg_n_0_[28]\
    );
\dac_counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(29),
      Q => \dac_counter_reg_n_0_[29]\
    );
\dac_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(2),
      Q => \dac_counter_reg_n_0_[2]\
    );
\dac_counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(30),
      Q => \dac_counter_reg_n_0_[30]\
    );
\dac_counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(31),
      Q => \dac_counter_reg_n_0_[31]\
    );
\dac_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(3),
      Q => \dac_counter_reg_n_0_[3]\
    );
\dac_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(4),
      Q => \dac_counter_reg_n_0_[4]\
    );
\dac_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(5),
      Q => \dac_counter_reg_n_0_[5]\
    );
\dac_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(6),
      Q => \dac_counter_reg_n_0_[6]\
    );
\dac_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(7),
      Q => \dac_counter_reg_n_0_[7]\
    );
\dac_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(8),
      Q => \dac_counter_reg_n_0_[8]\
    );
\dac_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_dac_state_reg_n_0_[0]\,
      CLR => counting_flag_i_2_n_0,
      D => dac_counter(9),
      Q => \dac_counter_reg_n_0_[9]\
    );
\debug[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555555F7"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[0]\,
      I1 => \dac_state0__1\,
      I2 => dac_state14_out,
      I3 => dac_state18_out,
      I4 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      O => \debug[0]_i_1_n_0\
    );
\debug[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => dac_state14_out,
      I2 => dac_state18_out,
      I3 => \FSM_sequential_dac_state_reg_n_0_[0]\,
      O => \debug[1]_i_1_n_0\
    );
\debug[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => dac_state14_out,
      I2 => dac_state18_out,
      I3 => \FSM_sequential_dac_state_reg_n_0_[0]\,
      O => \debug[2]_i_1_n_0\
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
\debug_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => counting_flag_i_2_n_0,
      D => \debug[2]_i_1_n_0\,
      Q => debug(2)
    );
\delay_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => \delay_counter_reg_n_0_[0]\,
      I2 => p_0_in,
      O => delay_counter(0)
    );
\delay_counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(10),
      I2 => p_0_in,
      O => delay_counter(10)
    );
\delay_counter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(11),
      I2 => p_0_in,
      O => delay_counter(11)
    );
\delay_counter[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(12),
      I2 => p_0_in,
      O => delay_counter(12)
    );
\delay_counter[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(13),
      I2 => p_0_in,
      O => delay_counter(13)
    );
\delay_counter[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(14),
      I2 => p_0_in,
      O => delay_counter(14)
    );
\delay_counter[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(15),
      I2 => p_0_in,
      O => delay_counter(15)
    );
\delay_counter[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(16),
      I2 => p_0_in,
      O => delay_counter(16)
    );
\delay_counter[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(17),
      I2 => p_0_in,
      O => delay_counter(17)
    );
\delay_counter[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(18),
      I2 => p_0_in,
      O => delay_counter(18)
    );
\delay_counter[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[0]\,
      I1 => dac_state14_out,
      I2 => dac_state18_out,
      I3 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      O => \delay_counter[19]_i_1_n_0\
    );
\delay_counter[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(19),
      I2 => p_0_in,
      O => delay_counter(19)
    );
\delay_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(1),
      I2 => p_0_in,
      O => delay_counter(1)
    );
\delay_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(2),
      I2 => p_0_in,
      O => delay_counter(2)
    );
\delay_counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(3),
      I2 => p_0_in,
      O => delay_counter(3)
    );
\delay_counter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(4),
      I2 => p_0_in,
      O => delay_counter(4)
    );
\delay_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(5),
      I2 => p_0_in,
      O => delay_counter(5)
    );
\delay_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(6),
      I2 => p_0_in,
      O => delay_counter(6)
    );
\delay_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(7),
      I2 => p_0_in,
      O => delay_counter(7)
    );
\delay_counter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(8),
      I2 => p_0_in,
      O => delay_counter(8)
    );
\delay_counter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_dac_state_reg_n_0_[1]\,
      I1 => plusOp(9),
      I2 => p_0_in,
      O => delay_counter(9)
    );
\delay_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(0),
      Q => \delay_counter_reg_n_0_[0]\
    );
\delay_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(10),
      Q => \delay_counter_reg_n_0_[10]\
    );
\delay_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(11),
      Q => \delay_counter_reg_n_0_[11]\
    );
\delay_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(12),
      Q => \delay_counter_reg_n_0_[12]\
    );
\delay_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(13),
      Q => \delay_counter_reg_n_0_[13]\
    );
\delay_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(14),
      Q => \delay_counter_reg_n_0_[14]\
    );
\delay_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(15),
      Q => \delay_counter_reg_n_0_[15]\
    );
\delay_counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(16),
      Q => \delay_counter_reg_n_0_[16]\
    );
\delay_counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(17),
      Q => \delay_counter_reg_n_0_[17]\
    );
\delay_counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(18),
      Q => \delay_counter_reg_n_0_[18]\
    );
\delay_counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(19),
      Q => \delay_counter_reg_n_0_[19]\
    );
\delay_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(1),
      Q => \delay_counter_reg_n_0_[1]\
    );
\delay_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(2),
      Q => \delay_counter_reg_n_0_[2]\
    );
\delay_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(3),
      Q => \delay_counter_reg_n_0_[3]\
    );
\delay_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(4),
      Q => \delay_counter_reg_n_0_[4]\
    );
\delay_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(5),
      Q => \delay_counter_reg_n_0_[5]\
    );
\delay_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(6),
      Q => \delay_counter_reg_n_0_[6]\
    );
\delay_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(7),
      Q => \delay_counter_reg_n_0_[7]\
    );
\delay_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(8),
      Q => \delay_counter_reg_n_0_[8]\
    );
\delay_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_counter[19]_i_1_n_0\,
      CLR => counting_flag_i_2_n_0,
      D => delay_counter(9),
      Q => \delay_counter_reg_n_0_[9]\
    );
plusOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => \delay_counter_reg_n_0_[0]\,
      CI_TOP => '0',
      CO(7) => plusOp_carry_n_0,
      CO(6) => plusOp_carry_n_1,
      CO(5) => plusOp_carry_n_2,
      CO(4) => plusOp_carry_n_3,
      CO(3) => plusOp_carry_n_4,
      CO(2) => plusOp_carry_n_5,
      CO(1) => plusOp_carry_n_6,
      CO(0) => plusOp_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => plusOp(8 downto 1),
      S(7) => \delay_counter_reg_n_0_[8]\,
      S(6) => \delay_counter_reg_n_0_[7]\,
      S(5) => \delay_counter_reg_n_0_[6]\,
      S(4) => \delay_counter_reg_n_0_[5]\,
      S(3) => \delay_counter_reg_n_0_[4]\,
      S(2) => \delay_counter_reg_n_0_[3]\,
      S(1) => \delay_counter_reg_n_0_[2]\,
      S(0) => \delay_counter_reg_n_0_[1]\
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => plusOp_carry_n_0,
      CI_TOP => '0',
      CO(7) => \plusOp_carry__0_n_0\,
      CO(6) => \plusOp_carry__0_n_1\,
      CO(5) => \plusOp_carry__0_n_2\,
      CO(4) => \plusOp_carry__0_n_3\,
      CO(3) => \plusOp_carry__0_n_4\,
      CO(2) => \plusOp_carry__0_n_5\,
      CO(1) => \plusOp_carry__0_n_6\,
      CO(0) => \plusOp_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => plusOp(16 downto 9),
      S(7) => \delay_counter_reg_n_0_[16]\,
      S(6) => \delay_counter_reg_n_0_[15]\,
      S(5) => \delay_counter_reg_n_0_[14]\,
      S(4) => \delay_counter_reg_n_0_[13]\,
      S(3) => \delay_counter_reg_n_0_[12]\,
      S(2) => \delay_counter_reg_n_0_[11]\,
      S(1) => \delay_counter_reg_n_0_[10]\,
      S(0) => \delay_counter_reg_n_0_[9]\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp_carry__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \plusOp_carry__1_n_6\,
      CO(0) => \plusOp_carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_plusOp_carry__1_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => plusOp(19 downto 17),
      S(7 downto 3) => B"00000",
      S(2) => \delay_counter_reg_n_0_[19]\,
      S(1) => \delay_counter_reg_n_0_[18]\,
      S(0) => \delay_counter_reg_n_0_[17]\
    );
\plusOp_inferred__1/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => \dac_counter_reg_n_0_[0]\,
      CI_TOP => '0',
      CO(7) => \plusOp_inferred__1/i__carry_n_0\,
      CO(6) => \plusOp_inferred__1/i__carry_n_1\,
      CO(5) => \plusOp_inferred__1/i__carry_n_2\,
      CO(4) => \plusOp_inferred__1/i__carry_n_3\,
      CO(3) => \plusOp_inferred__1/i__carry_n_4\,
      CO(2) => \plusOp_inferred__1/i__carry_n_5\,
      CO(1) => \plusOp_inferred__1/i__carry_n_6\,
      CO(0) => \plusOp_inferred__1/i__carry_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in12(8 downto 1),
      S(7) => \dac_counter_reg_n_0_[8]\,
      S(6) => \dac_counter_reg_n_0_[7]\,
      S(5) => \dac_counter_reg_n_0_[6]\,
      S(4) => \dac_counter_reg_n_0_[5]\,
      S(3) => \dac_counter_reg_n_0_[4]\,
      S(2) => \dac_counter_reg_n_0_[3]\,
      S(1) => \dac_counter_reg_n_0_[2]\,
      S(0) => \dac_counter_reg_n_0_[1]\
    );
\plusOp_inferred__1/i__carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp_inferred__1/i__carry_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp_inferred__1/i__carry__0_n_0\,
      CO(6) => \plusOp_inferred__1/i__carry__0_n_1\,
      CO(5) => \plusOp_inferred__1/i__carry__0_n_2\,
      CO(4) => \plusOp_inferred__1/i__carry__0_n_3\,
      CO(3) => \plusOp_inferred__1/i__carry__0_n_4\,
      CO(2) => \plusOp_inferred__1/i__carry__0_n_5\,
      CO(1) => \plusOp_inferred__1/i__carry__0_n_6\,
      CO(0) => \plusOp_inferred__1/i__carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in12(16 downto 9),
      S(7) => \dac_counter_reg_n_0_[16]\,
      S(6) => \dac_counter_reg_n_0_[15]\,
      S(5) => \dac_counter_reg_n_0_[14]\,
      S(4) => \dac_counter_reg_n_0_[13]\,
      S(3) => \dac_counter_reg_n_0_[12]\,
      S(2) => \dac_counter_reg_n_0_[11]\,
      S(1) => \dac_counter_reg_n_0_[10]\,
      S(0) => \dac_counter_reg_n_0_[9]\
    );
\plusOp_inferred__1/i__carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp_inferred__1/i__carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp_inferred__1/i__carry__1_n_0\,
      CO(6) => \plusOp_inferred__1/i__carry__1_n_1\,
      CO(5) => \plusOp_inferred__1/i__carry__1_n_2\,
      CO(4) => \plusOp_inferred__1/i__carry__1_n_3\,
      CO(3) => \plusOp_inferred__1/i__carry__1_n_4\,
      CO(2) => \plusOp_inferred__1/i__carry__1_n_5\,
      CO(1) => \plusOp_inferred__1/i__carry__1_n_6\,
      CO(0) => \plusOp_inferred__1/i__carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in12(24 downto 17),
      S(7) => \dac_counter_reg_n_0_[24]\,
      S(6) => \dac_counter_reg_n_0_[23]\,
      S(5) => \dac_counter_reg_n_0_[22]\,
      S(4) => \dac_counter_reg_n_0_[21]\,
      S(3) => \dac_counter_reg_n_0_[20]\,
      S(2) => \dac_counter_reg_n_0_[19]\,
      S(1) => \dac_counter_reg_n_0_[18]\,
      S(0) => \dac_counter_reg_n_0_[17]\
    );
\plusOp_inferred__1/i__carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp_inferred__1/i__carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_plusOp_inferred__1/i__carry__2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \plusOp_inferred__1/i__carry__2_n_2\,
      CO(4) => \plusOp_inferred__1/i__carry__2_n_3\,
      CO(3) => \plusOp_inferred__1/i__carry__2_n_4\,
      CO(2) => \plusOp_inferred__1/i__carry__2_n_5\,
      CO(1) => \plusOp_inferred__1/i__carry__2_n_6\,
      CO(0) => \plusOp_inferred__1/i__carry__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_plusOp_inferred__1/i__carry__2_O_UNCONNECTED\(7),
      O(6 downto 0) => in12(31 downto 25),
      S(7) => '0',
      S(6) => \dac_counter_reg_n_0_[31]\,
      S(5) => \dac_counter_reg_n_0_[30]\,
      S(4) => \dac_counter_reg_n_0_[29]\,
      S(3) => \dac_counter_reg_n_0_[28]\,
      S(2) => \dac_counter_reg_n_0_[27]\,
      S(1) => \dac_counter_reg_n_0_[26]\,
      S(0) => \dac_counter_reg_n_0_[25]\
    );
pulse_in_r1_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pulse_in(3),
      I1 => pulse_in(2),
      I2 => control(5),
      I3 => pulse_in(1),
      I4 => control(4),
      I5 => pulse_in(0),
      O => pulse_in_r1_i_4_n_0
    );
pulse_in_r1_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pulse_in(7),
      I1 => pulse_in(6),
      I2 => control(5),
      I3 => pulse_in(5),
      I4 => control(4),
      I5 => pulse_in(4),
      O => pulse_in_r1_i_5_n_0
    );
pulse_in_r1_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pulse_in(11),
      I1 => pulse_in(10),
      I2 => control(5),
      I3 => pulse_in(9),
      I4 => control(4),
      I5 => pulse_in(8),
      O => pulse_in_r1_i_6_n_0
    );
pulse_in_r1_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pulse_in(15),
      I1 => pulse_in(14),
      I2 => control(5),
      I3 => pulse_in(13),
      I4 => control(4),
      I5 => pulse_in(12),
      O => pulse_in_r1_i_7_n_0
    );
pulse_in_r1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => counting_flag_i_2_n_0,
      D => dac_bit_i,
      Q => pulse_in_r1
    );
pulse_in_r1_reg_i_1: unisim.vcomponents.MUXF8
     port map (
      I0 => pulse_in_r1_reg_i_2_n_0,
      I1 => pulse_in_r1_reg_i_3_n_0,
      O => dac_bit_i,
      S => control(7)
    );
pulse_in_r1_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => pulse_in_r1_i_4_n_0,
      I1 => pulse_in_r1_i_5_n_0,
      O => pulse_in_r1_reg_i_2_n_0,
      S => control(6)
    );
pulse_in_r1_reg_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => pulse_in_r1_i_6_n_0,
      I1 => pulse_in_r1_i_7_n_0,
      O => pulse_in_r1_reg_i_3_n_0,
      S => control(6)
    );
pulse_in_r2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => counting_flag_i_2_n_0,
      D => pulse_in_r1,
      Q => pulse_in_r2
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
entity adc_tech_dac_cal_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    sync_in : in STD_LOGIC;
    pulse_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    control : in STD_LOGIC_VECTOR ( 31 downto 0 );
    counting_flag : out STD_LOGIC;
    counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_we : out STD_LOGIC;
    debug : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of adc_tech_dac_cal_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of adc_tech_dac_cal_0_0 : entity is "adc_tech_dac_cal_0_0,dac_cal,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of adc_tech_dac_cal_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of adc_tech_dac_cal_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of adc_tech_dac_cal_0_0 : entity is "dac_cal,Vivado 2020.2";
end adc_tech_dac_cal_0_0;

architecture STRUCTURE of adc_tech_dac_cal_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr\ : STD_LOGIC_VECTOR ( 9 downto 2 );
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
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.adc_tech_dac_cal_0_0_dac_cal
     port map (
      bram_addr(7 downto 0) => \^bram_addr\(9 downto 2),
      bram_data(31 downto 0) => bram_data(31 downto 0),
      bram_we => bram_we,
      clk => clk,
      control(7 downto 4) => control(19 downto 16),
      control(3 downto 0) => control(3 downto 0),
      counter(31 downto 0) => counter(31 downto 0),
      counting_flag => counting_flag,
      debug(2 downto 0) => debug(2 downto 0),
      pulse_in(15 downto 0) => pulse_in(15 downto 0),
      rst_n => rst_n,
      sync_in => sync_in
    );
end STRUCTURE;

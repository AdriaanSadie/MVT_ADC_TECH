-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Sep 25 13:50:57 2025
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
    debug : out STD_LOGIC_VECTOR ( 1 downto 0 );
    counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    control : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pulse_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    sync_in : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_cal;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_cal is
  signal \counter[31]_i_1_n_0\ : STD_LOGIC;
  signal counting_flag_i_2_n_0 : STD_LOGIC;
  signal counting_flag_i_3_n_0 : STD_LOGIC;
  signal counting_flag_i_4_n_0 : STD_LOGIC;
  signal counting_flag_i_5_n_0 : STD_LOGIC;
  signal counting_flag_i_6_n_0 : STD_LOGIC;
  signal counting_flag_i_7_n_0 : STD_LOGIC;
  signal \dac_counter[0]_i_10_n_0\ : STD_LOGIC;
  signal \dac_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \dac_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \dac_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \dac_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \dac_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \dac_counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \dac_counter[0]_i_8_n_0\ : STD_LOGIC;
  signal \dac_counter[0]_i_9_n_0\ : STD_LOGIC;
  signal \dac_counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \dac_counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \dac_counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \dac_counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \dac_counter[16]_i_6_n_0\ : STD_LOGIC;
  signal \dac_counter[16]_i_7_n_0\ : STD_LOGIC;
  signal \dac_counter[16]_i_8_n_0\ : STD_LOGIC;
  signal \dac_counter[16]_i_9_n_0\ : STD_LOGIC;
  signal \dac_counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \dac_counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \dac_counter[24]_i_4_n_0\ : STD_LOGIC;
  signal \dac_counter[24]_i_5_n_0\ : STD_LOGIC;
  signal \dac_counter[24]_i_6_n_0\ : STD_LOGIC;
  signal \dac_counter[24]_i_7_n_0\ : STD_LOGIC;
  signal \dac_counter[24]_i_8_n_0\ : STD_LOGIC;
  signal \dac_counter[24]_i_9_n_0\ : STD_LOGIC;
  signal \dac_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \dac_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \dac_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \dac_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal \dac_counter[8]_i_6_n_0\ : STD_LOGIC;
  signal \dac_counter[8]_i_7_n_0\ : STD_LOGIC;
  signal \dac_counter[8]_i_8_n_0\ : STD_LOGIC;
  signal \dac_counter[8]_i_9_n_0\ : STD_LOGIC;
  signal dac_counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \dac_counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \dac_counter_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \dac_counter_reg[0]_i_1_n_11\ : STD_LOGIC;
  signal \dac_counter_reg[0]_i_1_n_12\ : STD_LOGIC;
  signal \dac_counter_reg[0]_i_1_n_13\ : STD_LOGIC;
  signal \dac_counter_reg[0]_i_1_n_14\ : STD_LOGIC;
  signal \dac_counter_reg[0]_i_1_n_15\ : STD_LOGIC;
  signal \dac_counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \dac_counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \dac_counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \dac_counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \dac_counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \dac_counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \dac_counter_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \dac_counter_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \dac_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \dac_counter_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \dac_counter_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \dac_counter_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \dac_counter_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \dac_counter_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \dac_counter_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \dac_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \dac_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \dac_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \dac_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \dac_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \dac_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \dac_counter_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \dac_counter_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \dac_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \dac_counter_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \dac_counter_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \dac_counter_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \dac_counter_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \dac_counter_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \dac_counter_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \dac_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \dac_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \dac_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \dac_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \dac_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \dac_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \dac_counter_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \dac_counter_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \dac_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \dac_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \dac_counter_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \dac_counter_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \dac_counter_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \dac_counter_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \dac_counter_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \dac_counter_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \dac_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \dac_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \dac_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \dac_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \dac_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \dac_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \dac_counter_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \dac_counter_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal dac_state : STD_LOGIC;
  signal dac_state_i_1_n_0 : STD_LOGIC;
  signal \debug[0]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal pulse_in_r1 : STD_LOGIC;
  signal pulse_in_r1_i_2_n_0 : STD_LOGIC;
  signal pulse_in_r1_i_3_n_0 : STD_LOGIC;
  signal pulse_in_r1_i_4_n_0 : STD_LOGIC;
  signal pulse_in_r1_i_5_n_0 : STD_LOGIC;
  signal pulse_in_r1_i_6_n_0 : STD_LOGIC;
  signal pulse_in_r2 : STD_LOGIC;
  signal sync_in_r1 : STD_LOGIC;
  signal sync_in_r10 : STD_LOGIC;
  signal sync_in_r2 : STD_LOGIC;
  signal \NLW_dac_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \dac_counter_reg[0]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \dac_counter_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \dac_counter_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \dac_counter_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of dac_state_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \debug[0]_i_1\ : label is "soft_lutpair0";
begin
\counter[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => dac_state,
      I1 => pulse_in_r1,
      I2 => pulse_in_r2,
      O => \counter[31]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(0),
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(10),
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(11),
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(12),
      Q => counter(12)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(13),
      Q => counter(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(14),
      Q => counter(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(15),
      Q => counter(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(16),
      Q => counter(16)
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(17),
      Q => counter(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(18),
      Q => counter(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(19),
      Q => counter(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(1),
      Q => counter(1)
    );
\counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(20),
      Q => counter(20)
    );
\counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(21),
      Q => counter(21)
    );
\counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(22),
      Q => counter(22)
    );
\counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(23),
      Q => counter(23)
    );
\counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(24),
      Q => counter(24)
    );
\counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(25),
      Q => counter(25)
    );
\counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(26),
      Q => counter(26)
    );
\counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(27),
      Q => counter(27)
    );
\counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(28),
      Q => counter(28)
    );
\counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(29),
      Q => counter(29)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(2),
      Q => counter(2)
    );
\counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(30),
      Q => counter(30)
    );
\counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(31),
      Q => counter(31)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(4),
      Q => counter(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(7),
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(8),
      Q => counter(8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[31]_i_1_n_0\,
      CLR => sync_in_r10,
      D => dac_counter_reg(9),
      Q => counter(9)
    );
counting_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => counting_flag_i_2_n_0,
      I1 => counting_flag_i_3_n_0,
      I2 => counting_flag_i_4_n_0,
      I3 => counting_flag_i_5_n_0,
      I4 => counting_flag_i_6_n_0,
      I5 => counting_flag_i_7_n_0,
      O => sync_in_r10
    );
counting_flag_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => control(22),
      I1 => control(23),
      I2 => control(20),
      I3 => control(21),
      I4 => control(25),
      I5 => control(24),
      O => counting_flag_i_2_n_0
    );
counting_flag_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => control(28),
      I1 => control(29),
      I2 => control(26),
      I3 => control(27),
      I4 => control(31),
      I5 => control(30),
      O => counting_flag_i_3_n_0
    );
counting_flag_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => control(1),
      I1 => control(0),
      I2 => rst_n,
      O => counting_flag_i_4_n_0
    );
counting_flag_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => control(4),
      I1 => control(5),
      I2 => control(2),
      I3 => control(3),
      I4 => control(7),
      I5 => control(6),
      O => counting_flag_i_5_n_0
    );
counting_flag_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => control(16),
      I1 => control(17),
      I2 => control(14),
      I3 => control(15),
      I4 => control(19),
      I5 => control(18),
      O => counting_flag_i_6_n_0
    );
counting_flag_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => control(10),
      I1 => control(11),
      I2 => control(8),
      I3 => control(9),
      I4 => control(13),
      I5 => control(12),
      O => counting_flag_i_7_n_0
    );
counting_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sync_in_r10,
      D => dac_state,
      Q => debug(1)
    );
\dac_counter[0]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"51"
    )
        port map (
      I0 => dac_counter_reg(0),
      I1 => pulse_in_r1,
      I2 => pulse_in_r2,
      O => \dac_counter[0]_i_10_n_0\
    );
\dac_counter[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => pulse_in_r2,
      I1 => pulse_in_r1,
      O => \dac_counter[0]_i_2_n_0\
    );
\dac_counter[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(7),
      O => \dac_counter[0]_i_3_n_0\
    );
\dac_counter[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(6),
      O => \dac_counter[0]_i_4_n_0\
    );
\dac_counter[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(5),
      O => \dac_counter[0]_i_5_n_0\
    );
\dac_counter[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(4),
      O => \dac_counter[0]_i_6_n_0\
    );
\dac_counter[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(3),
      O => \dac_counter[0]_i_7_n_0\
    );
\dac_counter[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(2),
      O => \dac_counter[0]_i_8_n_0\
    );
\dac_counter[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(1),
      O => \dac_counter[0]_i_9_n_0\
    );
\dac_counter[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(23),
      O => \dac_counter[16]_i_2_n_0\
    );
\dac_counter[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(22),
      O => \dac_counter[16]_i_3_n_0\
    );
\dac_counter[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(21),
      O => \dac_counter[16]_i_4_n_0\
    );
\dac_counter[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(20),
      O => \dac_counter[16]_i_5_n_0\
    );
\dac_counter[16]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(19),
      O => \dac_counter[16]_i_6_n_0\
    );
\dac_counter[16]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(18),
      O => \dac_counter[16]_i_7_n_0\
    );
\dac_counter[16]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(17),
      O => \dac_counter[16]_i_8_n_0\
    );
\dac_counter[16]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(16),
      O => \dac_counter[16]_i_9_n_0\
    );
\dac_counter[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(31),
      O => \dac_counter[24]_i_2_n_0\
    );
\dac_counter[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(30),
      O => \dac_counter[24]_i_3_n_0\
    );
\dac_counter[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(29),
      O => \dac_counter[24]_i_4_n_0\
    );
\dac_counter[24]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(28),
      O => \dac_counter[24]_i_5_n_0\
    );
\dac_counter[24]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(27),
      O => \dac_counter[24]_i_6_n_0\
    );
\dac_counter[24]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(26),
      O => \dac_counter[24]_i_7_n_0\
    );
\dac_counter[24]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(25),
      O => \dac_counter[24]_i_8_n_0\
    );
\dac_counter[24]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(24),
      O => \dac_counter[24]_i_9_n_0\
    );
\dac_counter[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(15),
      O => \dac_counter[8]_i_2_n_0\
    );
\dac_counter[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(14),
      O => \dac_counter[8]_i_3_n_0\
    );
\dac_counter[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(13),
      O => \dac_counter[8]_i_4_n_0\
    );
\dac_counter[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(12),
      O => \dac_counter[8]_i_5_n_0\
    );
\dac_counter[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(11),
      O => \dac_counter[8]_i_6_n_0\
    );
\dac_counter[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(10),
      O => \dac_counter[8]_i_7_n_0\
    );
\dac_counter[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(9),
      O => \dac_counter[8]_i_8_n_0\
    );
\dac_counter[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => pulse_in_r1,
      I1 => pulse_in_r2,
      I2 => dac_counter_reg(8),
      O => \dac_counter[8]_i_9_n_0\
    );
\dac_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[0]_i_1_n_15\,
      Q => dac_counter_reg(0)
    );
\dac_counter_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \dac_counter_reg[0]_i_1_n_0\,
      CO(6) => \dac_counter_reg[0]_i_1_n_1\,
      CO(5) => \dac_counter_reg[0]_i_1_n_2\,
      CO(4) => \dac_counter_reg[0]_i_1_n_3\,
      CO(3) => \dac_counter_reg[0]_i_1_n_4\,
      CO(2) => \dac_counter_reg[0]_i_1_n_5\,
      CO(1) => \dac_counter_reg[0]_i_1_n_6\,
      CO(0) => \dac_counter_reg[0]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \dac_counter[0]_i_2_n_0\,
      O(7) => \dac_counter_reg[0]_i_1_n_8\,
      O(6) => \dac_counter_reg[0]_i_1_n_9\,
      O(5) => \dac_counter_reg[0]_i_1_n_10\,
      O(4) => \dac_counter_reg[0]_i_1_n_11\,
      O(3) => \dac_counter_reg[0]_i_1_n_12\,
      O(2) => \dac_counter_reg[0]_i_1_n_13\,
      O(1) => \dac_counter_reg[0]_i_1_n_14\,
      O(0) => \dac_counter_reg[0]_i_1_n_15\,
      S(7) => \dac_counter[0]_i_3_n_0\,
      S(6) => \dac_counter[0]_i_4_n_0\,
      S(5) => \dac_counter[0]_i_5_n_0\,
      S(4) => \dac_counter[0]_i_6_n_0\,
      S(3) => \dac_counter[0]_i_7_n_0\,
      S(2) => \dac_counter[0]_i_8_n_0\,
      S(1) => \dac_counter[0]_i_9_n_0\,
      S(0) => \dac_counter[0]_i_10_n_0\
    );
\dac_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[8]_i_1_n_13\,
      Q => dac_counter_reg(10)
    );
\dac_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[8]_i_1_n_12\,
      Q => dac_counter_reg(11)
    );
\dac_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[8]_i_1_n_11\,
      Q => dac_counter_reg(12)
    );
\dac_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[8]_i_1_n_10\,
      Q => dac_counter_reg(13)
    );
\dac_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[8]_i_1_n_9\,
      Q => dac_counter_reg(14)
    );
\dac_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[8]_i_1_n_8\,
      Q => dac_counter_reg(15)
    );
\dac_counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[16]_i_1_n_15\,
      Q => dac_counter_reg(16)
    );
\dac_counter_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \dac_counter_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \dac_counter_reg[16]_i_1_n_0\,
      CO(6) => \dac_counter_reg[16]_i_1_n_1\,
      CO(5) => \dac_counter_reg[16]_i_1_n_2\,
      CO(4) => \dac_counter_reg[16]_i_1_n_3\,
      CO(3) => \dac_counter_reg[16]_i_1_n_4\,
      CO(2) => \dac_counter_reg[16]_i_1_n_5\,
      CO(1) => \dac_counter_reg[16]_i_1_n_6\,
      CO(0) => \dac_counter_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \dac_counter_reg[16]_i_1_n_8\,
      O(6) => \dac_counter_reg[16]_i_1_n_9\,
      O(5) => \dac_counter_reg[16]_i_1_n_10\,
      O(4) => \dac_counter_reg[16]_i_1_n_11\,
      O(3) => \dac_counter_reg[16]_i_1_n_12\,
      O(2) => \dac_counter_reg[16]_i_1_n_13\,
      O(1) => \dac_counter_reg[16]_i_1_n_14\,
      O(0) => \dac_counter_reg[16]_i_1_n_15\,
      S(7) => \dac_counter[16]_i_2_n_0\,
      S(6) => \dac_counter[16]_i_3_n_0\,
      S(5) => \dac_counter[16]_i_4_n_0\,
      S(4) => \dac_counter[16]_i_5_n_0\,
      S(3) => \dac_counter[16]_i_6_n_0\,
      S(2) => \dac_counter[16]_i_7_n_0\,
      S(1) => \dac_counter[16]_i_8_n_0\,
      S(0) => \dac_counter[16]_i_9_n_0\
    );
\dac_counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[16]_i_1_n_14\,
      Q => dac_counter_reg(17)
    );
\dac_counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[16]_i_1_n_13\,
      Q => dac_counter_reg(18)
    );
\dac_counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[16]_i_1_n_12\,
      Q => dac_counter_reg(19)
    );
\dac_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[0]_i_1_n_14\,
      Q => dac_counter_reg(1)
    );
\dac_counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[16]_i_1_n_11\,
      Q => dac_counter_reg(20)
    );
\dac_counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[16]_i_1_n_10\,
      Q => dac_counter_reg(21)
    );
\dac_counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[16]_i_1_n_9\,
      Q => dac_counter_reg(22)
    );
\dac_counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[16]_i_1_n_8\,
      Q => dac_counter_reg(23)
    );
\dac_counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[24]_i_1_n_15\,
      Q => dac_counter_reg(24)
    );
\dac_counter_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \dac_counter_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_dac_counter_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \dac_counter_reg[24]_i_1_n_1\,
      CO(5) => \dac_counter_reg[24]_i_1_n_2\,
      CO(4) => \dac_counter_reg[24]_i_1_n_3\,
      CO(3) => \dac_counter_reg[24]_i_1_n_4\,
      CO(2) => \dac_counter_reg[24]_i_1_n_5\,
      CO(1) => \dac_counter_reg[24]_i_1_n_6\,
      CO(0) => \dac_counter_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \dac_counter_reg[24]_i_1_n_8\,
      O(6) => \dac_counter_reg[24]_i_1_n_9\,
      O(5) => \dac_counter_reg[24]_i_1_n_10\,
      O(4) => \dac_counter_reg[24]_i_1_n_11\,
      O(3) => \dac_counter_reg[24]_i_1_n_12\,
      O(2) => \dac_counter_reg[24]_i_1_n_13\,
      O(1) => \dac_counter_reg[24]_i_1_n_14\,
      O(0) => \dac_counter_reg[24]_i_1_n_15\,
      S(7) => \dac_counter[24]_i_2_n_0\,
      S(6) => \dac_counter[24]_i_3_n_0\,
      S(5) => \dac_counter[24]_i_4_n_0\,
      S(4) => \dac_counter[24]_i_5_n_0\,
      S(3) => \dac_counter[24]_i_6_n_0\,
      S(2) => \dac_counter[24]_i_7_n_0\,
      S(1) => \dac_counter[24]_i_8_n_0\,
      S(0) => \dac_counter[24]_i_9_n_0\
    );
\dac_counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[24]_i_1_n_14\,
      Q => dac_counter_reg(25)
    );
\dac_counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[24]_i_1_n_13\,
      Q => dac_counter_reg(26)
    );
\dac_counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[24]_i_1_n_12\,
      Q => dac_counter_reg(27)
    );
\dac_counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[24]_i_1_n_11\,
      Q => dac_counter_reg(28)
    );
\dac_counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[24]_i_1_n_10\,
      Q => dac_counter_reg(29)
    );
\dac_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[0]_i_1_n_13\,
      Q => dac_counter_reg(2)
    );
\dac_counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[24]_i_1_n_9\,
      Q => dac_counter_reg(30)
    );
\dac_counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[24]_i_1_n_8\,
      Q => dac_counter_reg(31)
    );
\dac_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[0]_i_1_n_12\,
      Q => dac_counter_reg(3)
    );
\dac_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[0]_i_1_n_11\,
      Q => dac_counter_reg(4)
    );
\dac_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[0]_i_1_n_10\,
      Q => dac_counter_reg(5)
    );
\dac_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[0]_i_1_n_9\,
      Q => dac_counter_reg(6)
    );
\dac_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[0]_i_1_n_8\,
      Q => dac_counter_reg(7)
    );
\dac_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[8]_i_1_n_15\,
      Q => dac_counter_reg(8)
    );
\dac_counter_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \dac_counter_reg[0]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \dac_counter_reg[8]_i_1_n_0\,
      CO(6) => \dac_counter_reg[8]_i_1_n_1\,
      CO(5) => \dac_counter_reg[8]_i_1_n_2\,
      CO(4) => \dac_counter_reg[8]_i_1_n_3\,
      CO(3) => \dac_counter_reg[8]_i_1_n_4\,
      CO(2) => \dac_counter_reg[8]_i_1_n_5\,
      CO(1) => \dac_counter_reg[8]_i_1_n_6\,
      CO(0) => \dac_counter_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \dac_counter_reg[8]_i_1_n_8\,
      O(6) => \dac_counter_reg[8]_i_1_n_9\,
      O(5) => \dac_counter_reg[8]_i_1_n_10\,
      O(4) => \dac_counter_reg[8]_i_1_n_11\,
      O(3) => \dac_counter_reg[8]_i_1_n_12\,
      O(2) => \dac_counter_reg[8]_i_1_n_13\,
      O(1) => \dac_counter_reg[8]_i_1_n_14\,
      O(0) => \dac_counter_reg[8]_i_1_n_15\,
      S(7) => \dac_counter[8]_i_2_n_0\,
      S(6) => \dac_counter[8]_i_3_n_0\,
      S(5) => \dac_counter[8]_i_4_n_0\,
      S(4) => \dac_counter[8]_i_5_n_0\,
      S(3) => \dac_counter[8]_i_6_n_0\,
      S(2) => \dac_counter[8]_i_7_n_0\,
      S(1) => \dac_counter[8]_i_8_n_0\,
      S(0) => \dac_counter[8]_i_9_n_0\
    );
\dac_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => dac_state,
      CLR => sync_in_r10,
      D => \dac_counter_reg[8]_i_1_n_14\,
      Q => dac_counter_reg(9)
    );
dac_state_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F4444"
    )
        port map (
      I0 => sync_in_r2,
      I1 => sync_in_r1,
      I2 => pulse_in_r1,
      I3 => pulse_in_r2,
      I4 => dac_state,
      O => dac_state_i_1_n_0
    );
dac_state_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sync_in_r10,
      D => dac_state_i_1_n_0,
      Q => dac_state
    );
\debug[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_state,
      O => \debug[0]_i_1_n_0\
    );
\debug_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sync_in_r10,
      D => \debug[0]_i_1_n_0\,
      Q => debug(0)
    );
pulse_in_r1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => pulse_in_r1_i_2_n_0,
      I1 => pulse_in_r1_i_3_n_0,
      I2 => pulse_in_r1_i_4_n_0,
      I3 => pulse_in_r1_i_5_n_0,
      I4 => counting_flag_i_4_n_0,
      I5 => pulse_in_r1_i_6_n_0,
      O => p_0_in
    );
pulse_in_r1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => control(12),
      I1 => control(13),
      I2 => control(10),
      I3 => control(11),
      I4 => control(9),
      I5 => control(8),
      O => pulse_in_r1_i_2_n_0
    );
pulse_in_r1_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => control(6),
      I1 => control(7),
      I2 => control(4),
      I3 => control(5),
      I4 => control(3),
      I5 => control(2),
      O => pulse_in_r1_i_3_n_0
    );
pulse_in_r1_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => control(24),
      I1 => control(25),
      I2 => control(22),
      I3 => control(23),
      I4 => control(21),
      I5 => control(20),
      O => pulse_in_r1_i_4_n_0
    );
pulse_in_r1_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => control(30),
      I1 => control(31),
      I2 => control(28),
      I3 => control(29),
      I4 => control(27),
      I5 => control(26),
      O => pulse_in_r1_i_5_n_0
    );
pulse_in_r1_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => control(18),
      I1 => control(19),
      I2 => control(16),
      I3 => control(17),
      I4 => control(15),
      I5 => control(14),
      O => pulse_in_r1_i_6_n_0
    );
pulse_in_r1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => pulse_in,
      Q => pulse_in_r1,
      R => '0'
    );
pulse_in_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => pulse_in_r1,
      Q => pulse_in_r2,
      R => '0'
    );
sync_in_r1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sync_in_r10,
      D => sync_in,
      Q => sync_in_r1
    );
sync_in_r2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sync_in_r10,
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
  signal \^debug\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN adc_tech_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute x_interface_parameter of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  counting_flag <= \^debug\(1);
  debug(2) <= \<const0>\;
  debug(1 downto 0) <= \^debug\(1 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_cal
     port map (
      clk => clk,
      control(31 downto 0) => control(31 downto 0),
      counter(31 downto 0) => counter(31 downto 0),
      debug(1 downto 0) => \^debug\(1 downto 0),
      pulse_in => pulse_in,
      rst_n => rst_n,
      sync_in => sync_in
    );
end STRUCTURE;

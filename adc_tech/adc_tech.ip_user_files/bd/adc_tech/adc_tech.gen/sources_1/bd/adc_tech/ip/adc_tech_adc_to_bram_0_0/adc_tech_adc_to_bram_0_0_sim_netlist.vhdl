-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Oct 22 10:23:16 2025
-- Host        : ZA-WASADIE1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/work/Technology/Vivado/MVT_ADC_TECH/adc_tech/adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_adc_to_bram_0_0/adc_tech_adc_to_bram_0_0_sim_netlist.vhdl
-- Design      : adc_tech_adc_to_bram_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adc_tech_adc_to_bram_0_0_adc_to_bram is
  port (
    bram_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bram_we : out STD_LOGIC;
    bram_done : out STD_LOGIC;
    clk : in STD_LOGIC;
    axi_gpio_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_n : in STD_LOGIC;
    adc_in : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adc_tech_adc_to_bram_0_0_adc_to_bram : entity is "adc_to_bram";
end adc_tech_adc_to_bram_0_0_adc_to_bram;

architecture STRUCTURE of adc_tech_adc_to_bram_0_0_adc_to_bram is
  signal acq_state : STD_LOGIC;
  signal acq_state_i_1_n_0 : STD_LOGIC;
  signal adc_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \adc_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \adc_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \addr_count[7]_i_2_n_0\ : STD_LOGIC;
  signal addr_count_4 : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal addr_count_4_0 : STD_LOGIC;
  signal axi_gpio_in_r1 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal axi_gpio_in_r2 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal bram_data_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_data_i1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \bram_data_i1[31]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data_i[11]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data_i[15]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data_i[19]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data_i[23]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data_i[27]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data_i[31]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \^bram_done\ : STD_LOGIC;
  signal bram_done_i_1_n_0 : STD_LOGIC;
  signal bram_we_i_1_n_0 : STD_LOGIC;
  signal load_bram : STD_LOGIC;
  signal load_bram_i_1_n_0 : STD_LOGIC;
  signal load_bram_r1 : STD_LOGIC;
  signal load_bram_r2 : STD_LOGIC;
  signal nibble_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \nibble_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \nibble_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \nibble_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \nibble_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \adc_state[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adc_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \addr_count[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addr_count[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addr_count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \addr_count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \addr_count[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \addr_count[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \nibble_counter[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \nibble_counter[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \nibble_counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \nibble_counter[3]_i_1\ : label is "soft_lutpair1";
begin
  bram_done <= \^bram_done\;
acq_state_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => acq_state,
      I1 => axi_gpio_in_r2(31),
      I2 => axi_gpio_in_r1(31),
      O => acq_state_i_1_n_0
    );
acq_state_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => acq_state_i_1_n_0,
      Q => acq_state
    );
\adc_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => load_bram_r2,
      I1 => load_bram_r1,
      I2 => \adc_state_reg_n_0_[0]\,
      I3 => \adc_state_reg_n_0_[1]\,
      O => adc_state(0)
    );
\adc_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \adc_state_reg_n_0_[0]\,
      I1 => p_1_in(9),
      O => adc_state(1)
    );
\adc_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bram_we_i_1_n_0,
      CLR => p_0_in,
      D => adc_state(0),
      Q => \adc_state_reg_n_0_[0]\
    );
\adc_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bram_we_i_1_n_0,
      CLR => p_0_in,
      D => adc_state(1),
      Q => \adc_state_reg_n_0_[1]\
    );
\addr_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_1_in(2),
      O => plusOp(0)
    );
\addr_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(2),
      I1 => p_1_in(3),
      O => plusOp(1)
    );
\addr_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_1_in(2),
      I1 => p_1_in(3),
      I2 => p_1_in(4),
      O => plusOp(2)
    );
\addr_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_1_in(3),
      I1 => p_1_in(2),
      I2 => p_1_in(4),
      I3 => p_1_in(5),
      O => plusOp(3)
    );
\addr_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => p_1_in(4),
      I1 => p_1_in(2),
      I2 => p_1_in(3),
      I3 => p_1_in(5),
      I4 => p_1_in(6),
      O => plusOp(4)
    );
\addr_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => p_1_in(5),
      I1 => p_1_in(3),
      I2 => p_1_in(2),
      I3 => p_1_in(4),
      I4 => p_1_in(6),
      I5 => p_1_in(7),
      O => plusOp(5)
    );
\addr_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_count[7]_i_2_n_0\,
      I1 => p_1_in(8),
      O => plusOp(6)
    );
\addr_count[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \addr_count[7]_i_2_n_0\,
      I1 => p_1_in(8),
      O => plusOp(7)
    );
\addr_count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_1_in(7),
      I1 => p_1_in(5),
      I2 => p_1_in(3),
      I3 => p_1_in(2),
      I4 => p_1_in(4),
      I5 => p_1_in(6),
      O => \addr_count[7]_i_2_n_0\
    );
\addr_count_4_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => p_1_in(2),
      Q => addr_count_4(2)
    );
\addr_count_4_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => p_1_in(3),
      Q => addr_count_4(3)
    );
\addr_count_4_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => p_1_in(4),
      Q => addr_count_4(4)
    );
\addr_count_4_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => p_1_in(5),
      Q => addr_count_4(5)
    );
\addr_count_4_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => p_1_in(6),
      Q => addr_count_4(6)
    );
\addr_count_4_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => p_1_in(7),
      Q => addr_count_4(7)
    );
\addr_count_4_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => p_1_in(8),
      Q => addr_count_4(8)
    );
\addr_count_4_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => p_1_in(9),
      Q => addr_count_4(9)
    );
\addr_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => plusOp(0),
      Q => p_1_in(2)
    );
\addr_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => plusOp(1),
      Q => p_1_in(3)
    );
\addr_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => plusOp(2),
      Q => p_1_in(4)
    );
\addr_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => plusOp(3),
      Q => p_1_in(5)
    );
\addr_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => plusOp(4),
      Q => p_1_in(6)
    );
\addr_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => plusOp(5),
      Q => p_1_in(7)
    );
\addr_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => plusOp(6),
      Q => p_1_in(8)
    );
\addr_count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => plusOp(7),
      Q => p_1_in(9)
    );
\axi_gpio_in_r1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => axi_gpio_in(0),
      Q => axi_gpio_in_r1(31)
    );
\axi_gpio_in_r2_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => axi_gpio_in_r1(31),
      Q => axi_gpio_in_r2(31)
    );
\bram_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => addr_count_4(2),
      Q => bram_addr(0)
    );
\bram_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => addr_count_4(3),
      Q => bram_addr(1)
    );
\bram_addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => addr_count_4(4),
      Q => bram_addr(2)
    );
\bram_addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => addr_count_4(5),
      Q => bram_addr(3)
    );
\bram_addr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => addr_count_4(6),
      Q => bram_addr(4)
    );
\bram_addr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => addr_count_4(7),
      Q => bram_addr(5)
    );
\bram_addr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => addr_count_4(8),
      Q => bram_addr(6)
    );
\bram_addr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => addr_count_4(9),
      Q => bram_addr(7)
    );
\bram_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \adc_state_reg_n_0_[1]\,
      I1 => \adc_state_reg_n_0_[0]\,
      I2 => p_1_in(9),
      O => addr_count_4_0
    );
\bram_data[31]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => p_0_in
    );
\bram_data_i1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => acq_state,
      I1 => nibble_counter(0),
      I2 => nibble_counter(1),
      I3 => nibble_counter(3),
      I4 => nibble_counter(2),
      O => \bram_data_i1[31]_i_1_n_0\
    );
\bram_data_i1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(0),
      Q => bram_data_i1(0)
    );
\bram_data_i1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(10),
      Q => bram_data_i1(10)
    );
\bram_data_i1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(11),
      Q => bram_data_i1(11)
    );
\bram_data_i1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(12),
      Q => bram_data_i1(12)
    );
\bram_data_i1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(13),
      Q => bram_data_i1(13)
    );
\bram_data_i1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(14),
      Q => bram_data_i1(14)
    );
\bram_data_i1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(15),
      Q => bram_data_i1(15)
    );
\bram_data_i1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(16),
      Q => bram_data_i1(16)
    );
\bram_data_i1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(17),
      Q => bram_data_i1(17)
    );
\bram_data_i1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(18),
      Q => bram_data_i1(18)
    );
\bram_data_i1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(19),
      Q => bram_data_i1(19)
    );
\bram_data_i1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(1),
      Q => bram_data_i1(1)
    );
\bram_data_i1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(20),
      Q => bram_data_i1(20)
    );
\bram_data_i1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(21),
      Q => bram_data_i1(21)
    );
\bram_data_i1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(22),
      Q => bram_data_i1(22)
    );
\bram_data_i1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(23),
      Q => bram_data_i1(23)
    );
\bram_data_i1_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(24),
      Q => bram_data_i1(24)
    );
\bram_data_i1_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(25),
      Q => bram_data_i1(25)
    );
\bram_data_i1_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(26),
      Q => bram_data_i1(26)
    );
\bram_data_i1_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(27),
      Q => bram_data_i1(27)
    );
\bram_data_i1_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(28),
      Q => bram_data_i1(28)
    );
\bram_data_i1_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(29),
      Q => bram_data_i1(29)
    );
\bram_data_i1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(2),
      Q => bram_data_i1(2)
    );
\bram_data_i1_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(30),
      Q => bram_data_i1(30)
    );
\bram_data_i1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(31),
      Q => bram_data_i1(31)
    );
\bram_data_i1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(3),
      Q => bram_data_i1(3)
    );
\bram_data_i1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(4),
      Q => bram_data_i1(4)
    );
\bram_data_i1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(5),
      Q => bram_data_i1(5)
    );
\bram_data_i1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(6),
      Q => bram_data_i1(6)
    );
\bram_data_i1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(7),
      Q => bram_data_i1(7)
    );
\bram_data_i1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(8),
      Q => bram_data_i1(8)
    );
\bram_data_i1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i1[31]_i_1_n_0\,
      CLR => p_0_in,
      D => bram_data_i(9),
      Q => bram_data_i1(9)
    );
\bram_data_i[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => acq_state,
      I1 => nibble_counter(2),
      I2 => nibble_counter(1),
      I3 => nibble_counter(0),
      I4 => nibble_counter(3),
      O => \bram_data_i[11]_i_1_n_0\
    );
\bram_data_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => acq_state,
      I1 => nibble_counter(2),
      I2 => nibble_counter(1),
      I3 => nibble_counter(3),
      I4 => nibble_counter(0),
      O => \bram_data_i[15]_i_1_n_0\
    );
\bram_data_i[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => acq_state,
      I1 => nibble_counter(0),
      I2 => nibble_counter(3),
      I3 => nibble_counter(1),
      I4 => nibble_counter(2),
      O => \bram_data_i[19]_i_1_n_0\
    );
\bram_data_i[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => acq_state,
      I1 => nibble_counter(3),
      I2 => nibble_counter(0),
      I3 => nibble_counter(1),
      I4 => nibble_counter(2),
      O => \bram_data_i[23]_i_1_n_0\
    );
\bram_data_i[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => acq_state,
      I1 => nibble_counter(1),
      I2 => nibble_counter(0),
      I3 => nibble_counter(3),
      I4 => nibble_counter(2),
      O => \bram_data_i[27]_i_1_n_0\
    );
\bram_data_i[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => acq_state,
      I1 => nibble_counter(1),
      I2 => nibble_counter(3),
      I3 => nibble_counter(0),
      I4 => nibble_counter(2),
      O => \bram_data_i[31]_i_1_n_0\
    );
\bram_data_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => acq_state,
      I1 => nibble_counter(2),
      I2 => nibble_counter(0),
      I3 => nibble_counter(3),
      I4 => nibble_counter(1),
      O => \bram_data_i[3]_i_1_n_0\
    );
\bram_data_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => acq_state,
      I1 => nibble_counter(2),
      I2 => nibble_counter(3),
      I3 => nibble_counter(0),
      I4 => nibble_counter(1),
      O => \bram_data_i[7]_i_1_n_0\
    );
\bram_data_i_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[3]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(0),
      Q => bram_data_i(0)
    );
\bram_data_i_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[11]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(2),
      Q => bram_data_i(10)
    );
\bram_data_i_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[11]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(3),
      Q => bram_data_i(11)
    );
\bram_data_i_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[15]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(0),
      Q => bram_data_i(12)
    );
\bram_data_i_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[15]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(1),
      Q => bram_data_i(13)
    );
\bram_data_i_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[15]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(2),
      Q => bram_data_i(14)
    );
\bram_data_i_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[15]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(3),
      Q => bram_data_i(15)
    );
\bram_data_i_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[19]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(0),
      Q => bram_data_i(16)
    );
\bram_data_i_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[19]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(1),
      Q => bram_data_i(17)
    );
\bram_data_i_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[19]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(2),
      Q => bram_data_i(18)
    );
\bram_data_i_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[19]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(3),
      Q => bram_data_i(19)
    );
\bram_data_i_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[3]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(1),
      Q => bram_data_i(1)
    );
\bram_data_i_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[23]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(0),
      Q => bram_data_i(20)
    );
\bram_data_i_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[23]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(1),
      Q => bram_data_i(21)
    );
\bram_data_i_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[23]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(2),
      Q => bram_data_i(22)
    );
\bram_data_i_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[23]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(3),
      Q => bram_data_i(23)
    );
\bram_data_i_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[27]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(0),
      Q => bram_data_i(24)
    );
\bram_data_i_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[27]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(1),
      Q => bram_data_i(25)
    );
\bram_data_i_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[27]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(2),
      Q => bram_data_i(26)
    );
\bram_data_i_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[27]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(3),
      Q => bram_data_i(27)
    );
\bram_data_i_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[31]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(0),
      Q => bram_data_i(28)
    );
\bram_data_i_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[31]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(1),
      Q => bram_data_i(29)
    );
\bram_data_i_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[3]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(2),
      Q => bram_data_i(2)
    );
\bram_data_i_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[31]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(2),
      Q => bram_data_i(30)
    );
\bram_data_i_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[31]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(3),
      Q => bram_data_i(31)
    );
\bram_data_i_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[3]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(3),
      Q => bram_data_i(3)
    );
\bram_data_i_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[7]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(0),
      Q => bram_data_i(4)
    );
\bram_data_i_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[7]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(1),
      Q => bram_data_i(5)
    );
\bram_data_i_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[7]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(2),
      Q => bram_data_i(6)
    );
\bram_data_i_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[7]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(3),
      Q => bram_data_i(7)
    );
\bram_data_i_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[11]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(0),
      Q => bram_data_i(8)
    );
\bram_data_i_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_data_i[11]_i_1_n_0\,
      CLR => p_0_in,
      D => adc_in(1),
      Q => bram_data_i(9)
    );
\bram_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(0),
      Q => bram_data(0)
    );
\bram_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(10),
      Q => bram_data(10)
    );
\bram_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(11),
      Q => bram_data(11)
    );
\bram_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(12),
      Q => bram_data(12)
    );
\bram_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(13),
      Q => bram_data(13)
    );
\bram_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(14),
      Q => bram_data(14)
    );
\bram_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(15),
      Q => bram_data(15)
    );
\bram_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(16),
      Q => bram_data(16)
    );
\bram_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(17),
      Q => bram_data(17)
    );
\bram_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(18),
      Q => bram_data(18)
    );
\bram_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(19),
      Q => bram_data(19)
    );
\bram_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(1),
      Q => bram_data(1)
    );
\bram_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(20),
      Q => bram_data(20)
    );
\bram_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(21),
      Q => bram_data(21)
    );
\bram_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(22),
      Q => bram_data(22)
    );
\bram_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(23),
      Q => bram_data(23)
    );
\bram_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(24),
      Q => bram_data(24)
    );
\bram_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(25),
      Q => bram_data(25)
    );
\bram_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(26),
      Q => bram_data(26)
    );
\bram_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(27),
      Q => bram_data(27)
    );
\bram_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(28),
      Q => bram_data(28)
    );
\bram_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(29),
      Q => bram_data(29)
    );
\bram_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(2),
      Q => bram_data(2)
    );
\bram_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(30),
      Q => bram_data(30)
    );
\bram_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(31),
      Q => bram_data(31)
    );
\bram_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(3),
      Q => bram_data(3)
    );
\bram_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(4),
      Q => bram_data(4)
    );
\bram_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(5),
      Q => bram_data(5)
    );
\bram_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(6),
      Q => bram_data(6)
    );
\bram_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(7),
      Q => bram_data(7)
    );
\bram_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(8),
      Q => bram_data(8)
    );
\bram_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => addr_count_4_0,
      CLR => p_0_in,
      D => bram_data_i1(9),
      Q => bram_data(9)
    );
bram_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => p_1_in(9),
      I1 => \adc_state_reg_n_0_[0]\,
      I2 => \adc_state_reg_n_0_[1]\,
      I3 => \^bram_done\,
      O => bram_done_i_1_n_0
    );
bram_done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => bram_done_i_1_n_0,
      Q => \^bram_done\
    );
bram_we_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \adc_state_reg_n_0_[0]\,
      I1 => \adc_state_reg_n_0_[1]\,
      O => bram_we_i_1_n_0
    );
bram_we_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bram_we_i_1_n_0,
      CLR => p_0_in,
      D => \adc_state_reg_n_0_[1]\,
      Q => bram_we
    );
load_bram_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010000"
    )
        port map (
      I0 => nibble_counter(2),
      I1 => nibble_counter(3),
      I2 => nibble_counter(1),
      I3 => nibble_counter(0),
      I4 => acq_state,
      I5 => load_bram,
      O => load_bram_i_1_n_0
    );
load_bram_r1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst_n,
      D => load_bram,
      Q => load_bram_r1,
      R => '0'
    );
load_bram_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst_n,
      D => load_bram_r1,
      Q => load_bram_r2,
      R => '0'
    );
load_bram_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => load_bram_i_1_n_0,
      Q => load_bram
    );
\nibble_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => acq_state,
      I1 => nibble_counter(0),
      O => \nibble_counter[0]_i_1_n_0\
    );
\nibble_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => acq_state,
      I1 => nibble_counter(0),
      I2 => nibble_counter(1),
      O => \nibble_counter[1]_i_1_n_0\
    );
\nibble_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"28A0"
    )
        port map (
      I0 => acq_state,
      I1 => nibble_counter(0),
      I2 => nibble_counter(2),
      I3 => nibble_counter(1),
      O => \nibble_counter[2]_i_1_n_0\
    );
\nibble_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA0000"
    )
        port map (
      I0 => acq_state,
      I1 => nibble_counter(0),
      I2 => nibble_counter(2),
      I3 => nibble_counter(1),
      I4 => nibble_counter(3),
      O => \nibble_counter[3]_i_1_n_0\
    );
\nibble_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => \nibble_counter[0]_i_1_n_0\,
      Q => nibble_counter(0)
    );
\nibble_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => \nibble_counter[1]_i_1_n_0\,
      Q => nibble_counter(1)
    );
\nibble_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => \nibble_counter[2]_i_1_n_0\,
      Q => nibble_counter(2)
    );
\nibble_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => \nibble_counter[3]_i_1_n_0\,
      Q => nibble_counter(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adc_tech_adc_to_bram_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    axi_gpio_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    adc_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_we : out STD_LOGIC;
    bram_done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of adc_tech_adc_to_bram_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of adc_tech_adc_to_bram_0_0 : entity is "adc_tech_adc_to_bram_0_0,adc_to_bram,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of adc_tech_adc_to_bram_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of adc_tech_adc_to_bram_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of adc_tech_adc_to_bram_0_0 : entity is "adc_to_bram,Vivado 2020.2";
end adc_tech_adc_to_bram_0_0;

architecture STRUCTURE of adc_tech_adc_to_bram_0_0 is
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
U0: entity work.adc_tech_adc_to_bram_0_0_adc_to_bram
     port map (
      adc_in(3 downto 0) => adc_in(3 downto 0),
      axi_gpio_in(0) => axi_gpio_in(31),
      bram_addr(7 downto 0) => \^bram_addr\(9 downto 2),
      bram_data(31 downto 0) => bram_data(31 downto 0),
      bram_done => bram_done,
      bram_we => bram_we,
      clk => clk,
      rst_n => rst_n
    );
end STRUCTURE;

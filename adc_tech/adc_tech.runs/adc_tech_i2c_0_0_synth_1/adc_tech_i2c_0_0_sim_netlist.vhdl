-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Dec 18 15:21:45 2024
-- Host        : ZA-WASADIE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adc_tech_i2c_0_0_sim_netlist.vhdl
-- Design      : adc_tech_i2c_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c is
  port (
    i2c_start_flag_reg_0 : out STD_LOGIC;
    i2c_clk : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    sda : out STD_LOGIC;
    i2c_start_flag_reg_1 : out STD_LOGIC;
    scl : out STD_LOGIC;
    clk_in : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    sda_0 : in STD_LOGIC;
    axi_gpio_in : in STD_LOGIC_VECTOR ( 24 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c is
  signal \axi_gpio_in_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[16]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[17]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[18]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[19]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[20]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[21]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[22]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[23]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal dac_command : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dac_command[0]_i_1_n_0\ : STD_LOGIC;
  signal \dac_command[1]_i_1_n_0\ : STD_LOGIC;
  signal \dac_command[2]_i_1_n_0\ : STD_LOGIC;
  signal \dac_command[3]_i_1_n_0\ : STD_LOGIC;
  signal \dac_command[4]_i_1_n_0\ : STD_LOGIC;
  signal \dac_command[5]_i_1_n_0\ : STD_LOGIC;
  signal \dac_command[6]_i_1_n_0\ : STD_LOGIC;
  signal \dac_command[7]_i_2_n_0\ : STD_LOGIC;
  signal \dac_command[7]_i_3_n_0\ : STD_LOGIC;
  signal dac_data_lsb : STD_LOGIC;
  signal \dac_data_lsb[0]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_lsb[1]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_lsb[2]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_lsb[3]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_lsb[4]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_lsb[5]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_lsb[6]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_lsb[7]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_lsb_reg_n_0_[0]\ : STD_LOGIC;
  signal \dac_data_lsb_reg_n_0_[1]\ : STD_LOGIC;
  signal \dac_data_lsb_reg_n_0_[2]\ : STD_LOGIC;
  signal \dac_data_lsb_reg_n_0_[3]\ : STD_LOGIC;
  signal \dac_data_lsb_reg_n_0_[4]\ : STD_LOGIC;
  signal \dac_data_lsb_reg_n_0_[5]\ : STD_LOGIC;
  signal \dac_data_lsb_reg_n_0_[6]\ : STD_LOGIC;
  signal \dac_data_lsb_reg_n_0_[7]\ : STD_LOGIC;
  signal dac_data_msb : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dac_data_msb[0]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_msb[1]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_msb[2]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_msb[3]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_msb[4]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_msb[5]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_msb[6]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_msb[7]_i_1_n_0\ : STD_LOGIC;
  signal i2c_ack_flag_i_1_n_0 : STD_LOGIC;
  signal i2c_ack_flag_i_2_n_0 : STD_LOGIC;
  signal i2c_ack_flag_reg_n_0 : STD_LOGIC;
  signal \^i2c_clk\ : STD_LOGIC;
  signal \i2c_clk_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[10]_i_3_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[10]_i_4_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal i2c_clk_counter_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal i2c_clk_i_1_n_0 : STD_LOGIC;
  signal i2c_shift_reg_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i2c_shift_reg_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_shift_reg_counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \i2c_shift_reg_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2c_shift_reg_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2c_shift_reg_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2c_shift_reg_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal i2c_start_flag_i_1_n_0 : STD_LOGIC;
  signal i2c_start_flag_i_2_n_0 : STD_LOGIC;
  signal \^i2c_start_flag_reg_0\ : STD_LOGIC;
  signal i2c_start_flag_reg_n_0 : STD_LOGIC;
  signal i2c_state : STD_LOGIC;
  signal i2c_state_i_1_n_0 : STD_LOGIC;
  signal i2c_write_address_flag_i_1_n_0 : STD_LOGIC;
  signal i2c_write_address_flag_i_2_n_0 : STD_LOGIC;
  signal i2c_write_address_flag_i_3_n_0 : STD_LOGIC;
  signal i2c_write_address_flag_reg_n_0 : STD_LOGIC;
  signal i2c_write_command_flag_i_1_n_0 : STD_LOGIC;
  signal i2c_write_command_flag_reg_n_0 : STD_LOGIC;
  signal i2c_write_data_lsb_flag_i_1_n_0 : STD_LOGIC;
  signal i2c_write_data_lsb_flag_reg_n_0 : STD_LOGIC;
  signal i2c_write_data_msb_flag_i_1_n_0 : STD_LOGIC;
  signal i2c_write_data_msb_flag_i_2_n_0 : STD_LOGIC;
  signal i2c_write_data_msb_flag_reg_n_0 : STD_LOGIC;
  signal i2c_write_stop_flag : STD_LOGIC;
  signal i2c_write_stop_flag_i_1_n_0 : STD_LOGIC;
  signal i2c_write_stop_flag_i_2_n_0 : STD_LOGIC;
  signal i2c_write_stop_flag_i_3_n_0 : STD_LOGIC;
  signal \i2c_write_tracker[0]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal p_1_in13_in : STD_LOGIC;
  signal \^rst_n_0\ : STD_LOGIC;
  signal scl_write_i_1_n_0 : STD_LOGIC;
  signal scl_write_i_2_n_0 : STD_LOGIC;
  signal scl_write_i_3_n_0 : STD_LOGIC;
  signal scl_write_i_4_n_0 : STD_LOGIC;
  signal scl_write_reg_n_0 : STD_LOGIC;
  signal sda_out : STD_LOGIC;
  signal sda_out_tristate_oe_i_10_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_11_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_12_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_13_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_14_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_15_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_16_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_2_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_4_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_5_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_6_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_7_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_8_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_9_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_reg_n_0 : STD_LOGIC;
  signal sda_write_i_1_n_0 : STD_LOGIC;
  signal sda_write_reg_n_0 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dac_command[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dac_command[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dac_command[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dac_command[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dac_command[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \dac_command[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \dac_command[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dac_command[7]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dac_command[7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dac_data_lsb[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dac_data_lsb[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dac_data_lsb[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dac_data_lsb[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dac_data_lsb[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \dac_data_lsb[5]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \dac_data_lsb[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \dac_data_lsb[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \dac_data_msb[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \dac_data_msb[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \dac_data_msb[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \dac_data_msb[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \dac_data_msb[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \dac_data_msb[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \dac_data_msb[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dac_data_msb[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i2c_clk_counter[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i2c_clk_counter[10]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \i2c_clk_counter[10]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i2c_clk_counter[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i2c_clk_counter[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i2c_clk_counter[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i2c_clk_counter[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \i2c_clk_counter[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i2c_clk_counter[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i2c_clk_counter[8]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of i2c_clk_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i2c_shift_reg_counter[3]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of i2c_start_flag_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of i2c_state_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of i2c_write_address_flag_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of i2c_write_address_flag_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of i2c_write_data_lsb_flag_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of i2c_write_data_msb_flag_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of i2c_write_data_msb_flag_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of i2c_write_stop_flag_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i2c_write_tracker[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of scl_INST_0 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of scl_write_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of scl_write_i_4 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of sda_out_tristate_oe_i_4 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of sda_out_tristate_oe_i_5 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of sda_out_tristate_oe_i_9 : label is "soft_lutpair9";
begin
  i2c_clk <= \^i2c_clk\;
  i2c_start_flag_reg_0 <= \^i2c_start_flag_reg_0\;
  rst_n_0 <= \^rst_n_0\;
\axi_gpio_in_reg1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(0),
      Q => \axi_gpio_in_reg1_reg_n_0_[0]\
    );
\axi_gpio_in_reg1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(10),
      Q => \axi_gpio_in_reg1_reg_n_0_[10]\
    );
\axi_gpio_in_reg1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(11),
      Q => \axi_gpio_in_reg1_reg_n_0_[11]\
    );
\axi_gpio_in_reg1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(12),
      Q => \axi_gpio_in_reg1_reg_n_0_[12]\
    );
\axi_gpio_in_reg1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(13),
      Q => \axi_gpio_in_reg1_reg_n_0_[13]\
    );
\axi_gpio_in_reg1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(14),
      Q => \axi_gpio_in_reg1_reg_n_0_[14]\
    );
\axi_gpio_in_reg1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(15),
      Q => \axi_gpio_in_reg1_reg_n_0_[15]\
    );
\axi_gpio_in_reg1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(16),
      Q => \axi_gpio_in_reg1_reg_n_0_[16]\
    );
\axi_gpio_in_reg1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(17),
      Q => \axi_gpio_in_reg1_reg_n_0_[17]\
    );
\axi_gpio_in_reg1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(18),
      Q => \axi_gpio_in_reg1_reg_n_0_[18]\
    );
\axi_gpio_in_reg1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(19),
      Q => \axi_gpio_in_reg1_reg_n_0_[19]\
    );
\axi_gpio_in_reg1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(1),
      Q => \axi_gpio_in_reg1_reg_n_0_[1]\
    );
\axi_gpio_in_reg1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(20),
      Q => \axi_gpio_in_reg1_reg_n_0_[20]\
    );
\axi_gpio_in_reg1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(21),
      Q => \axi_gpio_in_reg1_reg_n_0_[21]\
    );
\axi_gpio_in_reg1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(22),
      Q => \axi_gpio_in_reg1_reg_n_0_[22]\
    );
\axi_gpio_in_reg1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(23),
      Q => \axi_gpio_in_reg1_reg_n_0_[23]\
    );
\axi_gpio_in_reg1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(2),
      Q => \axi_gpio_in_reg1_reg_n_0_[2]\
    );
\axi_gpio_in_reg1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(24),
      Q => p_1_in13_in
    );
\axi_gpio_in_reg1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(3),
      Q => \axi_gpio_in_reg1_reg_n_0_[3]\
    );
\axi_gpio_in_reg1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(4),
      Q => \axi_gpio_in_reg1_reg_n_0_[4]\
    );
\axi_gpio_in_reg1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(5),
      Q => \axi_gpio_in_reg1_reg_n_0_[5]\
    );
\axi_gpio_in_reg1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(6),
      Q => \axi_gpio_in_reg1_reg_n_0_[6]\
    );
\axi_gpio_in_reg1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(7),
      Q => \axi_gpio_in_reg1_reg_n_0_[7]\
    );
\axi_gpio_in_reg1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(8),
      Q => \axi_gpio_in_reg1_reg_n_0_[8]\
    );
\axi_gpio_in_reg1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(9),
      Q => \axi_gpio_in_reg1_reg_n_0_[9]\
    );
\axi_gpio_in_reg2_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_1_in13_in,
      Q => p_0_in_0
    );
\dac_command[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[16]\,
      I1 => i2c_state,
      O => \dac_command[0]_i_1_n_0\
    );
\dac_command[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[17]\,
      I1 => i2c_state,
      O => \dac_command[1]_i_1_n_0\
    );
\dac_command[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[18]\,
      I1 => i2c_state,
      O => \dac_command[2]_i_1_n_0\
    );
\dac_command[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[19]\,
      I1 => i2c_state,
      O => \dac_command[3]_i_1_n_0\
    );
\dac_command[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[20]\,
      I1 => i2c_state,
      O => \dac_command[4]_i_1_n_0\
    );
\dac_command[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[21]\,
      I1 => i2c_state,
      O => \dac_command[5]_i_1_n_0\
    );
\dac_command[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[22]\,
      I1 => i2c_state,
      O => \dac_command[6]_i_1_n_0\
    );
\dac_command[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA0C"
    )
        port map (
      I0 => \dac_command[7]_i_3_n_0\,
      I1 => p_1_in13_in,
      I2 => p_0_in_0,
      I3 => i2c_state,
      O => dac_data_lsb
    );
\dac_command[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[23]\,
      I1 => i2c_state,
      O => \dac_command[7]_i_2_n_0\
    );
\dac_command[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA80"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => sel0(4),
      O => \dac_command[7]_i_3_n_0\
    );
\dac_command_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_command[0]_i_1_n_0\,
      Q => dac_command(0)
    );
\dac_command_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_command[1]_i_1_n_0\,
      Q => dac_command(1)
    );
\dac_command_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_command[2]_i_1_n_0\,
      Q => dac_command(2)
    );
\dac_command_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_command[3]_i_1_n_0\,
      Q => dac_command(3)
    );
\dac_command_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_command[4]_i_1_n_0\,
      Q => dac_command(4)
    );
\dac_command_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_command[5]_i_1_n_0\,
      Q => dac_command(5)
    );
\dac_command_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_command[6]_i_1_n_0\,
      Q => dac_command(6)
    );
\dac_command_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_command[7]_i_2_n_0\,
      Q => dac_command(7)
    );
\dac_data_lsb[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[0]\,
      I1 => i2c_state,
      O => \dac_data_lsb[0]_i_1_n_0\
    );
\dac_data_lsb[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[1]\,
      I1 => i2c_state,
      O => \dac_data_lsb[1]_i_1_n_0\
    );
\dac_data_lsb[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[2]\,
      I1 => i2c_state,
      O => \dac_data_lsb[2]_i_1_n_0\
    );
\dac_data_lsb[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[3]\,
      I1 => i2c_state,
      O => \dac_data_lsb[3]_i_1_n_0\
    );
\dac_data_lsb[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[4]\,
      I1 => i2c_state,
      O => \dac_data_lsb[4]_i_1_n_0\
    );
\dac_data_lsb[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[5]\,
      I1 => i2c_state,
      O => \dac_data_lsb[5]_i_1_n_0\
    );
\dac_data_lsb[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[6]\,
      I1 => i2c_state,
      O => \dac_data_lsb[6]_i_1_n_0\
    );
\dac_data_lsb[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[7]\,
      I1 => i2c_state,
      O => \dac_data_lsb[7]_i_1_n_0\
    );
\dac_data_lsb_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_data_lsb[0]_i_1_n_0\,
      Q => \dac_data_lsb_reg_n_0_[0]\
    );
\dac_data_lsb_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_data_lsb[1]_i_1_n_0\,
      Q => \dac_data_lsb_reg_n_0_[1]\
    );
\dac_data_lsb_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_data_lsb[2]_i_1_n_0\,
      Q => \dac_data_lsb_reg_n_0_[2]\
    );
\dac_data_lsb_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_data_lsb[3]_i_1_n_0\,
      Q => \dac_data_lsb_reg_n_0_[3]\
    );
\dac_data_lsb_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_data_lsb[4]_i_1_n_0\,
      Q => \dac_data_lsb_reg_n_0_[4]\
    );
\dac_data_lsb_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_data_lsb[5]_i_1_n_0\,
      Q => \dac_data_lsb_reg_n_0_[5]\
    );
\dac_data_lsb_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_data_lsb[6]_i_1_n_0\,
      Q => \dac_data_lsb_reg_n_0_[6]\
    );
\dac_data_lsb_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_data_lsb[7]_i_1_n_0\,
      Q => \dac_data_lsb_reg_n_0_[7]\
    );
\dac_data_msb[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[8]\,
      I1 => i2c_state,
      O => \dac_data_msb[0]_i_1_n_0\
    );
\dac_data_msb[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[9]\,
      I1 => i2c_state,
      O => \dac_data_msb[1]_i_1_n_0\
    );
\dac_data_msb[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[10]\,
      I1 => i2c_state,
      O => \dac_data_msb[2]_i_1_n_0\
    );
\dac_data_msb[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[11]\,
      I1 => i2c_state,
      O => \dac_data_msb[3]_i_1_n_0\
    );
\dac_data_msb[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[12]\,
      I1 => i2c_state,
      O => \dac_data_msb[4]_i_1_n_0\
    );
\dac_data_msb[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[13]\,
      I1 => i2c_state,
      O => \dac_data_msb[5]_i_1_n_0\
    );
\dac_data_msb[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[14]\,
      I1 => i2c_state,
      O => \dac_data_msb[6]_i_1_n_0\
    );
\dac_data_msb[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[15]\,
      I1 => i2c_state,
      O => \dac_data_msb[7]_i_1_n_0\
    );
\dac_data_msb_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_data_msb[0]_i_1_n_0\,
      Q => dac_data_msb(0)
    );
\dac_data_msb_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_data_msb[1]_i_1_n_0\,
      Q => dac_data_msb(1)
    );
\dac_data_msb_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_data_msb[2]_i_1_n_0\,
      Q => dac_data_msb(2)
    );
\dac_data_msb_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_data_msb[3]_i_1_n_0\,
      Q => dac_data_msb(3)
    );
\dac_data_msb_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_data_msb[4]_i_1_n_0\,
      Q => dac_data_msb(4)
    );
\dac_data_msb_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_data_msb[5]_i_1_n_0\,
      Q => dac_data_msb(5)
    );
\dac_data_msb_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_data_msb[6]_i_1_n_0\,
      Q => dac_data_msb(6)
    );
\dac_data_msb_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => dac_data_lsb,
      CLR => \^rst_n_0\,
      D => \dac_data_msb[7]_i_1_n_0\,
      Q => dac_data_msb(7)
    );
i2c_ack_flag_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i2c_state,
      I1 => i2c_ack_flag_i_2_n_0,
      O => i2c_ack_flag_i_1_n_0
    );
i2c_ack_flag_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDEFFFFFFFFFBDF"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(5),
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => sel0(4),
      I5 => sel0(1),
      O => i2c_ack_flag_i_2_n_0
    );
i2c_ack_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => i2c_ack_flag_i_1_n_0,
      Q => i2c_ack_flag_reg_n_0
    );
\i2c_clk_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i2c_clk_counter_reg(0),
      I1 => p_0_in,
      O => \p_0_in__0\(0)
    );
\i2c_clk_counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555540000000"
    )
        port map (
      I0 => p_0_in,
      I1 => i2c_clk_counter_reg(7),
      I2 => i2c_clk_counter_reg(8),
      I3 => \i2c_clk_counter[10]_i_3_n_0\,
      I4 => i2c_clk_counter_reg(9),
      I5 => i2c_clk_counter_reg(10),
      O => \i2c_clk_counter[10]_i_1_n_0\
    );
\i2c_clk_counter[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \i2c_clk_counter[10]_i_4_n_0\,
      I1 => i2c_clk_counter_reg(5),
      I2 => \i2c_clk_counter[4]_i_2_n_0\,
      O => p_0_in
    );
\i2c_clk_counter[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i2c_clk_counter_reg(6),
      I1 => i2c_clk_counter_reg(5),
      I2 => \i2c_clk_counter[8]_i_2_n_0\,
      O => \i2c_clk_counter[10]_i_3_n_0\
    );
\i2c_clk_counter[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => i2c_clk_counter_reg(4),
      I1 => i2c_clk_counter_reg(3),
      I2 => i2c_clk_counter_reg(1),
      I3 => i2c_clk_counter_reg(0),
      I4 => i2c_clk_counter_reg(2),
      O => \i2c_clk_counter[10]_i_4_n_0\
    );
\i2c_clk_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => i2c_clk_counter_reg(1),
      I1 => i2c_clk_counter_reg(0),
      I2 => p_0_in,
      O => \p_0_in__0\(1)
    );
\i2c_clk_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => p_0_in,
      I1 => i2c_clk_counter_reg(0),
      I2 => i2c_clk_counter_reg(1),
      I3 => i2c_clk_counter_reg(2),
      O => \p_0_in__0\(2)
    );
\i2c_clk_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => p_0_in,
      I1 => i2c_clk_counter_reg(1),
      I2 => i2c_clk_counter_reg(0),
      I3 => i2c_clk_counter_reg(2),
      I4 => i2c_clk_counter_reg(3),
      O => \p_0_in__0\(3)
    );
\i2c_clk_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800000000000"
    )
        port map (
      I0 => i2c_clk_counter_reg(3),
      I1 => i2c_clk_counter_reg(1),
      I2 => i2c_clk_counter_reg(0),
      I3 => i2c_clk_counter_reg(2),
      I4 => i2c_clk_counter_reg(4),
      I5 => \i2c_clk_counter[4]_i_2_n_0\,
      O => \p_0_in__0\(4)
    );
\i2c_clk_counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => i2c_clk_counter_reg(8),
      I1 => i2c_clk_counter_reg(7),
      I2 => i2c_clk_counter_reg(10),
      I3 => i2c_clk_counter_reg(6),
      I4 => i2c_clk_counter_reg(9),
      O => \i2c_clk_counter[4]_i_2_n_0\
    );
\i2c_clk_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => p_0_in,
      I1 => \i2c_clk_counter[8]_i_2_n_0\,
      I2 => i2c_clk_counter_reg(5),
      O => \p_0_in__0\(5)
    );
\i2c_clk_counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4510"
    )
        port map (
      I0 => p_0_in,
      I1 => \i2c_clk_counter[8]_i_2_n_0\,
      I2 => i2c_clk_counter_reg(5),
      I3 => i2c_clk_counter_reg(6),
      O => \p_0_in__0\(6)
    );
\i2c_clk_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F708"
    )
        port map (
      I0 => i2c_clk_counter_reg(6),
      I1 => i2c_clk_counter_reg(5),
      I2 => \i2c_clk_counter[8]_i_2_n_0\,
      I3 => i2c_clk_counter_reg(7),
      I4 => p_0_in,
      O => \p_0_in__0\(7)
    );
\i2c_clk_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5155555504000000"
    )
        port map (
      I0 => p_0_in,
      I1 => i2c_clk_counter_reg(7),
      I2 => \i2c_clk_counter[8]_i_2_n_0\,
      I3 => i2c_clk_counter_reg(5),
      I4 => i2c_clk_counter_reg(6),
      I5 => i2c_clk_counter_reg(8),
      O => \i2c_clk_counter[8]_i_1_n_0\
    );
\i2c_clk_counter[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => i2c_clk_counter_reg(3),
      I1 => i2c_clk_counter_reg(1),
      I2 => i2c_clk_counter_reg(0),
      I3 => i2c_clk_counter_reg(2),
      I4 => i2c_clk_counter_reg(4),
      O => \i2c_clk_counter[8]_i_2_n_0\
    );
\i2c_clk_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => p_0_in,
      I1 => \i2c_clk_counter[10]_i_3_n_0\,
      I2 => i2c_clk_counter_reg(8),
      I3 => i2c_clk_counter_reg(7),
      I4 => i2c_clk_counter_reg(9),
      O => \i2c_clk_counter[9]_i_1_n_0\
    );
\i2c_clk_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(0),
      Q => i2c_clk_counter_reg(0)
    );
\i2c_clk_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_clk_counter[10]_i_1_n_0\,
      Q => i2c_clk_counter_reg(10)
    );
\i2c_clk_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(1),
      Q => i2c_clk_counter_reg(1)
    );
\i2c_clk_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(2),
      Q => i2c_clk_counter_reg(2)
    );
\i2c_clk_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(3),
      Q => i2c_clk_counter_reg(3)
    );
\i2c_clk_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(4),
      Q => i2c_clk_counter_reg(4)
    );
\i2c_clk_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(5),
      Q => i2c_clk_counter_reg(5)
    );
\i2c_clk_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(6),
      Q => i2c_clk_counter_reg(6)
    );
\i2c_clk_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(7),
      Q => i2c_clk_counter_reg(7)
    );
\i2c_clk_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_clk_counter[8]_i_1_n_0\,
      Q => i2c_clk_counter_reg(8)
    );
\i2c_clk_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_clk_counter[9]_i_1_n_0\,
      Q => i2c_clk_counter_reg(9)
    );
i2c_clk_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in,
      I1 => \^i2c_clk\,
      O => i2c_clk_i_1_n_0
    );
i2c_clk_reg: unisim.vcomponents.FDPE
     port map (
      C => clk_in,
      CE => '1',
      D => i2c_clk_i_1_n_0,
      PRE => \^rst_n_0\,
      Q => \^i2c_clk\
    );
\i2c_shift_reg_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005554"
    )
        port map (
      I0 => i2c_ack_flag_reg_n_0,
      I1 => \i2c_shift_reg_counter_reg_n_0_[3]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[2]\,
      I4 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I5 => sda_out_tristate_oe_i_5_n_0,
      O => i2c_shift_reg_counter(0)
    );
\i2c_shift_reg_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055000054"
    )
        port map (
      I0 => i2c_ack_flag_reg_n_0,
      I1 => \i2c_shift_reg_counter_reg_n_0_[3]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[2]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I4 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I5 => sda_out_tristate_oe_i_5_n_0,
      O => i2c_shift_reg_counter(1)
    );
\i2c_shift_reg_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000050505004"
    )
        port map (
      I0 => i2c_ack_flag_reg_n_0,
      I1 => \i2c_shift_reg_counter_reg_n_0_[3]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[2]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I4 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I5 => sda_out_tristate_oe_i_5_n_0,
      O => i2c_shift_reg_counter(2)
    );
\i2c_shift_reg_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEFFFF"
    )
        port map (
      I0 => i2c_write_command_flag_reg_n_0,
      I1 => i2c_write_address_flag_reg_n_0,
      I2 => \i2c_shift_reg_counter[3]_i_3_n_0\,
      I3 => i2c_ack_flag_reg_n_0,
      I4 => i2c_write_stop_flag,
      I5 => i2c_start_flag_reg_n_0,
      O => \i2c_shift_reg_counter[3]_i_1_n_0\
    );
\i2c_shift_reg_counter[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFE01"
    )
        port map (
      I0 => \i2c_shift_reg_counter_reg_n_0_[2]\,
      I1 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[3]\,
      I4 => sda_out_tristate_oe_i_5_n_0,
      I5 => i2c_ack_flag_reg_n_0,
      O => i2c_shift_reg_counter(3)
    );
\i2c_shift_reg_counter[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i2c_write_data_msb_flag_reg_n_0,
      I1 => i2c_write_data_lsb_flag_reg_n_0,
      O => \i2c_shift_reg_counter[3]_i_3_n_0\
    );
\i2c_shift_reg_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^i2c_clk\,
      CE => \i2c_shift_reg_counter[3]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => i2c_shift_reg_counter(0),
      Q => \i2c_shift_reg_counter_reg_n_0_[0]\
    );
\i2c_shift_reg_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^i2c_clk\,
      CE => \i2c_shift_reg_counter[3]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => i2c_shift_reg_counter(1),
      Q => \i2c_shift_reg_counter_reg_n_0_[1]\
    );
\i2c_shift_reg_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^i2c_clk\,
      CE => \i2c_shift_reg_counter[3]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => i2c_shift_reg_counter(2),
      Q => \i2c_shift_reg_counter_reg_n_0_[2]\
    );
\i2c_shift_reg_counter_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^i2c_clk\,
      CE => \i2c_shift_reg_counter[3]_i_1_n_0\,
      D => i2c_shift_reg_counter(3),
      PRE => \^rst_n_0\,
      Q => \i2c_shift_reg_counter_reg_n_0_[3]\
    );
i2c_start_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => i2c_start_flag_i_2_n_0,
      I4 => i2c_state,
      I5 => sel0(5),
      O => i2c_start_flag_i_1_n_0
    );
i2c_start_flag_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      O => i2c_start_flag_i_2_n_0
    );
i2c_start_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => i2c_start_flag_i_1_n_0,
      Q => i2c_start_flag_reg_n_0
    );
i2c_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2722"
    )
        port map (
      I0 => i2c_state,
      I1 => \dac_command[7]_i_3_n_0\,
      I2 => p_0_in_0,
      I3 => p_1_in13_in,
      O => i2c_state_i_1_n_0
    );
i2c_state_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => i2c_state_i_1_n_0,
      Q => i2c_state
    );
i2c_write_address_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000200000002"
    )
        port map (
      I0 => i2c_state,
      I1 => i2c_write_address_flag_i_2_n_0,
      I2 => sel0(5),
      I3 => sel0(4),
      I4 => sel0(3),
      I5 => i2c_write_address_flag_i_3_n_0,
      O => i2c_write_address_flag_i_1_n_0
    );
i2c_write_address_flag_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      O => i2c_write_address_flag_i_2_n_0
    );
i2c_write_address_flag_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(2),
      I2 => sel0(1),
      O => i2c_write_address_flag_i_3_n_0
    );
i2c_write_address_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => i2c_write_address_flag_i_1_n_0,
      Q => i2c_write_address_flag_reg_n_0
    );
i2c_write_command_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004000400400"
    )
        port map (
      I0 => sel0(5),
      I1 => i2c_state,
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => sel0(2),
      I5 => sel0(1),
      O => i2c_write_command_flag_i_1_n_0
    );
i2c_write_command_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => i2c_write_command_flag_i_1_n_0,
      Q => i2c_write_command_flag_reg_n_0
    );
i2c_write_data_lsb_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00028000"
    )
        port map (
      I0 => i2c_state,
      I1 => sel0(3),
      I2 => sel0(4),
      I3 => sel0(2),
      I4 => sel0(5),
      O => i2c_write_data_lsb_flag_i_1_n_0
    );
i2c_write_data_lsb_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => i2c_write_data_lsb_flag_i_1_n_0,
      Q => i2c_write_data_lsb_flag_reg_n_0
    );
i2c_write_data_msb_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00600000"
    )
        port map (
      I0 => i2c_write_data_msb_flag_i_2_n_0,
      I1 => sel0(3),
      I2 => i2c_state,
      I3 => sel0(5),
      I4 => sel0(4),
      O => i2c_write_data_msb_flag_i_1_n_0
    );
i2c_write_data_msb_flag_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(2),
      I2 => sel0(1),
      O => i2c_write_data_msb_flag_i_2_n_0
    );
i2c_write_data_msb_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => i2c_write_data_msb_flag_i_1_n_0,
      Q => i2c_write_data_msb_flag_reg_n_0
    );
i2c_write_stop_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => i2c_write_stop_flag_i_2_n_0,
      I1 => sel0(5),
      I2 => sel0(4),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => i2c_write_stop_flag_i_3_n_0,
      O => i2c_write_stop_flag_i_1_n_0
    );
i2c_write_stop_flag_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00020202AAAAAAAA"
    )
        port map (
      I0 => i2c_state,
      I1 => sel0(4),
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(5),
      O => i2c_write_stop_flag_i_2_n_0
    );
i2c_write_stop_flag_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      O => i2c_write_stop_flag_i_3_n_0
    );
i2c_write_stop_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => i2c_write_stop_flag_i_1_n_0,
      Q => i2c_write_stop_flag
    );
\i2c_write_tracker[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010155555555"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(4),
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(5),
      O => \i2c_write_tracker[0]_i_1_n_0\
    );
\i2c_write_tracker[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000102025555AAAA"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(4),
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(5),
      O => \p_0_in__1\(1)
    );
\i2c_write_tracker[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002030055AAFF00"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(4),
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(5),
      O => \p_0_in__1\(2)
    );
\i2c_write_tracker[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006CCC"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => sel0(5),
      O => \p_0_in__1\(3)
    );
\i2c_write_tracker[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006CCCCCCC"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(4),
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(5),
      O => \p_0_in__1\(4)
    );
\i2c_write_tracker[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000002220222"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => sel0(4),
      O => \p_0_in__1\(5)
    );
\i2c_write_tracker_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => i2c_state,
      CLR => \^rst_n_0\,
      D => \i2c_write_tracker[0]_i_1_n_0\,
      Q => sel0(0)
    );
\i2c_write_tracker_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => i2c_state,
      CLR => \^rst_n_0\,
      D => \p_0_in__1\(1),
      Q => sel0(1)
    );
\i2c_write_tracker_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => i2c_state,
      CLR => \^rst_n_0\,
      D => \p_0_in__1\(2),
      Q => sel0(2)
    );
\i2c_write_tracker_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => i2c_state,
      CLR => \^rst_n_0\,
      D => \p_0_in__1\(3),
      Q => sel0(3)
    );
\i2c_write_tracker_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => i2c_state,
      CLR => \^rst_n_0\,
      D => \p_0_in__1\(4),
      Q => sel0(4)
    );
\i2c_write_tracker_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => i2c_state,
      CLR => \^rst_n_0\,
      D => \p_0_in__1\(5),
      Q => sel0(5)
    );
scl_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^i2c_clk\,
      I1 => scl_write_reg_n_0,
      O => scl
    );
scl_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF22F200002202"
    )
        port map (
      I0 => scl_write_i_2_n_0,
      I1 => i2c_write_address_flag_i_2_n_0,
      I2 => i2c_write_stop_flag_i_2_n_0,
      I3 => scl_write_i_3_n_0,
      I4 => scl_write_i_4_n_0,
      I5 => scl_write_reg_n_0,
      O => scl_write_i_1_n_0
    );
scl_write_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i2c_state,
      I1 => sel0(5),
      O => scl_write_i_2_n_0
    );
scl_write_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAABD5D5"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => sel0(3),
      I5 => sel0(4),
      O => scl_write_i_3_n_0
    );
scl_write_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => i2c_state,
      I1 => p_0_in_0,
      I2 => p_1_in13_in,
      O => scl_write_i_4_n_0
    );
scl_write_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => scl_write_i_1_n_0,
      Q => scl_write_reg_n_0
    );
sda_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => sda_write_reg_n_0,
      I1 => sda_out,
      O => sda
    );
sda_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sda_out_tristate_oe_reg_n_0,
      I1 => sda_0,
      O => sda_out
    );
sda_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBBA"
    )
        port map (
      I0 => i2c_start_flag_reg_n_0,
      I1 => i2c_ack_flag_reg_n_0,
      I2 => sda_out_tristate_oe_i_4_n_0,
      I3 => sda_out_tristate_oe_i_5_n_0,
      O => i2c_start_flag_reg_1
    );
sda_out_tristate_oe_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i2c_start_flag_reg_n_0,
      I1 => sda_out_tristate_oe_i_4_n_0,
      I2 => sda_out_tristate_oe_i_5_n_0,
      I3 => i2c_ack_flag_reg_n_0,
      O => \^i2c_start_flag_reg_0\
    );
sda_out_tristate_oe_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => dac_command(0),
      I1 => dac_command(1),
      I2 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I4 => dac_command(2),
      I5 => dac_command(3),
      O => sda_out_tristate_oe_i_10_n_0
    );
sda_out_tristate_oe_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I1 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[2]\,
      O => sda_out_tristate_oe_i_11_n_0
    );
sda_out_tristate_oe_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => dac_command(4),
      I1 => dac_command(5),
      I2 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I4 => dac_command(6),
      I5 => dac_command(7),
      O => sda_out_tristate_oe_i_12_n_0
    );
sda_out_tristate_oe_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => dac_data_msb(4),
      I1 => dac_data_msb(5),
      I2 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I4 => dac_data_msb(6),
      I5 => dac_data_msb(7),
      O => sda_out_tristate_oe_i_13_n_0
    );
sda_out_tristate_oe_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => dac_data_msb(0),
      I1 => dac_data_msb(1),
      I2 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I4 => dac_data_msb(2),
      I5 => dac_data_msb(3),
      O => sda_out_tristate_oe_i_14_n_0
    );
sda_out_tristate_oe_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \dac_data_lsb_reg_n_0_[4]\,
      I1 => \dac_data_lsb_reg_n_0_[5]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I4 => \dac_data_lsb_reg_n_0_[6]\,
      I5 => \dac_data_lsb_reg_n_0_[7]\,
      O => sda_out_tristate_oe_i_15_n_0
    );
sda_out_tristate_oe_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \dac_data_lsb_reg_n_0_[0]\,
      I1 => \dac_data_lsb_reg_n_0_[1]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I4 => \dac_data_lsb_reg_n_0_[2]\,
      I5 => \dac_data_lsb_reg_n_0_[3]\,
      O => sda_out_tristate_oe_i_16_n_0
    );
sda_out_tristate_oe_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAFE"
    )
        port map (
      I0 => sda_out_tristate_oe_i_6_n_0,
      I1 => sda_out_tristate_oe_i_7_n_0,
      I2 => sda_out_tristate_oe_i_8_n_0,
      I3 => i2c_write_address_flag_reg_n_0,
      I4 => i2c_write_command_flag_reg_n_0,
      I5 => i2c_start_flag_reg_n_0,
      O => sda_out_tristate_oe_i_2_n_0
    );
sda_out_tristate_oe_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
sda_out_tristate_oe_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i2c_shift_reg_counter_reg_n_0_[2]\,
      I1 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[3]\,
      O => sda_out_tristate_oe_i_4_n_0
    );
sda_out_tristate_oe_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => i2c_write_address_flag_reg_n_0,
      I1 => i2c_write_command_flag_reg_n_0,
      I2 => i2c_write_data_lsb_flag_reg_n_0,
      I3 => i2c_write_data_msb_flag_reg_n_0,
      O => sda_out_tristate_oe_i_5_n_0
    );
sda_out_tristate_oe_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEFEAAAAA0000"
    )
        port map (
      I0 => sda_out_tristate_oe_i_9_n_0,
      I1 => sda_out_tristate_oe_i_10_n_0,
      I2 => sda_out_tristate_oe_i_11_n_0,
      I3 => sda_out_tristate_oe_i_12_n_0,
      I4 => i2c_write_address_flag_reg_n_0,
      I5 => i2c_write_command_flag_reg_n_0,
      O => sda_out_tristate_oe_i_6_n_0
    );
sda_out_tristate_oe_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBE888200000000"
    )
        port map (
      I0 => sda_out_tristate_oe_i_13_n_0,
      I1 => \i2c_shift_reg_counter_reg_n_0_[2]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I4 => sda_out_tristate_oe_i_14_n_0,
      I5 => i2c_write_data_msb_flag_reg_n_0,
      O => sda_out_tristate_oe_i_7_n_0
    );
sda_out_tristate_oe_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3330003011111111"
    )
        port map (
      I0 => i2c_write_stop_flag,
      I1 => i2c_write_data_msb_flag_reg_n_0,
      I2 => sda_out_tristate_oe_i_15_n_0,
      I3 => sda_out_tristate_oe_i_11_n_0,
      I4 => sda_out_tristate_oe_i_16_n_0,
      I5 => i2c_write_data_lsb_flag_reg_n_0,
      O => sda_out_tristate_oe_i_8_n_0
    );
sda_out_tristate_oe_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2300"
    )
        port map (
      I0 => \i2c_shift_reg_counter_reg_n_0_[2]\,
      I1 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I3 => i2c_write_address_flag_reg_n_0,
      O => sda_out_tristate_oe_i_9_n_0
    );
sda_out_tristate_oe_reg: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^i2c_clk\,
      CE => \^i2c_start_flag_reg_0\,
      D => sda_out_tristate_oe_i_2_n_0,
      PRE => \^rst_n_0\,
      Q => sda_out_tristate_oe_reg_n_0
    );
sda_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080808FF08080800"
    )
        port map (
      I0 => i2c_write_stop_flag_i_2_n_0,
      I1 => i2c_start_flag_i_2_n_0,
      I2 => sel0(0),
      I3 => i2c_start_flag_i_1_n_0,
      I4 => dac_data_lsb,
      I5 => sda_write_reg_n_0,
      O => sda_write_i_1_n_0
    );
sda_write_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => sda_write_i_1_n_0,
      Q => sda_write_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk_in : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    axi_gpio_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    scl : out STD_LOGIC;
    sda : inout STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "adc_tech_i2c_0_0,i2c,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "i2c,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal i2c_clk : STD_LOGIC;
  signal inst_n_0 : STD_LOGIC;
  signal inst_n_2 : STD_LOGIC;
  signal inst_n_4 : STD_LOGIC;
  signal sda_INST_0_i_2_n_0 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c
     port map (
      axi_gpio_in(24) => axi_gpio_in(31),
      axi_gpio_in(23 downto 0) => axi_gpio_in(23 downto 0),
      clk_in => clk_in,
      i2c_clk => i2c_clk,
      i2c_start_flag_reg_0 => inst_n_0,
      i2c_start_flag_reg_1 => inst_n_4,
      rst_n => rst_n,
      rst_n_0 => inst_n_2,
      scl => scl,
      sda => sda,
      sda_0 => sda_INST_0_i_2_n_0
    );
sda_INST_0_i_2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i2c_clk,
      CE => inst_n_0,
      D => inst_n_4,
      PRE => inst_n_2,
      Q => sda_INST_0_i_2_n_0
    );
end STRUCTURE;

-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Oct 20 14:21:24 2025
-- Host        : ZA-WASADIE1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/work/Technology/Vivado/MVT_ADC_TECH/adc_tech/adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_i2c_master_0_0/adc_tech_i2c_master_0_0_sim_netlist.vhdl
-- Design      : adc_tech_i2c_master_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adc_tech_i2c_master_0_0_i2c_master is
  port (
    scl_freerunning_reg_0 : out STD_LOGIC;
    ctrl_clk : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    axi_gpio_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    sda_r0 : out STD_LOGIC;
    scl : out STD_LOGIC;
    sda : inout STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    sda_0 : in STD_LOGIC;
    axi_gpio_in : in STD_LOGIC_VECTOR ( 26 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adc_tech_i2c_master_0_0_i2c_master : entity is "i2c_master";
end adc_tech_i2c_master_0_0_i2c_master;

architecture STRUCTURE of adc_tech_i2c_master_0_0_i2c_master is
  signal \FSM_sequential_i2c_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[10]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[11]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[12]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[13]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[14]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[15]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[16]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[17]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[18]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[19]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[20]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[21]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[22]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[23]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[8]\ : STD_LOGIC;
  signal \axi_gpio_in_r1_reg_n_0_[9]\ : STD_LOGIC;
  signal axi_gpio_in_r2 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \axi_gpio_out[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_gpio_out[23]_i_3_n_0\ : STD_LOGIC;
  signal \^ctrl_clk\ : STD_LOGIC;
  signal ctrl_clk_counter : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \ctrl_clk_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_clk_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_clk_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_clk_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_clk_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_clk_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_clk_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_clk_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_clk_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_clk_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_clk_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_clk_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_clk_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_clk_counter[9]_i_3_n_0\ : STD_LOGIC;
  signal ctrl_clk_i_1_n_0 : STD_LOGIC;
  signal delay_counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \delay_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \delay_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \delay_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[2]_i_3_n_0\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal i2c_address_byte : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \i2c_address_byte[2]_i_3_n_0\ : STD_LOGIC;
  signal \i2c_address_byte_reg_n_0_[2]\ : STD_LOGIC;
  signal i2c_clk_counter : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \i2c_clk_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[10]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[10]_i_3_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[10]_i_4_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_cmd_byte_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2c_cmd_byte_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2c_cmd_byte_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2c_cmd_byte_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2c_cmd_byte_reg_n_0_[4]\ : STD_LOGIC;
  signal \i2c_cmd_byte_reg_n_0_[5]\ : STD_LOGIC;
  signal \i2c_cmd_byte_reg_n_0_[6]\ : STD_LOGIC;
  signal \i2c_cmd_byte_reg_n_0_[7]\ : STD_LOGIC;
  signal \i2c_cmd_read_byte[0]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_cmd_read_byte[0]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_cmd_read_byte[1]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_cmd_read_byte[1]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_cmd_read_byte[2]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_cmd_read_byte[2]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_cmd_read_byte[3]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_cmd_read_byte[3]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_cmd_read_byte[4]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_cmd_read_byte[4]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_cmd_read_byte[5]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_cmd_read_byte[5]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_cmd_read_byte[6]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_cmd_read_byte[6]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_cmd_read_byte[7]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_cmd_read_byte[7]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_cmd_read_byte[7]_i_3_n_0\ : STD_LOGIC;
  signal \i2c_cmd_read_byte_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2c_cmd_read_byte_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2c_cmd_read_byte_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2c_cmd_read_byte_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2c_cmd_read_byte_reg_n_0_[4]\ : STD_LOGIC;
  signal \i2c_cmd_read_byte_reg_n_0_[5]\ : STD_LOGIC;
  signal \i2c_cmd_read_byte_reg_n_0_[6]\ : STD_LOGIC;
  signal \i2c_cmd_read_byte_reg_n_0_[7]\ : STD_LOGIC;
  signal i2c_data_lsb : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i2c_data_msb : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \i2c_lsb_data_read_byte[0]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte[0]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte[1]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte[1]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte[2]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte[2]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte[3]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte[3]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte[4]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte[4]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte[5]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte[5]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte[6]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte[6]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte[7]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte[7]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte[7]_i_3_n_0\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte_reg_n_0_[4]\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte_reg_n_0_[5]\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte_reg_n_0_[6]\ : STD_LOGIC;
  signal \i2c_lsb_data_read_byte_reg_n_0_[7]\ : STD_LOGIC;
  signal i2c_msb_data_read_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \i2c_msb_data_read_byte[0]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_msb_data_read_byte[0]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_msb_data_read_byte[1]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_msb_data_read_byte[1]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_msb_data_read_byte[2]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_msb_data_read_byte[2]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_msb_data_read_byte[3]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_msb_data_read_byte[3]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_msb_data_read_byte[4]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_msb_data_read_byte[4]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_msb_data_read_byte[5]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_msb_data_read_byte[5]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_msb_data_read_byte[6]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_msb_data_read_byte[6]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_msb_data_read_byte[7]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_msb_data_read_byte[7]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_msb_data_read_byte[7]_i_3_n_0\ : STD_LOGIC;
  signal i2c_shift_counter : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \i2c_shift_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_shift_counter[1]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_shift_counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_shift_counter[2]_i_3_n_0\ : STD_LOGIC;
  signal \i2c_shift_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_shift_counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \i2c_shift_counter[3]_i_4_n_0\ : STD_LOGIC;
  signal \i2c_shift_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2c_shift_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2c_shift_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2c_shift_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2c_state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i2c_state__1\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in22_in : STD_LOGIC;
  signal read_flag15_out : STD_LOGIC;
  signal read_flag_reg_n_0 : STD_LOGIC;
  signal \^rst_n_0\ : STD_LOGIC;
  signal scl_active_i_1_n_0 : STD_LOGIC;
  signal scl_active_reg_n_0 : STD_LOGIC;
  signal scl_freerunning : STD_LOGIC;
  signal scl_freerunning_i_1_n_0 : STD_LOGIC;
  signal \^scl_freerunning_reg_0\ : STD_LOGIC;
  signal scl_r_i_1_n_0 : STD_LOGIC;
  signal scl_r_i_2_n_0 : STD_LOGIC;
  signal scl_r_reg_n_0 : STD_LOGIC;
  signal sda_r : STD_LOGIC;
  signal sda_r_tristate_oe_i_10_n_0 : STD_LOGIC;
  signal sda_r_tristate_oe_i_11_n_0 : STD_LOGIC;
  signal sda_r_tristate_oe_i_12_n_0 : STD_LOGIC;
  signal sda_r_tristate_oe_i_13_n_0 : STD_LOGIC;
  signal sda_r_tristate_oe_i_14_n_0 : STD_LOGIC;
  signal sda_r_tristate_oe_i_15_n_0 : STD_LOGIC;
  signal sda_r_tristate_oe_i_16_n_0 : STD_LOGIC;
  signal sda_r_tristate_oe_i_17_n_0 : STD_LOGIC;
  signal sda_r_tristate_oe_i_18_n_0 : STD_LOGIC;
  signal sda_r_tristate_oe_i_3_n_0 : STD_LOGIC;
  signal sda_r_tristate_oe_i_4_n_0 : STD_LOGIC;
  signal sda_r_tristate_oe_i_5_n_0 : STD_LOGIC;
  signal sda_r_tristate_oe_i_6_n_0 : STD_LOGIC;
  signal sda_r_tristate_oe_i_7_n_0 : STD_LOGIC;
  signal sda_r_tristate_oe_i_8_n_0 : STD_LOGIC;
  signal sda_r_tristate_oe_i_9_n_0 : STD_LOGIC;
  signal sda_r_tristate_oe_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_i2c_state[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_sequential_i2c_state[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_i2c_state[3]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_i2c_state[3]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_i2c_state[3]_i_4\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2c_state_reg[0]\ : label is "i2c_s_ack1:0100,i2c_s_write_address:0011,i2c_s_ack4:1101,i2c_s_delay1:0010,i2c_s_delay4:1011,i2c_s_data_lsb:1100,i2c_s_ack3:1010,i2c_s_start:0001,i2c_s_idle:0000,i2c_s_data_msb:1001,i2c_s_ack2:0111,i2c_s_delay3:1000,i2c_s_cmd:0110,i2c_s_stop:1111,i2c_s_delay5:1110,i2c_s_delay2:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2c_state_reg[1]\ : label is "i2c_s_ack1:0100,i2c_s_write_address:0011,i2c_s_ack4:1101,i2c_s_delay1:0010,i2c_s_delay4:1011,i2c_s_data_lsb:1100,i2c_s_ack3:1010,i2c_s_start:0001,i2c_s_idle:0000,i2c_s_data_msb:1001,i2c_s_ack2:0111,i2c_s_delay3:1000,i2c_s_cmd:0110,i2c_s_stop:1111,i2c_s_delay5:1110,i2c_s_delay2:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2c_state_reg[2]\ : label is "i2c_s_ack1:0100,i2c_s_write_address:0011,i2c_s_ack4:1101,i2c_s_delay1:0010,i2c_s_delay4:1011,i2c_s_data_lsb:1100,i2c_s_ack3:1010,i2c_s_start:0001,i2c_s_idle:0000,i2c_s_data_msb:1001,i2c_s_ack2:0111,i2c_s_delay3:1000,i2c_s_cmd:0110,i2c_s_stop:1111,i2c_s_delay5:1110,i2c_s_delay2:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2c_state_reg[3]\ : label is "i2c_s_ack1:0100,i2c_s_write_address:0011,i2c_s_ack4:1101,i2c_s_delay1:0010,i2c_s_delay4:1011,i2c_s_data_lsb:1100,i2c_s_ack3:1010,i2c_s_start:0001,i2c_s_idle:0000,i2c_s_data_msb:1001,i2c_s_ack2:0111,i2c_s_delay3:1000,i2c_s_cmd:0110,i2c_s_stop:1111,i2c_s_delay5:1110,i2c_s_delay2:0101";
  attribute SOFT_HLUTNM of \axi_gpio_out[23]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ctrl_clk_counter[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ctrl_clk_counter[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ctrl_clk_counter[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ctrl_clk_counter[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ctrl_clk_counter[5]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ctrl_clk_counter[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ctrl_clk_counter[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ctrl_clk_counter[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \delay_counter[0]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \delay_counter[0]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \delay_counter[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \delay_counter[2]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \delay_counter[2]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i2c_address_byte[2]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i2c_clk_counter[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i2c_clk_counter[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i2c_clk_counter[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i2c_clk_counter[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i2c_clk_counter[5]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i2c_clk_counter[7]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i2c_clk_counter[7]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i2c_cmd_read_byte[7]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i2c_lsb_data_read_byte[7]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i2c_msb_data_read_byte[7]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i2c_shift_counter[1]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i2c_shift_counter[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i2c_shift_counter[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i2c_shift_counter[3]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of scl_freerunning_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sda_r_tristate_oe_i_11 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of sda_r_tristate_oe_i_16 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sda_r_tristate_oe_i_4 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of sda_r_tristate_oe_i_5 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of sda_r_tristate_oe_i_6 : label is "soft_lutpair17";
begin
  ctrl_clk <= \^ctrl_clk\;
  rst_n_0 <= \^rst_n_0\;
  scl_freerunning_reg_0 <= \^scl_freerunning_reg_0\;
\FSM_sequential_i2c_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555504"
    )
        port map (
      I0 => \i2c_state__0\(0),
      I1 => p_1_in22_in,
      I2 => axi_gpio_in_r2(31),
      I3 => \i2c_state__0\(1),
      I4 => \i2c_state__0\(2),
      I5 => \i2c_state__0\(3),
      O => \FSM_sequential_i2c_state[0]_i_1_n_0\
    );
\FSM_sequential_i2c_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i2c_state__0\(1),
      I1 => \i2c_state__0\(0),
      O => \i2c_state__1\(1)
    );
\FSM_sequential_i2c_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \i2c_state__0\(2),
      I1 => \i2c_state__0\(0),
      I2 => \i2c_state__0\(1),
      O => \i2c_state__1\(2)
    );
\FSM_sequential_i2c_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554555455545555"
    )
        port map (
      I0 => scl_freerunning,
      I1 => \FSM_sequential_i2c_state[3]_i_3_n_0\,
      I2 => \FSM_sequential_i2c_state[3]_i_4_n_0\,
      I3 => \FSM_sequential_i2c_state[3]_i_5_n_0\,
      I4 => \i2c_state__0\(0),
      I5 => \FSM_sequential_i2c_state[3]_i_6_n_0\,
      O => \FSM_sequential_i2c_state[3]_i_1_n_0\
    );
\FSM_sequential_i2c_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78F0"
    )
        port map (
      I0 => \i2c_state__0\(2),
      I1 => \i2c_state__0\(0),
      I2 => \i2c_state__0\(3),
      I3 => \i2c_state__0\(1),
      O => \i2c_state__1\(3)
    );
\FSM_sequential_i2c_state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AC00000"
    )
        port map (
      I0 => \i2c_shift_counter[2]_i_3_n_0\,
      I1 => \i2c_shift_counter[3]_i_3_n_0\,
      I2 => \i2c_state__0\(3),
      I3 => \i2c_state__0\(2),
      I4 => \i2c_state__0\(1),
      O => \FSM_sequential_i2c_state[3]_i_3_n_0\
    );
\FSM_sequential_i2c_state[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E030203"
    )
        port map (
      I0 => \i2c_shift_counter[3]_i_3_n_0\,
      I1 => \i2c_state__0\(3),
      I2 => \i2c_state__0\(1),
      I3 => \i2c_state__0\(2),
      I4 => \i2c_shift_counter[2]_i_3_n_0\,
      O => \FSM_sequential_i2c_state[3]_i_4_n_0\
    );
\FSM_sequential_i2c_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080F0A0F0A00000"
    )
        port map (
      I0 => \i2c_state__0\(2),
      I1 => \axi_gpio_out[23]_i_3_n_0\,
      I2 => \i2c_state__0\(0),
      I3 => \i2c_shift_counter[2]_i_3_n_0\,
      I4 => \i2c_state__0\(3),
      I5 => \i2c_state__0\(1),
      O => \FSM_sequential_i2c_state[3]_i_5_n_0\
    );
\FSM_sequential_i2c_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F00FF1FFF1F0000"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[0]\,
      I1 => \delay_counter_reg_n_0_[1]\,
      I2 => \delay_counter_reg_n_0_[2]\,
      I3 => \i2c_state__0\(2),
      I4 => \i2c_state__0\(3),
      I5 => \i2c_state__0\(1),
      O => \FSM_sequential_i2c_state[3]_i_6_n_0\
    );
\FSM_sequential_i2c_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \FSM_sequential_i2c_state[3]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \FSM_sequential_i2c_state[0]_i_1_n_0\,
      Q => \i2c_state__0\(0)
    );
\FSM_sequential_i2c_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \FSM_sequential_i2c_state[3]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_state__1\(1),
      Q => \i2c_state__0\(1)
    );
\FSM_sequential_i2c_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \FSM_sequential_i2c_state[3]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_state__1\(2),
      Q => \i2c_state__0\(2)
    );
\FSM_sequential_i2c_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \FSM_sequential_i2c_state[3]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_state__1\(3),
      Q => \i2c_state__0\(3)
    );
\axi_gpio_in_r1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(0),
      Q => \axi_gpio_in_r1_reg_n_0_[0]\
    );
\axi_gpio_in_r1_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(10),
      Q => \axi_gpio_in_r1_reg_n_0_[10]\
    );
\axi_gpio_in_r1_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(11),
      Q => \axi_gpio_in_r1_reg_n_0_[11]\
    );
\axi_gpio_in_r1_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(12),
      Q => \axi_gpio_in_r1_reg_n_0_[12]\
    );
\axi_gpio_in_r1_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(13),
      Q => \axi_gpio_in_r1_reg_n_0_[13]\
    );
\axi_gpio_in_r1_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(14),
      Q => \axi_gpio_in_r1_reg_n_0_[14]\
    );
\axi_gpio_in_r1_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(15),
      Q => \axi_gpio_in_r1_reg_n_0_[15]\
    );
\axi_gpio_in_r1_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(16),
      Q => \axi_gpio_in_r1_reg_n_0_[16]\
    );
\axi_gpio_in_r1_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(17),
      Q => \axi_gpio_in_r1_reg_n_0_[17]\
    );
\axi_gpio_in_r1_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(18),
      Q => \axi_gpio_in_r1_reg_n_0_[18]\
    );
\axi_gpio_in_r1_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(19),
      Q => \axi_gpio_in_r1_reg_n_0_[19]\
    );
\axi_gpio_in_r1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(1),
      Q => \axi_gpio_in_r1_reg_n_0_[1]\
    );
\axi_gpio_in_r1_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(20),
      Q => \axi_gpio_in_r1_reg_n_0_[20]\
    );
\axi_gpio_in_r1_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(21),
      Q => \axi_gpio_in_r1_reg_n_0_[21]\
    );
\axi_gpio_in_r1_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(22),
      Q => \axi_gpio_in_r1_reg_n_0_[22]\
    );
\axi_gpio_in_r1_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(23),
      Q => \axi_gpio_in_r1_reg_n_0_[23]\
    );
\axi_gpio_in_r1_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(24),
      Q => p_1_in
    );
\axi_gpio_in_r1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(2),
      Q => \axi_gpio_in_r1_reg_n_0_[2]\
    );
\axi_gpio_in_r1_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(25),
      Q => p_0_in
    );
\axi_gpio_in_r1_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(26),
      Q => p_1_in22_in
    );
\axi_gpio_in_r1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(3),
      Q => \axi_gpio_in_r1_reg_n_0_[3]\
    );
\axi_gpio_in_r1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(4),
      Q => \axi_gpio_in_r1_reg_n_0_[4]\
    );
\axi_gpio_in_r1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(5),
      Q => \axi_gpio_in_r1_reg_n_0_[5]\
    );
\axi_gpio_in_r1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(6),
      Q => \axi_gpio_in_r1_reg_n_0_[6]\
    );
\axi_gpio_in_r1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(7),
      Q => \axi_gpio_in_r1_reg_n_0_[7]\
    );
\axi_gpio_in_r1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(8),
      Q => \axi_gpio_in_r1_reg_n_0_[8]\
    );
\axi_gpio_in_r1_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => axi_gpio_in(9),
      Q => \axi_gpio_in_r1_reg_n_0_[9]\
    );
\axi_gpio_in_r2_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_1_in22_in,
      Q => axi_gpio_in_r2(31)
    );
\axi_gpio_out[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \axi_gpio_out[23]_i_3_n_0\,
      I1 => \i2c_state__0\(1),
      I2 => scl_freerunning,
      I3 => \i2c_state__0\(3),
      I4 => \i2c_state__0\(0),
      I5 => \i2c_state__0\(2),
      O => \axi_gpio_out[23]_i_1_n_0\
    );
\axi_gpio_out[23]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
\axi_gpio_out[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[2]\,
      I1 => \delay_counter_reg_n_0_[1]\,
      I2 => \delay_counter_reg_n_0_[0]\,
      O => \axi_gpio_out[23]_i_3_n_0\
    );
\axi_gpio_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_lsb_data_read_byte_reg_n_0_[0]\,
      Q => axi_gpio_out(0)
    );
\axi_gpio_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => i2c_msb_data_read_byte(2),
      Q => axi_gpio_out(10)
    );
\axi_gpio_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => i2c_msb_data_read_byte(3),
      Q => axi_gpio_out(11)
    );
\axi_gpio_out_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => i2c_msb_data_read_byte(4),
      Q => axi_gpio_out(12)
    );
\axi_gpio_out_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => i2c_msb_data_read_byte(5),
      Q => axi_gpio_out(13)
    );
\axi_gpio_out_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => i2c_msb_data_read_byte(6),
      Q => axi_gpio_out(14)
    );
\axi_gpio_out_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => i2c_msb_data_read_byte(7),
      Q => axi_gpio_out(15)
    );
\axi_gpio_out_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_cmd_read_byte_reg_n_0_[0]\,
      Q => axi_gpio_out(16)
    );
\axi_gpio_out_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_cmd_read_byte_reg_n_0_[1]\,
      Q => axi_gpio_out(17)
    );
\axi_gpio_out_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_cmd_read_byte_reg_n_0_[2]\,
      Q => axi_gpio_out(18)
    );
\axi_gpio_out_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_cmd_read_byte_reg_n_0_[3]\,
      Q => axi_gpio_out(19)
    );
\axi_gpio_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_lsb_data_read_byte_reg_n_0_[1]\,
      Q => axi_gpio_out(1)
    );
\axi_gpio_out_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_cmd_read_byte_reg_n_0_[4]\,
      Q => axi_gpio_out(20)
    );
\axi_gpio_out_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_cmd_read_byte_reg_n_0_[5]\,
      Q => axi_gpio_out(21)
    );
\axi_gpio_out_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_cmd_read_byte_reg_n_0_[6]\,
      Q => axi_gpio_out(22)
    );
\axi_gpio_out_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_cmd_read_byte_reg_n_0_[7]\,
      Q => axi_gpio_out(23)
    );
\axi_gpio_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_lsb_data_read_byte_reg_n_0_[2]\,
      Q => axi_gpio_out(2)
    );
\axi_gpio_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_lsb_data_read_byte_reg_n_0_[3]\,
      Q => axi_gpio_out(3)
    );
\axi_gpio_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_lsb_data_read_byte_reg_n_0_[4]\,
      Q => axi_gpio_out(4)
    );
\axi_gpio_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_lsb_data_read_byte_reg_n_0_[5]\,
      Q => axi_gpio_out(5)
    );
\axi_gpio_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_lsb_data_read_byte_reg_n_0_[6]\,
      Q => axi_gpio_out(6)
    );
\axi_gpio_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_lsb_data_read_byte_reg_n_0_[7]\,
      Q => axi_gpio_out(7)
    );
\axi_gpio_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => i2c_msb_data_read_byte(0),
      Q => axi_gpio_out(8)
    );
\axi_gpio_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \axi_gpio_out[23]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => i2c_msb_data_read_byte(1),
      Q => axi_gpio_out(9)
    );
\ctrl_clk_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctrl_clk_counter(0),
      I1 => \ctrl_clk_counter[9]_i_2_n_0\,
      O => \ctrl_clk_counter[0]_i_1_n_0\
    );
\ctrl_clk_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => ctrl_clk_counter(0),
      I1 => ctrl_clk_counter(1),
      I2 => \ctrl_clk_counter[9]_i_2_n_0\,
      O => \ctrl_clk_counter[1]_i_1_n_0\
    );
\ctrl_clk_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => \ctrl_clk_counter[9]_i_2_n_0\,
      I1 => ctrl_clk_counter(1),
      I2 => ctrl_clk_counter(0),
      I3 => ctrl_clk_counter(2),
      O => \ctrl_clk_counter[2]_i_1_n_0\
    );
\ctrl_clk_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \ctrl_clk_counter[3]_i_2_n_0\,
      I1 => ctrl_clk_counter(0),
      I2 => ctrl_clk_counter(1),
      I3 => ctrl_clk_counter(2),
      I4 => ctrl_clk_counter(3),
      O => \ctrl_clk_counter[3]_i_1_n_0\
    );
\ctrl_clk_counter[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => ctrl_clk_counter(6),
      I1 => ctrl_clk_counter(8),
      I2 => ctrl_clk_counter(7),
      I3 => ctrl_clk_counter(9),
      I4 => ctrl_clk_counter(5),
      O => \ctrl_clk_counter[3]_i_2_n_0\
    );
\ctrl_clk_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => \ctrl_clk_counter[9]_i_2_n_0\,
      I1 => ctrl_clk_counter(2),
      I2 => ctrl_clk_counter(1),
      I3 => ctrl_clk_counter(0),
      I4 => ctrl_clk_counter(3),
      I5 => ctrl_clk_counter(4),
      O => \ctrl_clk_counter[4]_i_1_n_0\
    );
\ctrl_clk_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51550400"
    )
        port map (
      I0 => \ctrl_clk_counter[9]_i_2_n_0\,
      I1 => ctrl_clk_counter(3),
      I2 => \ctrl_clk_counter[5]_i_2_n_0\,
      I3 => ctrl_clk_counter(4),
      I4 => ctrl_clk_counter(5),
      O => \ctrl_clk_counter[5]_i_1_n_0\
    );
\ctrl_clk_counter[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => ctrl_clk_counter(0),
      I1 => ctrl_clk_counter(1),
      I2 => ctrl_clk_counter(2),
      O => \ctrl_clk_counter[5]_i_2_n_0\
    );
\ctrl_clk_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \ctrl_clk_counter[9]_i_2_n_0\,
      I1 => \ctrl_clk_counter[9]_i_3_n_0\,
      I2 => ctrl_clk_counter(6),
      O => \ctrl_clk_counter[6]_i_1_n_0\
    );
\ctrl_clk_counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5104"
    )
        port map (
      I0 => \ctrl_clk_counter[9]_i_2_n_0\,
      I1 => ctrl_clk_counter(6),
      I2 => \ctrl_clk_counter[9]_i_3_n_0\,
      I3 => ctrl_clk_counter(7),
      O => \ctrl_clk_counter[7]_i_1_n_0\
    );
\ctrl_clk_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BF40"
    )
        port map (
      I0 => \ctrl_clk_counter[9]_i_3_n_0\,
      I1 => ctrl_clk_counter(6),
      I2 => ctrl_clk_counter(7),
      I3 => ctrl_clk_counter(8),
      I4 => \ctrl_clk_counter[9]_i_2_n_0\,
      O => \ctrl_clk_counter[8]_i_1_n_0\
    );
\ctrl_clk_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4544444444444444"
    )
        port map (
      I0 => \ctrl_clk_counter[9]_i_2_n_0\,
      I1 => ctrl_clk_counter(9),
      I2 => \ctrl_clk_counter[9]_i_3_n_0\,
      I3 => ctrl_clk_counter(6),
      I4 => ctrl_clk_counter(8),
      I5 => ctrl_clk_counter(7),
      O => \ctrl_clk_counter[9]_i_1_n_0\
    );
\ctrl_clk_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFF80"
    )
        port map (
      I0 => ctrl_clk_counter(0),
      I1 => ctrl_clk_counter(1),
      I2 => ctrl_clk_counter(2),
      I3 => ctrl_clk_counter(3),
      I4 => ctrl_clk_counter(4),
      I5 => \ctrl_clk_counter[3]_i_2_n_0\,
      O => \ctrl_clk_counter[9]_i_2_n_0\
    );
\ctrl_clk_counter[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => ctrl_clk_counter(4),
      I1 => ctrl_clk_counter(2),
      I2 => ctrl_clk_counter(1),
      I3 => ctrl_clk_counter(0),
      I4 => ctrl_clk_counter(3),
      I5 => ctrl_clk_counter(5),
      O => \ctrl_clk_counter[9]_i_3_n_0\
    );
\ctrl_clk_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \ctrl_clk_counter[0]_i_1_n_0\,
      Q => ctrl_clk_counter(0)
    );
\ctrl_clk_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \ctrl_clk_counter[1]_i_1_n_0\,
      Q => ctrl_clk_counter(1)
    );
\ctrl_clk_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \ctrl_clk_counter[2]_i_1_n_0\,
      Q => ctrl_clk_counter(2)
    );
\ctrl_clk_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \ctrl_clk_counter[3]_i_1_n_0\,
      Q => ctrl_clk_counter(3)
    );
\ctrl_clk_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \ctrl_clk_counter[4]_i_1_n_0\,
      Q => ctrl_clk_counter(4)
    );
\ctrl_clk_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \ctrl_clk_counter[5]_i_1_n_0\,
      Q => ctrl_clk_counter(5)
    );
\ctrl_clk_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \ctrl_clk_counter[6]_i_1_n_0\,
      Q => ctrl_clk_counter(6)
    );
\ctrl_clk_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \ctrl_clk_counter[7]_i_1_n_0\,
      Q => ctrl_clk_counter(7)
    );
\ctrl_clk_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \ctrl_clk_counter[8]_i_1_n_0\,
      Q => ctrl_clk_counter(8)
    );
\ctrl_clk_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \ctrl_clk_counter[9]_i_1_n_0\,
      Q => ctrl_clk_counter(9)
    );
ctrl_clk_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ctrl_clk_counter[9]_i_2_n_0\,
      I1 => \^ctrl_clk\,
      O => ctrl_clk_i_1_n_0
    );
ctrl_clk_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => ctrl_clk_i_1_n_0,
      PRE => \^rst_n_0\,
      Q => \^ctrl_clk\
    );
\delay_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001000F0F0F"
    )
        port map (
      I0 => \delay_counter[0]_i_2_n_0\,
      I1 => \delay_counter[0]_i_3_n_0\,
      I2 => \delay_counter_reg_n_0_[0]\,
      I3 => \delay_counter_reg_n_0_[1]\,
      I4 => \delay_counter_reg_n_0_[2]\,
      I5 => \delay_counter[2]_i_3_n_0\,
      O => delay_counter(0)
    );
\delay_counter[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \i2c_state__0\(3),
      I1 => \i2c_state__0\(1),
      O => \delay_counter[0]_i_2_n_0\
    );
\delay_counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \i2c_state__0\(2),
      I1 => \i2c_state__0\(0),
      O => \delay_counter[0]_i_3_n_0\
    );
\delay_counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[0]\,
      I1 => \delay_counter_reg_n_0_[1]\,
      I2 => \delay_counter_reg_n_0_[2]\,
      I3 => \delay_counter[2]_i_3_n_0\,
      O => delay_counter(1)
    );
\delay_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F99E"
    )
        port map (
      I0 => \i2c_state__0\(1),
      I1 => \i2c_state__0\(3),
      I2 => \i2c_state__0\(0),
      I3 => \i2c_state__0\(2),
      I4 => scl_freerunning,
      O => \delay_counter[2]_i_1_n_0\
    );
\delay_counter[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1004"
    )
        port map (
      I0 => \delay_counter[2]_i_3_n_0\,
      I1 => \delay_counter_reg_n_0_[2]\,
      I2 => \delay_counter_reg_n_0_[1]\,
      I3 => \delay_counter_reg_n_0_[0]\,
      O => delay_counter(2)
    );
\delay_counter[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E519"
    )
        port map (
      I0 => \i2c_state__0\(1),
      I1 => \i2c_state__0\(3),
      I2 => \i2c_state__0\(0),
      I3 => \i2c_state__0\(2),
      O => \delay_counter[2]_i_3_n_0\
    );
\delay_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \delay_counter[2]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => delay_counter(0),
      Q => \delay_counter_reg_n_0_[0]\
    );
\delay_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \delay_counter[2]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => delay_counter(1),
      Q => \delay_counter_reg_n_0_[1]\
    );
\delay_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \delay_counter[2]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => delay_counter(2),
      Q => \delay_counter_reg_n_0_[2]\
    );
\i2c_address_byte[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \i2c_state__0\(2),
      I1 => \i2c_state__0\(0),
      I2 => \i2c_address_byte[2]_i_3_n_0\,
      I3 => p_1_in22_in,
      I4 => axi_gpio_in_r2(31),
      I5 => scl_freerunning,
      O => read_flag15_out
    );
\i2c_address_byte[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_1_in,
      O => i2c_address_byte(2)
    );
\i2c_address_byte[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i2c_state__0\(3),
      I1 => \i2c_state__0\(1),
      O => \i2c_address_byte[2]_i_3_n_0\
    );
\i2c_address_byte_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      D => i2c_address_byte(2),
      PRE => \^rst_n_0\,
      Q => \i2c_address_byte_reg_n_0_[2]\
    );
\i2c_clk_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AB"
    )
        port map (
      I0 => \i2c_clk_counter[5]_i_2_n_0\,
      I1 => i2c_clk_counter(4),
      I2 => i2c_clk_counter(5),
      I3 => i2c_clk_counter(0),
      O => \i2c_clk_counter[0]_i_1_n_0\
    );
\i2c_clk_counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F2F052F0F0F0F0"
    )
        port map (
      I0 => i2c_clk_counter(9),
      I1 => \i2c_clk_counter[10]_i_2_n_0\,
      I2 => i2c_clk_counter(10),
      I3 => \i2c_clk_counter[10]_i_3_n_0\,
      I4 => \i2c_clk_counter[10]_i_4_n_0\,
      I5 => i2c_clk_counter(8),
      O => \i2c_clk_counter[10]_i_1_n_0\
    );
\i2c_clk_counter[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => i2c_clk_counter(4),
      I1 => i2c_clk_counter(2),
      I2 => i2c_clk_counter(0),
      I3 => i2c_clk_counter(1),
      I4 => i2c_clk_counter(3),
      I5 => i2c_clk_counter(5),
      O => \i2c_clk_counter[10]_i_2_n_0\
    );
\i2c_clk_counter[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i2c_clk_counter(6),
      I1 => i2c_clk_counter(7),
      O => \i2c_clk_counter[10]_i_3_n_0\
    );
\i2c_clk_counter[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111111111111111"
    )
        port map (
      I0 => i2c_clk_counter(5),
      I1 => i2c_clk_counter(4),
      I2 => i2c_clk_counter(3),
      I3 => i2c_clk_counter(1),
      I4 => i2c_clk_counter(0),
      I5 => i2c_clk_counter(2),
      O => \i2c_clk_counter[10]_i_4_n_0\
    );
\i2c_clk_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F1F100"
    )
        port map (
      I0 => i2c_clk_counter(5),
      I1 => i2c_clk_counter(4),
      I2 => \i2c_clk_counter[5]_i_2_n_0\,
      I3 => i2c_clk_counter(0),
      I4 => i2c_clk_counter(1),
      O => \i2c_clk_counter[1]_i_1_n_0\
    );
\i2c_clk_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F1F1F1F1000000"
    )
        port map (
      I0 => i2c_clk_counter(5),
      I1 => i2c_clk_counter(4),
      I2 => \i2c_clk_counter[5]_i_2_n_0\,
      I3 => i2c_clk_counter(1),
      I4 => i2c_clk_counter(0),
      I5 => i2c_clk_counter(2),
      O => \i2c_clk_counter[2]_i_1_n_0\
    );
\i2c_clk_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \i2c_clk_counter[3]_i_2_n_0\,
      I1 => i2c_clk_counter(2),
      I2 => i2c_clk_counter(0),
      I3 => i2c_clk_counter(1),
      I4 => i2c_clk_counter(3),
      O => \i2c_clk_counter[3]_i_1_n_0\
    );
\i2c_clk_counter[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => i2c_clk_counter(5),
      I1 => i2c_clk_counter(4),
      I2 => \i2c_clk_counter[5]_i_2_n_0\,
      O => \i2c_clk_counter[3]_i_2_n_0\
    );
\i2c_clk_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \i2c_clk_counter[5]_i_2_n_0\,
      I1 => i2c_clk_counter(3),
      I2 => i2c_clk_counter(1),
      I3 => i2c_clk_counter(0),
      I4 => i2c_clk_counter(2),
      I5 => i2c_clk_counter(4),
      O => \i2c_clk_counter[4]_i_1_n_0\
    );
\i2c_clk_counter[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B040"
    )
        port map (
      I0 => \i2c_clk_counter[7]_i_3_n_0\,
      I1 => i2c_clk_counter(4),
      I2 => \i2c_clk_counter[5]_i_2_n_0\,
      I3 => i2c_clk_counter(5),
      O => \i2c_clk_counter[5]_i_1_n_0\
    );
\i2c_clk_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => i2c_clk_counter(7),
      I1 => i2c_clk_counter(6),
      I2 => i2c_clk_counter(8),
      I3 => i2c_clk_counter(9),
      I4 => i2c_clk_counter(10),
      O => \i2c_clk_counter[5]_i_2_n_0\
    );
\i2c_clk_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C433C4C4CCC4C4"
    )
        port map (
      I0 => i2c_clk_counter(7),
      I1 => i2c_clk_counter(6),
      I2 => \i2c_clk_counter[7]_i_2_n_0\,
      I3 => i2c_clk_counter(4),
      I4 => \i2c_clk_counter[7]_i_3_n_0\,
      I5 => i2c_clk_counter(5),
      O => \i2c_clk_counter[6]_i_1_n_0\
    );
\i2c_clk_counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C466C4C4CCC4C4"
    )
        port map (
      I0 => i2c_clk_counter(6),
      I1 => i2c_clk_counter(7),
      I2 => \i2c_clk_counter[7]_i_2_n_0\,
      I3 => i2c_clk_counter(4),
      I4 => \i2c_clk_counter[7]_i_3_n_0\,
      I5 => i2c_clk_counter(5),
      O => \i2c_clk_counter[7]_i_1_n_0\
    );
\i2c_clk_counter[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => i2c_clk_counter(10),
      I1 => i2c_clk_counter(9),
      I2 => i2c_clk_counter(8),
      O => \i2c_clk_counter[7]_i_2_n_0\
    );
\i2c_clk_counter[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => i2c_clk_counter(2),
      I1 => i2c_clk_counter(0),
      I2 => i2c_clk_counter(1),
      I3 => i2c_clk_counter(3),
      O => \i2c_clk_counter[7]_i_3_n_0\
    );
\i2c_clk_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF0F700F"
    )
        port map (
      I0 => i2c_clk_counter(9),
      I1 => i2c_clk_counter(10),
      I2 => \i2c_clk_counter[10]_i_2_n_0\,
      I3 => i2c_clk_counter(8),
      I4 => \i2c_clk_counter[10]_i_4_n_0\,
      I5 => \i2c_clk_counter[10]_i_3_n_0\,
      O => \i2c_clk_counter[8]_i_1_n_0\
    );
\i2c_clk_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F3F043F0F0F0F0"
    )
        port map (
      I0 => i2c_clk_counter(10),
      I1 => \i2c_clk_counter[10]_i_2_n_0\,
      I2 => i2c_clk_counter(9),
      I3 => \i2c_clk_counter[10]_i_3_n_0\,
      I4 => \i2c_clk_counter[10]_i_4_n_0\,
      I5 => i2c_clk_counter(8),
      O => \i2c_clk_counter[9]_i_1_n_0\
    );
\i2c_clk_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_clk_counter[0]_i_1_n_0\,
      Q => i2c_clk_counter(0)
    );
\i2c_clk_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_clk_counter[10]_i_1_n_0\,
      Q => i2c_clk_counter(10)
    );
\i2c_clk_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_clk_counter[1]_i_1_n_0\,
      Q => i2c_clk_counter(1)
    );
\i2c_clk_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_clk_counter[2]_i_1_n_0\,
      Q => i2c_clk_counter(2)
    );
\i2c_clk_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_clk_counter[3]_i_1_n_0\,
      Q => i2c_clk_counter(3)
    );
\i2c_clk_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_clk_counter[4]_i_1_n_0\,
      Q => i2c_clk_counter(4)
    );
\i2c_clk_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_clk_counter[5]_i_1_n_0\,
      Q => i2c_clk_counter(5)
    );
\i2c_clk_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_clk_counter[6]_i_1_n_0\,
      Q => i2c_clk_counter(6)
    );
\i2c_clk_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_clk_counter[7]_i_1_n_0\,
      Q => i2c_clk_counter(7)
    );
\i2c_clk_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_clk_counter[8]_i_1_n_0\,
      Q => i2c_clk_counter(8)
    );
\i2c_clk_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_clk_counter[9]_i_1_n_0\,
      Q => i2c_clk_counter(9)
    );
\i2c_cmd_byte_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[16]\,
      Q => \i2c_cmd_byte_reg_n_0_[0]\
    );
\i2c_cmd_byte_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[17]\,
      Q => \i2c_cmd_byte_reg_n_0_[1]\
    );
\i2c_cmd_byte_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[18]\,
      Q => \i2c_cmd_byte_reg_n_0_[2]\
    );
\i2c_cmd_byte_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[19]\,
      Q => \i2c_cmd_byte_reg_n_0_[3]\
    );
\i2c_cmd_byte_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[20]\,
      Q => \i2c_cmd_byte_reg_n_0_[4]\
    );
\i2c_cmd_byte_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[21]\,
      Q => \i2c_cmd_byte_reg_n_0_[5]\
    );
\i2c_cmd_byte_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[22]\,
      Q => \i2c_cmd_byte_reg_n_0_[6]\
    );
\i2c_cmd_byte_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[23]\,
      Q => \i2c_cmd_byte_reg_n_0_[7]\
    );
\i2c_cmd_read_byte[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_cmd_read_byte[0]_i_2_n_0\,
      I1 => \i2c_cmd_read_byte_reg_n_0_[0]\,
      I2 => sda,
      O => \i2c_cmd_read_byte[0]_i_1_n_0\
    );
\i2c_cmd_read_byte[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[3]\,
      I1 => \i2c_shift_counter_reg_n_0_[2]\,
      I2 => \i2c_shift_counter_reg_n_0_[1]\,
      I3 => \i2c_shift_counter_reg_n_0_[0]\,
      I4 => read_flag_reg_n_0,
      I5 => \i2c_cmd_read_byte[7]_i_3_n_0\,
      O => \i2c_cmd_read_byte[0]_i_2_n_0\
    );
\i2c_cmd_read_byte[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_cmd_read_byte[1]_i_2_n_0\,
      I1 => \i2c_cmd_read_byte_reg_n_0_[1]\,
      I2 => sda,
      O => \i2c_cmd_read_byte[1]_i_1_n_0\
    );
\i2c_cmd_read_byte[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[3]\,
      I1 => \i2c_shift_counter_reg_n_0_[2]\,
      I2 => \i2c_shift_counter_reg_n_0_[1]\,
      I3 => \i2c_shift_counter_reg_n_0_[0]\,
      I4 => read_flag_reg_n_0,
      I5 => \i2c_cmd_read_byte[7]_i_3_n_0\,
      O => \i2c_cmd_read_byte[1]_i_2_n_0\
    );
\i2c_cmd_read_byte[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_cmd_read_byte[2]_i_2_n_0\,
      I1 => \i2c_cmd_read_byte_reg_n_0_[2]\,
      I2 => sda,
      O => \i2c_cmd_read_byte[2]_i_1_n_0\
    );
\i2c_cmd_read_byte[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[3]\,
      I1 => \i2c_shift_counter_reg_n_0_[2]\,
      I2 => \i2c_shift_counter_reg_n_0_[1]\,
      I3 => \i2c_shift_counter_reg_n_0_[0]\,
      I4 => read_flag_reg_n_0,
      I5 => \i2c_cmd_read_byte[7]_i_3_n_0\,
      O => \i2c_cmd_read_byte[2]_i_2_n_0\
    );
\i2c_cmd_read_byte[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_cmd_read_byte[3]_i_2_n_0\,
      I1 => \i2c_cmd_read_byte_reg_n_0_[3]\,
      I2 => sda,
      O => \i2c_cmd_read_byte[3]_i_1_n_0\
    );
\i2c_cmd_read_byte[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[3]\,
      I1 => read_flag_reg_n_0,
      I2 => \i2c_shift_counter_reg_n_0_[2]\,
      I3 => \i2c_shift_counter_reg_n_0_[1]\,
      I4 => \i2c_shift_counter_reg_n_0_[0]\,
      I5 => \i2c_cmd_read_byte[7]_i_3_n_0\,
      O => \i2c_cmd_read_byte[3]_i_2_n_0\
    );
\i2c_cmd_read_byte[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_cmd_read_byte[4]_i_2_n_0\,
      I1 => \i2c_cmd_read_byte_reg_n_0_[4]\,
      I2 => sda,
      O => \i2c_cmd_read_byte[4]_i_1_n_0\
    );
\i2c_cmd_read_byte[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[0]\,
      I1 => \i2c_shift_counter_reg_n_0_[1]\,
      I2 => read_flag_reg_n_0,
      I3 => \i2c_shift_counter_reg_n_0_[2]\,
      I4 => \i2c_shift_counter_reg_n_0_[3]\,
      I5 => \i2c_cmd_read_byte[7]_i_3_n_0\,
      O => \i2c_cmd_read_byte[4]_i_2_n_0\
    );
\i2c_cmd_read_byte[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_cmd_read_byte[5]_i_2_n_0\,
      I1 => \i2c_cmd_read_byte_reg_n_0_[5]\,
      I2 => sda,
      O => \i2c_cmd_read_byte[5]_i_1_n_0\
    );
\i2c_cmd_read_byte[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[1]\,
      I1 => \i2c_shift_counter_reg_n_0_[0]\,
      I2 => read_flag_reg_n_0,
      I3 => \i2c_shift_counter_reg_n_0_[2]\,
      I4 => \i2c_shift_counter_reg_n_0_[3]\,
      I5 => \i2c_cmd_read_byte[7]_i_3_n_0\,
      O => \i2c_cmd_read_byte[5]_i_2_n_0\
    );
\i2c_cmd_read_byte[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_cmd_read_byte[6]_i_2_n_0\,
      I1 => \i2c_cmd_read_byte_reg_n_0_[6]\,
      I2 => sda,
      O => \i2c_cmd_read_byte[6]_i_1_n_0\
    );
\i2c_cmd_read_byte[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[1]\,
      I1 => \i2c_shift_counter_reg_n_0_[0]\,
      I2 => read_flag_reg_n_0,
      I3 => \i2c_shift_counter_reg_n_0_[2]\,
      I4 => \i2c_shift_counter_reg_n_0_[3]\,
      I5 => \i2c_cmd_read_byte[7]_i_3_n_0\,
      O => \i2c_cmd_read_byte[6]_i_2_n_0\
    );
\i2c_cmd_read_byte[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_cmd_read_byte[7]_i_2_n_0\,
      I1 => \i2c_cmd_read_byte_reg_n_0_[7]\,
      I2 => sda,
      O => \i2c_cmd_read_byte[7]_i_1_n_0\
    );
\i2c_cmd_read_byte[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[2]\,
      I1 => \i2c_shift_counter_reg_n_0_[1]\,
      I2 => \i2c_shift_counter_reg_n_0_[0]\,
      I3 => read_flag_reg_n_0,
      I4 => \i2c_shift_counter_reg_n_0_[3]\,
      I5 => \i2c_cmd_read_byte[7]_i_3_n_0\,
      O => \i2c_cmd_read_byte[7]_i_2_n_0\
    );
\i2c_cmd_read_byte[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => scl_freerunning,
      I1 => \i2c_state__0\(1),
      I2 => \i2c_state__0\(0),
      I3 => \i2c_state__0\(2),
      I4 => \i2c_state__0\(3),
      O => \i2c_cmd_read_byte[7]_i_3_n_0\
    );
\i2c_cmd_read_byte_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_cmd_read_byte[0]_i_1_n_0\,
      Q => \i2c_cmd_read_byte_reg_n_0_[0]\
    );
\i2c_cmd_read_byte_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_cmd_read_byte[1]_i_1_n_0\,
      Q => \i2c_cmd_read_byte_reg_n_0_[1]\
    );
\i2c_cmd_read_byte_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_cmd_read_byte[2]_i_1_n_0\,
      Q => \i2c_cmd_read_byte_reg_n_0_[2]\
    );
\i2c_cmd_read_byte_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_cmd_read_byte[3]_i_1_n_0\,
      Q => \i2c_cmd_read_byte_reg_n_0_[3]\
    );
\i2c_cmd_read_byte_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_cmd_read_byte[4]_i_1_n_0\,
      Q => \i2c_cmd_read_byte_reg_n_0_[4]\
    );
\i2c_cmd_read_byte_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_cmd_read_byte[5]_i_1_n_0\,
      Q => \i2c_cmd_read_byte_reg_n_0_[5]\
    );
\i2c_cmd_read_byte_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_cmd_read_byte[6]_i_1_n_0\,
      Q => \i2c_cmd_read_byte_reg_n_0_[6]\
    );
\i2c_cmd_read_byte_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_cmd_read_byte[7]_i_1_n_0\,
      Q => \i2c_cmd_read_byte_reg_n_0_[7]\
    );
\i2c_data_lsb_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[0]\,
      Q => i2c_data_lsb(0)
    );
\i2c_data_lsb_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[1]\,
      Q => i2c_data_lsb(1)
    );
\i2c_data_lsb_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[2]\,
      Q => i2c_data_lsb(2)
    );
\i2c_data_lsb_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[3]\,
      Q => i2c_data_lsb(3)
    );
\i2c_data_lsb_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[4]\,
      Q => i2c_data_lsb(4)
    );
\i2c_data_lsb_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[5]\,
      Q => i2c_data_lsb(5)
    );
\i2c_data_lsb_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[6]\,
      Q => i2c_data_lsb(6)
    );
\i2c_data_lsb_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[7]\,
      Q => i2c_data_lsb(7)
    );
\i2c_data_msb_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[8]\,
      Q => i2c_data_msb(0)
    );
\i2c_data_msb_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[9]\,
      Q => i2c_data_msb(1)
    );
\i2c_data_msb_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[10]\,
      Q => i2c_data_msb(2)
    );
\i2c_data_msb_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[11]\,
      Q => i2c_data_msb(3)
    );
\i2c_data_msb_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[12]\,
      Q => i2c_data_msb(4)
    );
\i2c_data_msb_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[13]\,
      Q => i2c_data_msb(5)
    );
\i2c_data_msb_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[14]\,
      Q => i2c_data_msb(6)
    );
\i2c_data_msb_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => \axi_gpio_in_r1_reg_n_0_[15]\,
      Q => i2c_data_msb(7)
    );
\i2c_lsb_data_read_byte[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_lsb_data_read_byte[0]_i_2_n_0\,
      I1 => \i2c_lsb_data_read_byte_reg_n_0_[0]\,
      I2 => sda,
      O => \i2c_lsb_data_read_byte[0]_i_1_n_0\
    );
\i2c_lsb_data_read_byte[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \i2c_lsb_data_read_byte[7]_i_3_n_0\,
      I1 => \i2c_shift_counter_reg_n_0_[3]\,
      I2 => \i2c_shift_counter_reg_n_0_[2]\,
      I3 => \i2c_shift_counter_reg_n_0_[1]\,
      I4 => \i2c_shift_counter_reg_n_0_[0]\,
      I5 => read_flag_reg_n_0,
      O => \i2c_lsb_data_read_byte[0]_i_2_n_0\
    );
\i2c_lsb_data_read_byte[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_lsb_data_read_byte[1]_i_2_n_0\,
      I1 => \i2c_lsb_data_read_byte_reg_n_0_[1]\,
      I2 => sda,
      O => \i2c_lsb_data_read_byte[1]_i_1_n_0\
    );
\i2c_lsb_data_read_byte[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \i2c_lsb_data_read_byte[7]_i_3_n_0\,
      I1 => \i2c_shift_counter_reg_n_0_[3]\,
      I2 => \i2c_shift_counter_reg_n_0_[2]\,
      I3 => \i2c_shift_counter_reg_n_0_[1]\,
      I4 => \i2c_shift_counter_reg_n_0_[0]\,
      I5 => read_flag_reg_n_0,
      O => \i2c_lsb_data_read_byte[1]_i_2_n_0\
    );
\i2c_lsb_data_read_byte[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_lsb_data_read_byte[2]_i_2_n_0\,
      I1 => \i2c_lsb_data_read_byte_reg_n_0_[2]\,
      I2 => sda,
      O => \i2c_lsb_data_read_byte[2]_i_1_n_0\
    );
\i2c_lsb_data_read_byte[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \i2c_lsb_data_read_byte[7]_i_3_n_0\,
      I1 => \i2c_shift_counter_reg_n_0_[3]\,
      I2 => \i2c_shift_counter_reg_n_0_[2]\,
      I3 => \i2c_shift_counter_reg_n_0_[1]\,
      I4 => \i2c_shift_counter_reg_n_0_[0]\,
      I5 => read_flag_reg_n_0,
      O => \i2c_lsb_data_read_byte[2]_i_2_n_0\
    );
\i2c_lsb_data_read_byte[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_lsb_data_read_byte[3]_i_2_n_0\,
      I1 => \i2c_lsb_data_read_byte_reg_n_0_[3]\,
      I2 => sda,
      O => \i2c_lsb_data_read_byte[3]_i_1_n_0\
    );
\i2c_lsb_data_read_byte[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \i2c_lsb_data_read_byte[7]_i_3_n_0\,
      I1 => \i2c_shift_counter_reg_n_0_[3]\,
      I2 => read_flag_reg_n_0,
      I3 => \i2c_shift_counter_reg_n_0_[2]\,
      I4 => \i2c_shift_counter_reg_n_0_[1]\,
      I5 => \i2c_shift_counter_reg_n_0_[0]\,
      O => \i2c_lsb_data_read_byte[3]_i_2_n_0\
    );
\i2c_lsb_data_read_byte[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_lsb_data_read_byte[4]_i_2_n_0\,
      I1 => \i2c_lsb_data_read_byte_reg_n_0_[4]\,
      I2 => sda,
      O => \i2c_lsb_data_read_byte[4]_i_1_n_0\
    );
\i2c_lsb_data_read_byte[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \i2c_lsb_data_read_byte[7]_i_3_n_0\,
      I1 => \i2c_shift_counter_reg_n_0_[0]\,
      I2 => \i2c_shift_counter_reg_n_0_[1]\,
      I3 => read_flag_reg_n_0,
      I4 => \i2c_shift_counter_reg_n_0_[2]\,
      I5 => \i2c_shift_counter_reg_n_0_[3]\,
      O => \i2c_lsb_data_read_byte[4]_i_2_n_0\
    );
\i2c_lsb_data_read_byte[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_lsb_data_read_byte[5]_i_2_n_0\,
      I1 => \i2c_lsb_data_read_byte_reg_n_0_[5]\,
      I2 => sda,
      O => \i2c_lsb_data_read_byte[5]_i_1_n_0\
    );
\i2c_lsb_data_read_byte[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \i2c_lsb_data_read_byte[7]_i_3_n_0\,
      I1 => \i2c_shift_counter_reg_n_0_[1]\,
      I2 => \i2c_shift_counter_reg_n_0_[0]\,
      I3 => read_flag_reg_n_0,
      I4 => \i2c_shift_counter_reg_n_0_[2]\,
      I5 => \i2c_shift_counter_reg_n_0_[3]\,
      O => \i2c_lsb_data_read_byte[5]_i_2_n_0\
    );
\i2c_lsb_data_read_byte[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_lsb_data_read_byte[6]_i_2_n_0\,
      I1 => \i2c_lsb_data_read_byte_reg_n_0_[6]\,
      I2 => sda,
      O => \i2c_lsb_data_read_byte[6]_i_1_n_0\
    );
\i2c_lsb_data_read_byte[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \i2c_lsb_data_read_byte[7]_i_3_n_0\,
      I1 => \i2c_shift_counter_reg_n_0_[1]\,
      I2 => \i2c_shift_counter_reg_n_0_[0]\,
      I3 => read_flag_reg_n_0,
      I4 => \i2c_shift_counter_reg_n_0_[2]\,
      I5 => \i2c_shift_counter_reg_n_0_[3]\,
      O => \i2c_lsb_data_read_byte[6]_i_2_n_0\
    );
\i2c_lsb_data_read_byte[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_lsb_data_read_byte[7]_i_2_n_0\,
      I1 => \i2c_lsb_data_read_byte_reg_n_0_[7]\,
      I2 => sda,
      O => \i2c_lsb_data_read_byte[7]_i_1_n_0\
    );
\i2c_lsb_data_read_byte[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[2]\,
      I1 => \i2c_shift_counter_reg_n_0_[1]\,
      I2 => \i2c_shift_counter_reg_n_0_[0]\,
      I3 => read_flag_reg_n_0,
      I4 => \i2c_shift_counter_reg_n_0_[3]\,
      I5 => \i2c_lsb_data_read_byte[7]_i_3_n_0\,
      O => \i2c_lsb_data_read_byte[7]_i_2_n_0\
    );
\i2c_lsb_data_read_byte[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \i2c_state__0\(2),
      I1 => \i2c_state__0\(1),
      I2 => \i2c_state__0\(3),
      I3 => \i2c_state__0\(0),
      I4 => scl_freerunning,
      O => \i2c_lsb_data_read_byte[7]_i_3_n_0\
    );
\i2c_lsb_data_read_byte_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_lsb_data_read_byte[0]_i_1_n_0\,
      Q => \i2c_lsb_data_read_byte_reg_n_0_[0]\
    );
\i2c_lsb_data_read_byte_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_lsb_data_read_byte[1]_i_1_n_0\,
      Q => \i2c_lsb_data_read_byte_reg_n_0_[1]\
    );
\i2c_lsb_data_read_byte_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_lsb_data_read_byte[2]_i_1_n_0\,
      Q => \i2c_lsb_data_read_byte_reg_n_0_[2]\
    );
\i2c_lsb_data_read_byte_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_lsb_data_read_byte[3]_i_1_n_0\,
      Q => \i2c_lsb_data_read_byte_reg_n_0_[3]\
    );
\i2c_lsb_data_read_byte_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_lsb_data_read_byte[4]_i_1_n_0\,
      Q => \i2c_lsb_data_read_byte_reg_n_0_[4]\
    );
\i2c_lsb_data_read_byte_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_lsb_data_read_byte[5]_i_1_n_0\,
      Q => \i2c_lsb_data_read_byte_reg_n_0_[5]\
    );
\i2c_lsb_data_read_byte_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_lsb_data_read_byte[6]_i_1_n_0\,
      Q => \i2c_lsb_data_read_byte_reg_n_0_[6]\
    );
\i2c_lsb_data_read_byte_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_lsb_data_read_byte[7]_i_1_n_0\,
      Q => \i2c_lsb_data_read_byte_reg_n_0_[7]\
    );
\i2c_msb_data_read_byte[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_msb_data_read_byte[0]_i_2_n_0\,
      I1 => i2c_msb_data_read_byte(0),
      I2 => sda,
      O => \i2c_msb_data_read_byte[0]_i_1_n_0\
    );
\i2c_msb_data_read_byte[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[3]\,
      I1 => \i2c_shift_counter_reg_n_0_[2]\,
      I2 => \i2c_shift_counter_reg_n_0_[1]\,
      I3 => \i2c_shift_counter_reg_n_0_[0]\,
      I4 => read_flag_reg_n_0,
      I5 => \i2c_msb_data_read_byte[7]_i_3_n_0\,
      O => \i2c_msb_data_read_byte[0]_i_2_n_0\
    );
\i2c_msb_data_read_byte[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_msb_data_read_byte[1]_i_2_n_0\,
      I1 => i2c_msb_data_read_byte(1),
      I2 => sda,
      O => \i2c_msb_data_read_byte[1]_i_1_n_0\
    );
\i2c_msb_data_read_byte[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[3]\,
      I1 => \i2c_shift_counter_reg_n_0_[2]\,
      I2 => \i2c_shift_counter_reg_n_0_[1]\,
      I3 => \i2c_shift_counter_reg_n_0_[0]\,
      I4 => read_flag_reg_n_0,
      I5 => \i2c_msb_data_read_byte[7]_i_3_n_0\,
      O => \i2c_msb_data_read_byte[1]_i_2_n_0\
    );
\i2c_msb_data_read_byte[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_msb_data_read_byte[2]_i_2_n_0\,
      I1 => i2c_msb_data_read_byte(2),
      I2 => sda,
      O => \i2c_msb_data_read_byte[2]_i_1_n_0\
    );
\i2c_msb_data_read_byte[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[3]\,
      I1 => \i2c_shift_counter_reg_n_0_[2]\,
      I2 => \i2c_shift_counter_reg_n_0_[1]\,
      I3 => \i2c_shift_counter_reg_n_0_[0]\,
      I4 => read_flag_reg_n_0,
      I5 => \i2c_msb_data_read_byte[7]_i_3_n_0\,
      O => \i2c_msb_data_read_byte[2]_i_2_n_0\
    );
\i2c_msb_data_read_byte[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_msb_data_read_byte[3]_i_2_n_0\,
      I1 => i2c_msb_data_read_byte(3),
      I2 => sda,
      O => \i2c_msb_data_read_byte[3]_i_1_n_0\
    );
\i2c_msb_data_read_byte[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[3]\,
      I1 => read_flag_reg_n_0,
      I2 => \i2c_shift_counter_reg_n_0_[2]\,
      I3 => \i2c_shift_counter_reg_n_0_[1]\,
      I4 => \i2c_shift_counter_reg_n_0_[0]\,
      I5 => \i2c_msb_data_read_byte[7]_i_3_n_0\,
      O => \i2c_msb_data_read_byte[3]_i_2_n_0\
    );
\i2c_msb_data_read_byte[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_msb_data_read_byte[4]_i_2_n_0\,
      I1 => i2c_msb_data_read_byte(4),
      I2 => sda,
      O => \i2c_msb_data_read_byte[4]_i_1_n_0\
    );
\i2c_msb_data_read_byte[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[0]\,
      I1 => \i2c_shift_counter_reg_n_0_[1]\,
      I2 => read_flag_reg_n_0,
      I3 => \i2c_shift_counter_reg_n_0_[2]\,
      I4 => \i2c_shift_counter_reg_n_0_[3]\,
      I5 => \i2c_msb_data_read_byte[7]_i_3_n_0\,
      O => \i2c_msb_data_read_byte[4]_i_2_n_0\
    );
\i2c_msb_data_read_byte[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_msb_data_read_byte[5]_i_2_n_0\,
      I1 => i2c_msb_data_read_byte(5),
      I2 => sda,
      O => \i2c_msb_data_read_byte[5]_i_1_n_0\
    );
\i2c_msb_data_read_byte[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[1]\,
      I1 => \i2c_shift_counter_reg_n_0_[0]\,
      I2 => read_flag_reg_n_0,
      I3 => \i2c_shift_counter_reg_n_0_[2]\,
      I4 => \i2c_shift_counter_reg_n_0_[3]\,
      I5 => \i2c_msb_data_read_byte[7]_i_3_n_0\,
      O => \i2c_msb_data_read_byte[5]_i_2_n_0\
    );
\i2c_msb_data_read_byte[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_msb_data_read_byte[6]_i_2_n_0\,
      I1 => i2c_msb_data_read_byte(6),
      I2 => sda,
      O => \i2c_msb_data_read_byte[6]_i_1_n_0\
    );
\i2c_msb_data_read_byte[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[1]\,
      I1 => \i2c_shift_counter_reg_n_0_[0]\,
      I2 => read_flag_reg_n_0,
      I3 => \i2c_shift_counter_reg_n_0_[2]\,
      I4 => \i2c_shift_counter_reg_n_0_[3]\,
      I5 => \i2c_msb_data_read_byte[7]_i_3_n_0\,
      O => \i2c_msb_data_read_byte[6]_i_2_n_0\
    );
\i2c_msb_data_read_byte[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \i2c_msb_data_read_byte[7]_i_2_n_0\,
      I1 => i2c_msb_data_read_byte(7),
      I2 => sda,
      O => \i2c_msb_data_read_byte[7]_i_1_n_0\
    );
\i2c_msb_data_read_byte[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[2]\,
      I1 => \i2c_shift_counter_reg_n_0_[1]\,
      I2 => \i2c_shift_counter_reg_n_0_[0]\,
      I3 => read_flag_reg_n_0,
      I4 => \i2c_shift_counter_reg_n_0_[3]\,
      I5 => \i2c_msb_data_read_byte[7]_i_3_n_0\,
      O => \i2c_msb_data_read_byte[7]_i_2_n_0\
    );
\i2c_msb_data_read_byte[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => \i2c_state__0\(3),
      I1 => \i2c_state__0\(1),
      I2 => \i2c_state__0\(2),
      I3 => \i2c_state__0\(0),
      I4 => scl_freerunning,
      O => \i2c_msb_data_read_byte[7]_i_3_n_0\
    );
\i2c_msb_data_read_byte_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_msb_data_read_byte[0]_i_1_n_0\,
      Q => i2c_msb_data_read_byte(0)
    );
\i2c_msb_data_read_byte_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_msb_data_read_byte[1]_i_1_n_0\,
      Q => i2c_msb_data_read_byte(1)
    );
\i2c_msb_data_read_byte_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_msb_data_read_byte[2]_i_1_n_0\,
      Q => i2c_msb_data_read_byte(2)
    );
\i2c_msb_data_read_byte_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_msb_data_read_byte[3]_i_1_n_0\,
      Q => i2c_msb_data_read_byte(3)
    );
\i2c_msb_data_read_byte_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_msb_data_read_byte[4]_i_1_n_0\,
      Q => i2c_msb_data_read_byte(4)
    );
\i2c_msb_data_read_byte_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_msb_data_read_byte[5]_i_1_n_0\,
      Q => i2c_msb_data_read_byte(5)
    );
\i2c_msb_data_read_byte_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_msb_data_read_byte[6]_i_1_n_0\,
      Q => i2c_msb_data_read_byte(6)
    );
\i2c_msb_data_read_byte_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \i2c_msb_data_read_byte[7]_i_1_n_0\,
      Q => i2c_msb_data_read_byte(7)
    );
\i2c_shift_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011114440"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[0]\,
      I1 => \i2c_state__0\(3),
      I2 => \i2c_state__0\(2),
      I3 => \i2c_state__0\(0),
      I4 => \i2c_state__0\(1),
      I5 => \i2c_shift_counter[2]_i_3_n_0\,
      O => \i2c_shift_counter[0]_i_1_n_0\
    );
\i2c_shift_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011114440"
    )
        port map (
      I0 => \i2c_shift_counter[1]_i_2_n_0\,
      I1 => \i2c_state__0\(3),
      I2 => \i2c_state__0\(2),
      I3 => \i2c_state__0\(0),
      I4 => \i2c_state__0\(1),
      I5 => \i2c_shift_counter[2]_i_3_n_0\,
      O => i2c_shift_counter(1)
    );
\i2c_shift_counter[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[0]\,
      I1 => \i2c_shift_counter_reg_n_0_[1]\,
      O => \i2c_shift_counter[1]_i_2_n_0\
    );
\i2c_shift_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022228880"
    )
        port map (
      I0 => \i2c_shift_counter[2]_i_2_n_0\,
      I1 => \i2c_state__0\(3),
      I2 => \i2c_state__0\(2),
      I3 => \i2c_state__0\(0),
      I4 => \i2c_state__0\(1),
      I5 => \i2c_shift_counter[2]_i_3_n_0\,
      O => i2c_shift_counter(2)
    );
\i2c_shift_counter[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[0]\,
      I1 => \i2c_shift_counter_reg_n_0_[1]\,
      I2 => \i2c_shift_counter_reg_n_0_[2]\,
      O => \i2c_shift_counter[2]_i_2_n_0\
    );
\i2c_shift_counter[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[3]\,
      I1 => \i2c_shift_counter_reg_n_0_[0]\,
      I2 => \i2c_shift_counter_reg_n_0_[1]\,
      I3 => \i2c_shift_counter_reg_n_0_[2]\,
      O => \i2c_shift_counter[2]_i_3_n_0\
    );
\i2c_shift_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1414154000141400"
    )
        port map (
      I0 => scl_freerunning,
      I1 => \i2c_state__0\(2),
      I2 => \i2c_state__0\(0),
      I3 => \i2c_state__0\(3),
      I4 => \i2c_state__0\(1),
      I5 => \i2c_shift_counter[3]_i_3_n_0\,
      O => \i2c_shift_counter[3]_i_1_n_0\
    );
\i2c_shift_counter[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9F99F99F9F99FFF"
    )
        port map (
      I0 => \i2c_shift_counter[3]_i_4_n_0\,
      I1 => \i2c_shift_counter_reg_n_0_[3]\,
      I2 => \i2c_state__0\(3),
      I3 => \i2c_state__0\(2),
      I4 => \i2c_state__0\(1),
      I5 => \i2c_state__0\(0),
      O => i2c_shift_counter(3)
    );
\i2c_shift_counter[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[2]\,
      I1 => \delay_counter_reg_n_0_[1]\,
      I2 => \delay_counter_reg_n_0_[0]\,
      O => \i2c_shift_counter[3]_i_3_n_0\
    );
\i2c_shift_counter[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[2]\,
      I1 => \i2c_shift_counter_reg_n_0_[1]\,
      I2 => \i2c_shift_counter_reg_n_0_[0]\,
      O => \i2c_shift_counter[3]_i_4_n_0\
    );
\i2c_shift_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \i2c_shift_counter[3]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \i2c_shift_counter[0]_i_1_n_0\,
      Q => \i2c_shift_counter_reg_n_0_[0]\
    );
\i2c_shift_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \i2c_shift_counter[3]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => i2c_shift_counter(1),
      Q => \i2c_shift_counter_reg_n_0_[1]\
    );
\i2c_shift_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \i2c_shift_counter[3]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => i2c_shift_counter(2),
      Q => \i2c_shift_counter_reg_n_0_[2]\
    );
\i2c_shift_counter_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \i2c_shift_counter[3]_i_1_n_0\,
      D => i2c_shift_counter(3),
      PRE => \^rst_n_0\,
      Q => \i2c_shift_counter_reg_n_0_[3]\
    );
read_flag_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => read_flag15_out,
      CLR => \^rst_n_0\,
      D => p_0_in,
      Q => read_flag_reg_n_0
    );
scl_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => scl_active_reg_n_0,
      I1 => scl_r_reg_n_0,
      I2 => scl_freerunning,
      O => scl
    );
scl_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00000002"
    )
        port map (
      I0 => \i2c_state__0\(0),
      I1 => \i2c_state__0\(2),
      I2 => \i2c_state__0\(1),
      I3 => \i2c_state__0\(3),
      I4 => scl_freerunning,
      I5 => scl_active_reg_n_0,
      O => scl_active_i_1_n_0
    );
scl_active_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      CLR => \^rst_n_0\,
      D => scl_active_i_1_n_0,
      Q => scl_active_reg_n_0
    );
scl_freerunning_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAE5551"
    )
        port map (
      I0 => \i2c_clk_counter[5]_i_2_n_0\,
      I1 => \i2c_clk_counter[7]_i_3_n_0\,
      I2 => i2c_clk_counter(4),
      I3 => i2c_clk_counter(5),
      I4 => scl_freerunning,
      O => scl_freerunning_i_1_n_0
    );
scl_freerunning_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => scl_freerunning_i_1_n_0,
      PRE => \^rst_n_0\,
      Q => scl_freerunning
    );
scl_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0666FFFF06660000"
    )
        port map (
      I0 => \i2c_state__0\(1),
      I1 => \i2c_state__0\(3),
      I2 => \i2c_state__0\(0),
      I3 => \i2c_state__0\(2),
      I4 => scl_r_i_2_n_0,
      I5 => scl_r_reg_n_0,
      O => scl_r_i_1_n_0
    );
scl_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1514514405145144"
    )
        port map (
      I0 => scl_freerunning,
      I1 => \i2c_state__0\(0),
      I2 => \i2c_state__0\(3),
      I3 => \i2c_state__0\(2),
      I4 => \i2c_state__0\(1),
      I5 => \i2c_shift_counter[3]_i_3_n_0\,
      O => scl_r_i_2_n_0
    );
scl_r_reg: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => '1',
      D => scl_r_i_1_n_0,
      PRE => \^rst_n_0\,
      Q => scl_r_reg_n_0
    );
sda_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sda_r_tristate_oe_reg_n_0,
      I1 => sda_0,
      O => sda
    );
sda_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D522EB6FD53FFF7F"
    )
        port map (
      I0 => read_flag_reg_n_0,
      I1 => \i2c_state__0\(1),
      I2 => \i2c_state__0\(3),
      I3 => \i2c_state__0\(2),
      I4 => \i2c_state__0\(0),
      I5 => \i2c_shift_counter[2]_i_3_n_0\,
      O => sda_r0
    );
sda_r_tristate_oe_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444455544444"
    )
        port map (
      I0 => scl_freerunning,
      I1 => sda_r_tristate_oe_i_3_n_0,
      I2 => sda_r_tristate_oe_i_4_n_0,
      I3 => sda_r_tristate_oe_i_5_n_0,
      I4 => sda_r_tristate_oe_i_6_n_0,
      I5 => \i2c_state__0\(0),
      O => \^scl_freerunning_reg_0\
    );
sda_r_tristate_oe_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030002000000020"
    )
        port map (
      I0 => sda_r_tristate_oe_i_17_n_0,
      I1 => \i2c_state__0\(2),
      I2 => \i2c_state__0\(3),
      I3 => read_flag_reg_n_0,
      I4 => \i2c_shift_counter[2]_i_2_n_0\,
      I5 => sda_r_tristate_oe_i_18_n_0,
      O => sda_r_tristate_oe_i_10_n_0
    );
sda_r_tristate_oe_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[2]\,
      I1 => \i2c_shift_counter_reg_n_0_[1]\,
      I2 => \i2c_shift_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_counter_reg_n_0_[3]\,
      I4 => read_flag_reg_n_0,
      O => sda_r_tristate_oe_i_11_n_0
    );
sda_r_tristate_oe_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => i2c_data_lsb(0),
      I1 => i2c_data_lsb(1),
      I2 => \i2c_shift_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_counter_reg_n_0_[1]\,
      I4 => i2c_data_lsb(2),
      I5 => i2c_data_lsb(3),
      O => sda_r_tristate_oe_i_12_n_0
    );
sda_r_tristate_oe_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => i2c_data_lsb(4),
      I1 => i2c_data_lsb(5),
      I2 => \i2c_shift_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_counter_reg_n_0_[1]\,
      I4 => i2c_data_lsb(6),
      I5 => i2c_data_lsb(7),
      O => sda_r_tristate_oe_i_13_n_0
    );
sda_r_tristate_oe_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \i2c_cmd_byte_reg_n_0_[0]\,
      I1 => \i2c_cmd_byte_reg_n_0_[1]\,
      I2 => \i2c_shift_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_counter_reg_n_0_[1]\,
      I4 => \i2c_cmd_byte_reg_n_0_[2]\,
      I5 => \i2c_cmd_byte_reg_n_0_[3]\,
      O => sda_r_tristate_oe_i_14_n_0
    );
sda_r_tristate_oe_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \i2c_cmd_byte_reg_n_0_[4]\,
      I1 => \i2c_cmd_byte_reg_n_0_[5]\,
      I2 => \i2c_shift_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_counter_reg_n_0_[1]\,
      I4 => \i2c_cmd_byte_reg_n_0_[6]\,
      I5 => \i2c_cmd_byte_reg_n_0_[7]\,
      O => sda_r_tristate_oe_i_15_n_0
    );
sda_r_tristate_oe_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5B595351"
    )
        port map (
      I0 => \i2c_shift_counter_reg_n_0_[0]\,
      I1 => \i2c_shift_counter_reg_n_0_[1]\,
      I2 => \i2c_shift_counter_reg_n_0_[2]\,
      I3 => read_flag_reg_n_0,
      I4 => \i2c_address_byte_reg_n_0_[2]\,
      O => sda_r_tristate_oe_i_16_n_0
    );
sda_r_tristate_oe_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => i2c_data_msb(0),
      I1 => i2c_data_msb(1),
      I2 => \i2c_shift_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_counter_reg_n_0_[1]\,
      I4 => i2c_data_msb(2),
      I5 => i2c_data_msb(3),
      O => sda_r_tristate_oe_i_17_n_0
    );
sda_r_tristate_oe_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => i2c_data_msb(4),
      I1 => i2c_data_msb(5),
      I2 => \i2c_shift_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_counter_reg_n_0_[1]\,
      I4 => i2c_data_msb(6),
      I5 => i2c_data_msb(7),
      O => sda_r_tristate_oe_i_18_n_0
    );
sda_r_tristate_oe_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF5514"
    )
        port map (
      I0 => sda_r_tristate_oe_i_7_n_0,
      I1 => \i2c_state__0\(2),
      I2 => \i2c_state__0\(1),
      I3 => sda_r_tristate_oe_i_8_n_0,
      I4 => sda_r_tristate_oe_i_9_n_0,
      I5 => sda_r_tristate_oe_i_10_n_0,
      O => sda_r
    );
sda_r_tristate_oe_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF0AF0F00A00A000"
    )
        port map (
      I0 => sda_r_tristate_oe_i_11_n_0,
      I1 => \axi_gpio_out[23]_i_3_n_0\,
      I2 => \i2c_state__0\(1),
      I3 => \i2c_state__0\(2),
      I4 => \i2c_state__0\(3),
      I5 => \i2c_state__0\(0),
      O => sda_r_tristate_oe_i_3_n_0
    );
sda_r_tristate_oe_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \i2c_state__0\(1),
      I1 => \i2c_state__0\(2),
      O => sda_r_tristate_oe_i_4_n_0
    );
sda_r_tristate_oe_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => \i2c_state__0\(3),
      I1 => \delay_counter_reg_n_0_[0]\,
      I2 => \delay_counter_reg_n_0_[1]\,
      I3 => \delay_counter_reg_n_0_[2]\,
      O => sda_r_tristate_oe_i_5_n_0
    );
sda_r_tristate_oe_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \i2c_state__0\(1),
      I1 => \i2c_state__0\(3),
      O => sda_r_tristate_oe_i_6_n_0
    );
sda_r_tristate_oe_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF1BFFFF0000"
    )
        port map (
      I0 => \i2c_shift_counter[2]_i_2_n_0\,
      I1 => sda_r_tristate_oe_i_12_n_0,
      I2 => sda_r_tristate_oe_i_13_n_0,
      I3 => read_flag_reg_n_0,
      I4 => \i2c_state__0\(0),
      I5 => \i2c_state__0\(3),
      O => sda_r_tristate_oe_i_7_n_0
    );
sda_r_tristate_oe_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030002000000020"
    )
        port map (
      I0 => sda_r_tristate_oe_i_14_n_0,
      I1 => read_flag_reg_n_0,
      I2 => \i2c_state__0\(1),
      I3 => \i2c_state__0\(3),
      I4 => \i2c_shift_counter[2]_i_2_n_0\,
      I5 => sda_r_tristate_oe_i_15_n_0,
      O => sda_r_tristate_oe_i_8_n_0
    );
sda_r_tristate_oe_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFAA00FF00CF"
    )
        port map (
      I0 => sda_r_tristate_oe_i_16_n_0,
      I1 => axi_gpio_in_r2(31),
      I2 => p_1_in22_in,
      I3 => \i2c_state__0\(2),
      I4 => \i2c_state__0\(3),
      I5 => \i2c_state__0\(0),
      O => sda_r_tristate_oe_i_9_n_0
    );
sda_r_tristate_oe_reg: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^ctrl_clk\,
      CE => \^scl_freerunning_reg_0\,
      D => sda_r,
      PRE => \^rst_n_0\,
      Q => sda_r_tristate_oe_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adc_tech_i2c_master_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    axi_gpio_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_gpio_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sda : inout STD_LOGIC;
    scl : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of adc_tech_i2c_master_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of adc_tech_i2c_master_0_0 : entity is "adc_tech_i2c_master_0_0,i2c_master,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of adc_tech_i2c_master_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of adc_tech_i2c_master_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of adc_tech_i2c_master_0_0 : entity is "i2c_master,Vivado 2020.2";
end adc_tech_i2c_master_0_0;

architecture STRUCTURE of adc_tech_i2c_master_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal U0_n_0 : STD_LOGIC;
  signal U0_n_2 : STD_LOGIC;
  signal \^axi_gpio_out\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal ctrl_clk : STD_LOGIC;
  signal sda_INST_0_i_1_n_0 : STD_LOGIC;
  signal sda_r0 : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN adc_tech_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute x_interface_parameter of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  axi_gpio_out(31) <= \<const0>\;
  axi_gpio_out(30) <= \<const0>\;
  axi_gpio_out(29) <= \<const0>\;
  axi_gpio_out(28) <= \<const0>\;
  axi_gpio_out(27) <= \<const0>\;
  axi_gpio_out(26) <= \<const0>\;
  axi_gpio_out(25) <= \<const0>\;
  axi_gpio_out(24) <= \<const0>\;
  axi_gpio_out(23 downto 0) <= \^axi_gpio_out\(23 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.adc_tech_i2c_master_0_0_i2c_master
     port map (
      axi_gpio_in(26 downto 25) => axi_gpio_in(31 downto 30),
      axi_gpio_in(24 downto 0) => axi_gpio_in(24 downto 0),
      axi_gpio_out(23 downto 0) => \^axi_gpio_out\(23 downto 0),
      clk => clk,
      ctrl_clk => ctrl_clk,
      rst_n => rst_n,
      rst_n_0 => U0_n_2,
      scl => scl,
      scl_freerunning_reg_0 => U0_n_0,
      sda => sda,
      sda_0 => sda_INST_0_i_1_n_0,
      sda_r0 => sda_r0
    );
sda_INST_0_i_1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ctrl_clk,
      CE => U0_n_0,
      D => sda_r0,
      PRE => U0_n_2,
      Q => sda_INST_0_i_1_n_0
    );
end STRUCTURE;

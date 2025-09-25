--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Thu Sep 25 13:50:12 2025
--Host        : ZA-WASADIE1 running 64-bit major release  (build 9200)
--Command     : generate_target adc_tech_wrapper.bd
--Design      : adc_tech_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adc_tech_wrapper is
  port (
    counting_flag : out STD_LOGIC;
    debug0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    debug1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    debug2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    i2c_scl : inout STD_LOGIC;
    i2c_sda : inout STD_LOGIC;
    my_i2c_scl : out STD_LOGIC;
    my_i2c_sda : inout STD_LOGIC;
    pl_clk_n : in STD_LOGIC;
    pl_clk_p : in STD_LOGIC;
    pl_led0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pl_led1 : out STD_LOGIC;
    pl_led2 : out STD_LOGIC;
    pl_led3 : out STD_LOGIC;
    pulse_in_n : in STD_LOGIC;
    pulse_in_p : in STD_LOGIC;
    sync_in : in STD_LOGIC
  );
end adc_tech_wrapper;

architecture STRUCTURE of adc_tech_wrapper is
  component adc_tech is
  port (
    pl_clk_p : in STD_LOGIC;
    pl_led0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pl_led1 : out STD_LOGIC;
    pl_led2 : out STD_LOGIC;
    pl_led3 : out STD_LOGIC;
    pl_clk_n : in STD_LOGIC;
    i2c_sda : inout STD_LOGIC;
    i2c_scl : inout STD_LOGIC;
    my_i2c_scl : out STD_LOGIC;
    my_i2c_sda : inout STD_LOGIC;
    pulse_in_p : in STD_LOGIC;
    sync_in : in STD_LOGIC;
    counting_flag : out STD_LOGIC;
    pulse_in_n : in STD_LOGIC;
    debug0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    debug1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    debug2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component adc_tech;
begin
adc_tech_i: component adc_tech
     port map (
      counting_flag => counting_flag,
      debug0(0) => debug0(0),
      debug1(0) => debug1(0),
      debug2(0) => debug2(0),
      i2c_scl => i2c_scl,
      i2c_sda => i2c_sda,
      my_i2c_scl => my_i2c_scl,
      my_i2c_sda => my_i2c_sda,
      pl_clk_n => pl_clk_n,
      pl_clk_p => pl_clk_p,
      pl_led0(0) => pl_led0(0),
      pl_led1 => pl_led1,
      pl_led2 => pl_led2,
      pl_led3 => pl_led3,
      pulse_in_n => pulse_in_n,
      pulse_in_p => pulse_in_p,
      sync_in => sync_in
    );
end STRUCTURE;

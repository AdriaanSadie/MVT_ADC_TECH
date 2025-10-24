--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Thu Oct 23 14:31:06 2025
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
    my_i2c_scl : out STD_LOGIC;
    my_i2c_sda : inout STD_LOGIC;
    pl_clk_n : in STD_LOGIC;
    pl_clk_p : in STD_LOGIC;
    pl_led0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pulse_in_n0 : in STD_LOGIC;
    pulse_in_n1 : in STD_LOGIC;
    pulse_in_n10 : in STD_LOGIC;
    pulse_in_n11 : in STD_LOGIC;
    pulse_in_n12 : in STD_LOGIC;
    pulse_in_n13 : in STD_LOGIC;
    pulse_in_n14 : in STD_LOGIC;
    pulse_in_n15 : in STD_LOGIC;
    pulse_in_n2 : in STD_LOGIC;
    pulse_in_n3 : in STD_LOGIC;
    pulse_in_n4 : in STD_LOGIC;
    pulse_in_n5 : in STD_LOGIC;
    pulse_in_n6 : in STD_LOGIC;
    pulse_in_n7 : in STD_LOGIC;
    pulse_in_n8 : in STD_LOGIC;
    pulse_in_n9 : in STD_LOGIC;
    pulse_in_p0 : in STD_LOGIC;
    pulse_in_p1 : in STD_LOGIC;
    pulse_in_p10 : in STD_LOGIC;
    pulse_in_p11 : in STD_LOGIC;
    pulse_in_p12 : in STD_LOGIC;
    pulse_in_p13 : in STD_LOGIC;
    pulse_in_p14 : in STD_LOGIC;
    pulse_in_p15 : in STD_LOGIC;
    pulse_in_p2 : in STD_LOGIC;
    pulse_in_p3 : in STD_LOGIC;
    pulse_in_p4 : in STD_LOGIC;
    pulse_in_p5 : in STD_LOGIC;
    pulse_in_p6 : in STD_LOGIC;
    pulse_in_p7 : in STD_LOGIC;
    pulse_in_p8 : in STD_LOGIC;
    pulse_in_p9 : in STD_LOGIC;
    sync_in : in STD_LOGIC
  );
end adc_tech_wrapper;

architecture STRUCTURE of adc_tech_wrapper is
  component adc_tech is
  port (
    pl_clk_p : in STD_LOGIC;
    pl_led0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pl_clk_n : in STD_LOGIC;
    my_i2c_scl : out STD_LOGIC;
    my_i2c_sda : inout STD_LOGIC;
    pulse_in_p0 : in STD_LOGIC;
    sync_in : in STD_LOGIC;
    counting_flag : out STD_LOGIC;
    pulse_in_n0 : in STD_LOGIC;
    pulse_in_n1 : in STD_LOGIC;
    pulse_in_p1 : in STD_LOGIC;
    pulse_in_p2 : in STD_LOGIC;
    pulse_in_n2 : in STD_LOGIC;
    pulse_in_p3 : in STD_LOGIC;
    pulse_in_n3 : in STD_LOGIC;
    debug0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    debug1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    debug2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pulse_in_p4 : in STD_LOGIC;
    pulse_in_n4 : in STD_LOGIC;
    pulse_in_p5 : in STD_LOGIC;
    pulse_in_n5 : in STD_LOGIC;
    pulse_in_p6 : in STD_LOGIC;
    pulse_in_n6 : in STD_LOGIC;
    pulse_in_p7 : in STD_LOGIC;
    pulse_in_n7 : in STD_LOGIC;
    pulse_in_p8 : in STD_LOGIC;
    pulse_in_n8 : in STD_LOGIC;
    pulse_in_p9 : in STD_LOGIC;
    pulse_in_n9 : in STD_LOGIC;
    pulse_in_p10 : in STD_LOGIC;
    pulse_in_n10 : in STD_LOGIC;
    pulse_in_p11 : in STD_LOGIC;
    pulse_in_n11 : in STD_LOGIC;
    pulse_in_p12 : in STD_LOGIC;
    pulse_in_n12 : in STD_LOGIC;
    pulse_in_p13 : in STD_LOGIC;
    pulse_in_n13 : in STD_LOGIC;
    pulse_in_p14 : in STD_LOGIC;
    pulse_in_n14 : in STD_LOGIC;
    pulse_in_p15 : in STD_LOGIC;
    pulse_in_n15 : in STD_LOGIC
  );
  end component adc_tech;
begin
adc_tech_i: component adc_tech
     port map (
      counting_flag => counting_flag,
      debug0(0) => debug0(0),
      debug1(0) => debug1(0),
      debug2(0) => debug2(0),
      my_i2c_scl => my_i2c_scl,
      my_i2c_sda => my_i2c_sda,
      pl_clk_n => pl_clk_n,
      pl_clk_p => pl_clk_p,
      pl_led0(0) => pl_led0(0),
      pulse_in_n0 => pulse_in_n0,
      pulse_in_n1 => pulse_in_n1,
      pulse_in_n10 => pulse_in_n10,
      pulse_in_n11 => pulse_in_n11,
      pulse_in_n12 => pulse_in_n12,
      pulse_in_n13 => pulse_in_n13,
      pulse_in_n14 => pulse_in_n14,
      pulse_in_n15 => pulse_in_n15,
      pulse_in_n2 => pulse_in_n2,
      pulse_in_n3 => pulse_in_n3,
      pulse_in_n4 => pulse_in_n4,
      pulse_in_n5 => pulse_in_n5,
      pulse_in_n6 => pulse_in_n6,
      pulse_in_n7 => pulse_in_n7,
      pulse_in_n8 => pulse_in_n8,
      pulse_in_n9 => pulse_in_n9,
      pulse_in_p0 => pulse_in_p0,
      pulse_in_p1 => pulse_in_p1,
      pulse_in_p10 => pulse_in_p10,
      pulse_in_p11 => pulse_in_p11,
      pulse_in_p12 => pulse_in_p12,
      pulse_in_p13 => pulse_in_p13,
      pulse_in_p14 => pulse_in_p14,
      pulse_in_p15 => pulse_in_p15,
      pulse_in_p2 => pulse_in_p2,
      pulse_in_p3 => pulse_in_p3,
      pulse_in_p4 => pulse_in_p4,
      pulse_in_p5 => pulse_in_p5,
      pulse_in_p6 => pulse_in_p6,
      pulse_in_p7 => pulse_in_p7,
      pulse_in_p8 => pulse_in_p8,
      pulse_in_p9 => pulse_in_p9,
      sync_in => sync_in
    );
end STRUCTURE;

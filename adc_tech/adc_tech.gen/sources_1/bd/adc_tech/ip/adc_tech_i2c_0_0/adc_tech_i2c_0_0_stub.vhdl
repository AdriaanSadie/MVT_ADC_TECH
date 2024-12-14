-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Dec 11 11:47:40 2024
-- Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/work/MVT_ADC_TECH/adc_tech/adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_i2c_0_0/adc_tech_i2c_0_0_stub.vhdl
-- Design      : adc_tech_i2c_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adc_tech_i2c_0_0 is
  Port ( 
    clk_in : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    axi_gpio_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    scl : out STD_LOGIC;
    sda : inout STD_LOGIC
  );

end adc_tech_i2c_0_0;

architecture stub of adc_tech_i2c_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,rst_n,axi_gpio_in[31:0],scl,sda";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "i2c,Vivado 2020.2";
begin
end;

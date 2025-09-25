-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Sep 25 13:50:57 2025
-- Host        : ZA-WASADIE1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/work/Technology/Vivado/MVT_ADC_TECH/adc_tech/adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_dac_cal_0_0/adc_tech_dac_cal_0_0_stub.vhdl
-- Design      : adc_tech_dac_cal_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adc_tech_dac_cal_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    sync_in : in STD_LOGIC;
    pulse_in : in STD_LOGIC;
    control : in STD_LOGIC_VECTOR ( 31 downto 0 );
    counting_flag : out STD_LOGIC;
    counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end adc_tech_dac_cal_0_0;

architecture stub of adc_tech_dac_cal_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,sync_in,pulse_in,control[31:0],counting_flag,counter[31:0],debug[2:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dac_cal,Vivado 2020.2";
begin
end;

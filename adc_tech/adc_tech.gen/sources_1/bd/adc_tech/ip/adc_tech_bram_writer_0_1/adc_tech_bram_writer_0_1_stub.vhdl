-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Oct  2 08:30:56 2025
-- Host        : ZA-WASADIE1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/work/Technology/Vivado/MVT_ADC_TECH/adc_tech/adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_bram_writer_0_1/adc_tech_bram_writer_0_1_stub.vhdl
-- Design      : adc_tech_bram_writer_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adc_tech_bram_writer_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    start : in STD_LOGIC;
    addra : out STD_LOGIC_VECTOR ( 12 downto 0 );
    dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wea : out STD_LOGIC;
    done : out STD_LOGIC
  );

end adc_tech_bram_writer_0_1;

architecture stub of adc_tech_bram_writer_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset_n,start,addra[12:0],dia[31:0],wea,done";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "bram_writer,Vivado 2020.2";
begin
end;

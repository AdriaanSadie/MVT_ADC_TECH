-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Oct 23 14:31:47 2025
-- Host        : ZA-WASADIE1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adc_tech_dac_cal_0_0_stub.vhdl
-- Design      : adc_tech_dac_cal_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,sync_in,pulse_in[15:0],control[31:0],counting_flag,counter[31:0],bram_data[31:0],bram_addr[15:0],bram_we,debug[2:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dac_cal,Vivado 2020.2";
begin
end;

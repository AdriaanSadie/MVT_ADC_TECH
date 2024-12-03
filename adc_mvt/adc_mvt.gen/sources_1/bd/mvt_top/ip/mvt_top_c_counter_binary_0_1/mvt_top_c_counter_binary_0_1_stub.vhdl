-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Jun 18 07:32:22 2024
-- Host        : ZA-WASADIE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top mvt_top_c_counter_binary_0_1 -prefix
--               mvt_top_c_counter_binary_0_1_ mvt_top_c_counter_binary_0_0_stub.vhdl
-- Design      : mvt_top_c_counter_binary_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mvt_top_c_counter_binary_0_1 is
  Port ( 
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end mvt_top_c_counter_binary_0_1;

architecture stub of mvt_top_c_counter_binary_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,Q[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_counter_binary_v12_0_16,Vivado 2023.1";
begin
end;

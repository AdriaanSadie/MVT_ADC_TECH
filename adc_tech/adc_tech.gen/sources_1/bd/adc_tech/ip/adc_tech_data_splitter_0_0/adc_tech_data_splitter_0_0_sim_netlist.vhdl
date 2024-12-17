-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Dec 17 19:46:41 2024
-- Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/work/MVT_ADC_TECH/adc_tech/adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_data_splitter_0_0/adc_tech_data_splitter_0_0_sim_netlist.vhdl
-- Design      : adc_tech_data_splitter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adc_tech_data_splitter_0_0 is
  port (
    port_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    port_out0 : out STD_LOGIC;
    port_out1 : out STD_LOGIC;
    port_out2 : out STD_LOGIC;
    port_out3 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of adc_tech_data_splitter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of adc_tech_data_splitter_0_0 : entity is "adc_tech_data_splitter_0_0,data_splitter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of adc_tech_data_splitter_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of adc_tech_data_splitter_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of adc_tech_data_splitter_0_0 : entity is "data_splitter,Vivado 2020.2";
end adc_tech_data_splitter_0_0;

architecture STRUCTURE of adc_tech_data_splitter_0_0 is
begin
port_out0_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => port_in(0),
      O => port_out0
    );
port_out1_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => port_in(1),
      O => port_out1
    );
port_out2_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => port_in(2),
      O => port_out2
    );
port_out3_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => port_in(3),
      O => port_out3
    );
end STRUCTURE;

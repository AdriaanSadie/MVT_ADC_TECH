-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Oct 22 10:23:16 2025
-- Host        : ZA-WASADIE1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adc_tech_data_acquitision_0_0_sim_netlist.vhdl
-- Design      : adc_tech_data_acquitision_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_acquitision is
  port (
    adc_encoded : out STD_LOGIC_VECTOR ( 3 downto 0 );
    adc_frontend : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_acquitision;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_acquitision is
  signal \adc_encoded[0]_i_1_n_0\ : STD_LOGIC;
  signal \adc_encoded[0]_i_2_n_0\ : STD_LOGIC;
  signal \adc_encoded[0]_i_3_n_0\ : STD_LOGIC;
  signal \adc_encoded[0]_i_4_n_0\ : STD_LOGIC;
  signal \adc_encoded[0]_i_5_n_0\ : STD_LOGIC;
  signal \adc_encoded[0]_i_6_n_0\ : STD_LOGIC;
  signal \adc_encoded[1]_i_1_n_0\ : STD_LOGIC;
  signal \adc_encoded[1]_i_2_n_0\ : STD_LOGIC;
  signal \adc_encoded[2]_i_1_n_0\ : STD_LOGIC;
  signal \adc_encoded[3]_i_2_n_0\ : STD_LOGIC;
  signal \adc_encoded[3]_i_3_n_0\ : STD_LOGIC;
  signal \adc_encoded[3]_i_4_n_0\ : STD_LOGIC;
  signal \adc_encoded[3]_i_5_n_0\ : STD_LOGIC;
  signal \adc_encoded[3]_i_6_n_0\ : STD_LOGIC;
  signal adc_encoded_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \adc_encoded[0]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \adc_encoded[0]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \adc_encoded[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adc_encoded[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adc_encoded[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \adc_encoded[3]_i_5\ : label is "soft_lutpair1";
begin
\adc_encoded[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111110001"
    )
        port map (
      I0 => \adc_encoded[0]_i_2_n_0\,
      I1 => \adc_encoded[0]_i_3_n_0\,
      I2 => \adc_encoded[0]_i_4_n_0\,
      I3 => adc_frontend(11),
      I4 => \adc_encoded[0]_i_5_n_0\,
      I5 => \adc_encoded[0]_i_6_n_0\,
      O => \adc_encoded[0]_i_1_n_0\
    );
\adc_encoded[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2222F222"
    )
        port map (
      I0 => adc_frontend(1),
      I1 => adc_frontend(2),
      I2 => adc_frontend(5),
      I3 => adc_frontend(3),
      I4 => adc_frontend(6),
      O => \adc_encoded[0]_i_2_n_0\
    );
\adc_encoded[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => adc_frontend(0),
      I1 => adc_frontend(3),
      I2 => adc_frontend(4),
      O => \adc_encoded[0]_i_3_n_0\
    );
\adc_encoded[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => adc_frontend(8),
      I1 => adc_frontend(9),
      I2 => adc_frontend(10),
      O => \adc_encoded[0]_i_4_n_0\
    );
\adc_encoded[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8088000080888088"
    )
        port map (
      I0 => adc_frontend(8),
      I1 => adc_frontend(12),
      I2 => adc_frontend(14),
      I3 => adc_frontend(13),
      I4 => adc_frontend(10),
      I5 => adc_frontend(9),
      O => \adc_encoded[0]_i_5_n_0\
    );
\adc_encoded[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7FFF7F"
    )
        port map (
      I0 => adc_frontend(5),
      I1 => adc_frontend(3),
      I2 => adc_frontend(7),
      I3 => adc_frontend(8),
      I4 => adc_frontend(9),
      O => \adc_encoded[0]_i_6_n_0\
    );
\adc_encoded[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B000"
    )
        port map (
      I0 => adc_frontend(5),
      I1 => adc_frontend(3),
      I2 => adc_frontend(1),
      I3 => \adc_encoded[1]_i_2_n_0\,
      O => \adc_encoded[1]_i_1_n_0\
    );
\adc_encoded[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FFFFFF"
    )
        port map (
      I0 => adc_frontend(13),
      I1 => adc_frontend(11),
      I2 => adc_frontend(9),
      I3 => adc_frontend(3),
      I4 => adc_frontend(7),
      O => \adc_encoded[1]_i_2_n_0\
    );
\adc_encoded[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => adc_frontend(3),
      I1 => adc_frontend(7),
      I2 => adc_frontend(11),
      O => \adc_encoded[2]_i_1_n_0\
    );
\adc_encoded[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \adc_encoded[3]_i_3_n_0\,
      I1 => \adc_encoded[3]_i_4_n_0\,
      I2 => \adc_encoded[3]_i_5_n_0\,
      I3 => \adc_encoded[3]_i_6_n_0\,
      O => adc_encoded_0
    );
\adc_encoded[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \adc_encoded[3]_i_2_n_0\
    );
\adc_encoded[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2EFEFFFE"
    )
        port map (
      I0 => adc_frontend(12),
      I1 => adc_frontend(11),
      I2 => adc_frontend(10),
      I3 => adc_frontend(9),
      I4 => adc_frontend(8),
      O => \adc_encoded[3]_i_3_n_0\
    );
\adc_encoded[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2EFE"
    )
        port map (
      I0 => adc_frontend(15),
      I1 => adc_frontend(14),
      I2 => adc_frontend(13),
      I3 => adc_frontend(12),
      O => \adc_encoded[3]_i_4_n_0\
    );
\adc_encoded[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2EFEFFFE"
    )
        port map (
      I0 => adc_frontend(4),
      I1 => adc_frontend(3),
      I2 => adc_frontend(2),
      I3 => adc_frontend(1),
      I4 => adc_frontend(0),
      O => \adc_encoded[3]_i_5_n_0\
    );
\adc_encoded[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2EFEFFFE"
    )
        port map (
      I0 => adc_frontend(8),
      I1 => adc_frontend(7),
      I2 => adc_frontend(6),
      I3 => adc_frontend(5),
      I4 => adc_frontend(4),
      O => \adc_encoded[3]_i_6_n_0\
    );
\adc_encoded_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc_encoded_0,
      CLR => \adc_encoded[3]_i_2_n_0\,
      D => \adc_encoded[0]_i_1_n_0\,
      Q => adc_encoded(0)
    );
\adc_encoded_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc_encoded_0,
      CLR => \adc_encoded[3]_i_2_n_0\,
      D => \adc_encoded[1]_i_1_n_0\,
      Q => adc_encoded(1)
    );
\adc_encoded_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc_encoded_0,
      CLR => \adc_encoded[3]_i_2_n_0\,
      D => \adc_encoded[2]_i_1_n_0\,
      Q => adc_encoded(2)
    );
\adc_encoded_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc_encoded_0,
      CLR => \adc_encoded[3]_i_2_n_0\,
      D => adc_frontend(7),
      Q => adc_encoded(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    adc_frontend : in STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_encoded : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "adc_tech_data_acquitision_0_0,data_acquitision,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "data_acquitision,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN adc_tech_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute x_interface_parameter of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_acquitision
     port map (
      adc_encoded(3 downto 0) => adc_encoded(3 downto 0),
      adc_frontend(15 downto 0) => adc_frontend(15 downto 0),
      clk => clk,
      rst_n => rst_n
    );
end STRUCTURE;

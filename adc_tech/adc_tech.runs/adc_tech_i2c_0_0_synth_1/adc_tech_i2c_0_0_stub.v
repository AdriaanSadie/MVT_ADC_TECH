// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Dec 11 11:47:39 2024
// Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adc_tech_i2c_0_0_stub.v
// Design      : adc_tech_i2c_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "i2c,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_in, rst_n, axi_gpio_in, scl, sda)
/* synthesis syn_black_box black_box_pad_pin="clk_in,rst_n,axi_gpio_in[31:0],scl,sda" */;
  input clk_in;
  input rst_n;
  input [31:0]axi_gpio_in;
  output scl;
  inout sda;
endmodule

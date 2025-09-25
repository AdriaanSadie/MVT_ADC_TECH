// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Sep 22 10:03:29 2025
// Host        : ZA-WASADIE1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/work/Technology/Vivado/MVT_ADC_TECH/adc_tech/adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_i2c_0_0/adc_tech_i2c_0_0_stub.v
// Design      : adc_tech_i2c_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "i2c,Vivado 2020.2" *)
module adc_tech_i2c_0_0(clk_in, rst_n, axi_gpio_in, scl, sda)
/* synthesis syn_black_box black_box_pad_pin="clk_in,rst_n,axi_gpio_in[31:0],scl,sda" */;
  input clk_in;
  input rst_n;
  input [31:0]axi_gpio_in;
  output scl;
  inout sda;
endmodule

// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Oct 21 09:26:39 2025
// Host        : ZA-WASADIE1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/work/Technology/Vivado/MVT_ADC_TECH/adc_tech/adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_i2c_master_0_0/adc_tech_i2c_master_0_0_stub.v
// Design      : adc_tech_i2c_master_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "i2c_master,Vivado 2020.2" *)
module adc_tech_i2c_master_0_0(clk, rst_n, axi_gpio_in, axi_gpio_out, sda, scl, 
  sda_en)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,axi_gpio_in[31:0],axi_gpio_out[31:0],sda,scl,sda_en" */;
  input clk;
  input rst_n;
  input [31:0]axi_gpio_in;
  output [31:0]axi_gpio_out;
  inout sda;
  output scl;
  output sda_en;
endmodule

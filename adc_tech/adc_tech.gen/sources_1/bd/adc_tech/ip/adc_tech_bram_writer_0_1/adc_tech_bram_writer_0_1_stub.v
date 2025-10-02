// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Sep 30 08:50:32 2025
// Host        : ZA-WASADIE1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/work/Technology/Vivado/MVT_ADC_TECH/adc_tech/adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_bram_writer_0_1/adc_tech_bram_writer_0_1_stub.v
// Design      : adc_tech_bram_writer_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bram_writer,Vivado 2020.2" *)
module adc_tech_bram_writer_0_1(clk, reset_n, start, addra, dia, wea, done)
/* synthesis syn_black_box black_box_pad_pin="clk,reset_n,start,addra[12:0],dia[31:0],wea,done" */;
  input clk;
  input reset_n;
  input start;
  output [12:0]addra;
  output [31:0]dia;
  output wea;
  output done;
endmodule

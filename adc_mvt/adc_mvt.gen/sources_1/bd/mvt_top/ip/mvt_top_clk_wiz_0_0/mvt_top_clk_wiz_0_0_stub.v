// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jun 18 07:42:03 2024
// Host        : ZA-WASADIE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/work/Technology/Vivado/adc_mvt/adc_mvt.gen/sources_1/bd/mvt_top/ip/mvt_top_clk_wiz_0_0/mvt_top_clk_wiz_0_0_stub.v
// Design      : mvt_top_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module mvt_top_clk_wiz_0_0(clk_out1, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="locked,clk_in1" */
/* synthesis syn_force_seq_prim="clk_out1" */;
  output clk_out1 /* synthesis syn_isclock = 1 */;
  output locked;
  input clk_in1;
endmodule

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jun 13 08:10:29 2024
// Host        : ZA-WASADIE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/work/Technology/Vivado/adc_mvt/adc_mvt.gen/sources_1/bd/mvt_top/ip/mvt_top_util_ds_buf_0_2/mvt_top_util_ds_buf_0_2_stub.v
// Design      : mvt_top_util_ds_buf_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "util_ds_buf,Vivado 2023.1" *)
module mvt_top_util_ds_buf_0_2(IBUF_DS_P, IBUF_DS_N, IBUF_OUT)
/* synthesis syn_black_box black_box_pad_pin="IBUF_DS_P[0:0],IBUF_DS_N[0:0],IBUF_OUT[0:0]" */;
  input [0:0]IBUF_DS_P;
  input [0:0]IBUF_DS_N;
  output [0:0]IBUF_OUT;
endmodule

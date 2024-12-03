//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Tue Jul 16 14:17:14 2024
//Host        : ZA-WASADIE running 64-bit major release  (build 9200)
//Command     : generate_target mvt_top.bd
//Design      : mvt_top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LEDs_imp_PZR5VS
   (CLK,
    led0,
    led1,
    led2,
    led3);
  input CLK;
  output [0:0]led0;
  output [0:0]led1;
  output [0:0]led2;
  output [0:0]led3;

  wire CLK_1;
  wire [31:0]c_counter_binary_0_Q;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;
  wire [0:0]xlslice_2_Dout;
  wire [0:0]xlslice_3_Dout;

  assign CLK_1 = CLK;
  assign led0[0] = xlslice_0_Dout;
  assign led1[0] = xlslice_1_Dout;
  assign led2[0] = xlslice_2_Dout;
  assign led3[0] = xlslice_3_Dout;
  mvt_top_c_counter_binary_0_1 c_counter_binary_0
       (.CLK(CLK_1),
        .Q(c_counter_binary_0_Q));
  mvt_top_xlslice_0_1 xlslice_0
       (.Din(c_counter_binary_0_Q),
        .Dout(xlslice_0_Dout));
  mvt_top_xlslice_0_2 xlslice_1
       (.Din(c_counter_binary_0_Q),
        .Dout(xlslice_1_Dout));
  mvt_top_xlslice_1_0 xlslice_2
       (.Din(c_counter_binary_0_Q),
        .Dout(xlslice_2_Dout));
  mvt_top_xlslice_1_1 xlslice_3
       (.Din(c_counter_binary_0_Q),
        .Dout(xlslice_3_Dout));
endmodule

module Processor_Subsystem_imp_11YP90V
   (clk_in,
    global_clk,
    global_rst,
    i2c_scl,
    i2c_sda);
  input clk_in;
  output global_clk;
  output [0:0]global_rst;
  inout i2c_scl;
  inout i2c_sda;

  wire Net;
  wire Net1;
  wire clk_in_1;
  wire clk_wiz_0_clk_out1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]util_ds_buf_0_IOBUF_IO_O;
  wire [0:0]util_ds_buf_1_IOBUF_IO_O;
  wire zynq_ultra_ps_e_0_emio_i2c0_scl_o;
  wire zynq_ultra_ps_e_0_emio_i2c0_scl_t;
  wire zynq_ultra_ps_e_0_emio_i2c0_sda_o;
  wire zynq_ultra_ps_e_0_emio_i2c0_sda_t;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign clk_in_1 = clk_in;
  assign global_clk = clk_wiz_0_clk_out1;
  assign global_rst[0] = proc_sys_reset_0_peripheral_aresetn;
  mvt_top_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in_1),
        .clk_out1(clk_wiz_0_clk_out1));
  mvt_top_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  mvt_top_util_ds_buf_0_0 util_ds_buf_0
       (.IOBUF_IO_I(zynq_ultra_ps_e_0_emio_i2c0_scl_o),
        .IOBUF_IO_IO(i2c_scl),
        .IOBUF_IO_O(util_ds_buf_0_IOBUF_IO_O),
        .IOBUF_IO_T(zynq_ultra_ps_e_0_emio_i2c0_scl_t));
  mvt_top_util_ds_buf_0_1 util_ds_buf_1
       (.IOBUF_IO_I(zynq_ultra_ps_e_0_emio_i2c0_sda_o),
        .IOBUF_IO_IO(i2c_sda),
        .IOBUF_IO_O(util_ds_buf_1_IOBUF_IO_O),
        .IOBUF_IO_T(zynq_ultra_ps_e_0_emio_i2c0_sda_t));
  mvt_top_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.emio_i2c0_scl_i(util_ds_buf_0_IOBUF_IO_O),
        .emio_i2c0_scl_o(zynq_ultra_ps_e_0_emio_i2c0_scl_o),
        .emio_i2c0_scl_t(zynq_ultra_ps_e_0_emio_i2c0_scl_t),
        .emio_i2c0_sda_i(util_ds_buf_1_IOBUF_IO_O),
        .emio_i2c0_sda_o(zynq_ultra_ps_e_0_emio_i2c0_sda_o),
        .emio_i2c0_sda_t(zynq_ultra_ps_e_0_emio_i2c0_sda_t),
        .maxigp2_arready(1'b0),
        .maxigp2_awready(1'b0),
        .maxigp2_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp2_bresp({1'b0,1'b0}),
        .maxigp2_bvalid(1'b0),
        .maxigp2_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp2_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp2_rlast(1'b0),
        .maxigp2_rresp({1'b0,1'b0}),
        .maxigp2_rvalid(1'b0),
        .maxigp2_wready(1'b0),
        .maxihpm0_lpd_aclk(clk_wiz_0_clk_out1),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0));
endmodule

(* CORE_GENERATION_INFO = "mvt_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mvt_top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=15,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=2,da_zynq_ultra_ps_e_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "mvt_top.hwdef" *) 
module mvt_top
   (clk_in_n,
    clk_in_p,
    fmc_led0,
    fmc_led1,
    fmc_led2,
    fmc_led3,
    gpio_led,
    i2c_scl,
    i2c_sda);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN_N, CLK_DOMAIN mvt_top_clk_in_n, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_in_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN_P, CLK_DOMAIN mvt_top_clk_in_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_in_p;
  output [0:0]fmc_led0;
  output [0:0]fmc_led1;
  output [0:0]fmc_led2;
  output [0:0]fmc_led3;
  output [7:0]gpio_led;
  inout i2c_scl;
  inout i2c_sda;

  wire [0:0]LEDs_led1;
  wire [0:0]LEDs_led2;
  wire [0:0]LEDs_led3;
  wire Net;
  wire Net1;
  wire Processor_Subsystem_global_clk;
  wire [0:0]clk_buffer_IBUF_OUT;
  wire clk_in_n_1;
  wire clk_in_p_1;
  wire [7:0]xlconcat_0_dout;
  wire [6:0]xlconstant_0_dout;
  wire [0:0]xlslice_0_Dout;

  assign clk_in_n_1 = clk_in_n;
  assign clk_in_p_1 = clk_in_p;
  assign fmc_led0[0] = xlslice_0_Dout;
  assign fmc_led1[0] = LEDs_led1;
  assign fmc_led2[0] = LEDs_led2;
  assign fmc_led3[0] = LEDs_led3;
  assign gpio_led[7:0] = xlconcat_0_dout;
  LEDs_imp_PZR5VS LEDs
       (.CLK(Processor_Subsystem_global_clk),
        .led0(xlslice_0_Dout),
        .led1(LEDs_led1),
        .led2(LEDs_led2),
        .led3(LEDs_led3));
  Processor_Subsystem_imp_11YP90V Processor_Subsystem
       (.clk_in(clk_buffer_IBUF_OUT),
        .global_clk(Processor_Subsystem_global_clk),
        .i2c_scl(i2c_scl),
        .i2c_sda(i2c_sda));
  mvt_top_util_ds_buf_0_2 clk_buffer
       (.IBUF_DS_N(clk_in_n_1),
        .IBUF_DS_P(clk_in_p_1),
        .IBUF_OUT(clk_buffer_IBUF_OUT));
  mvt_top_xlconcat_0_0 xlconcat_0
       (.In0(xlslice_0_Dout),
        .In1(xlconstant_0_dout),
        .dout(xlconcat_0_dout));
  mvt_top_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

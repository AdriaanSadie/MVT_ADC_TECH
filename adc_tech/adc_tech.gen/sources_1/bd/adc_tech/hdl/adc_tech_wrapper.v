//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Wed Dec 11 11:55:25 2024
//Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
//Command     : generate_target adc_tech_wrapper.bd
//Design      : adc_tech_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adc_tech_wrapper
   (i2c_scl,
    i2c_sda,
    pl_clk_n,
    pl_clk_p,
    pl_led0,
    pl_led1,
    pl_led2,
    pl_led3);
  output i2c_scl;
  inout i2c_sda;
  input pl_clk_n;
  input pl_clk_p;
  output pl_led0;
  output pl_led1;
  output pl_led2;
  output pl_led3;

  wire i2c_scl;
  wire i2c_sda;
  wire pl_clk_n;
  wire pl_clk_p;
  wire pl_led0;
  wire pl_led1;
  wire pl_led2;
  wire pl_led3;

  adc_tech adc_tech_i
       (.i2c_scl(i2c_scl),
        .i2c_sda(i2c_sda),
        .pl_clk_n(pl_clk_n),
        .pl_clk_p(pl_clk_p),
        .pl_led0(pl_led0),
        .pl_led1(pl_led1),
        .pl_led2(pl_led2),
        .pl_led3(pl_led3));
endmodule

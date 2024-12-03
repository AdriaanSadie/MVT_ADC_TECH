//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Tue Jul 16 14:17:14 2024
//Host        : ZA-WASADIE running 64-bit major release  (build 9200)
//Command     : generate_target mvt_top_wrapper.bd
//Design      : mvt_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mvt_top_wrapper
   (clk_in_n,
    clk_in_p,
    fmc_led0,
    fmc_led1,
    fmc_led2,
    fmc_led3,
    gpio_led,
    i2c_scl,
    i2c_sda);
  input clk_in_n;
  input clk_in_p;
  output [0:0]fmc_led0;
  output [0:0]fmc_led1;
  output [0:0]fmc_led2;
  output [0:0]fmc_led3;
  output [7:0]gpio_led;
  inout i2c_scl;
  inout i2c_sda;

  wire clk_in_n;
  wire clk_in_p;
  wire [0:0]fmc_led0;
  wire [0:0]fmc_led1;
  wire [0:0]fmc_led2;
  wire [0:0]fmc_led3;
  wire [7:0]gpio_led;
  wire i2c_scl;
  wire i2c_sda;

  mvt_top mvt_top_i
       (.clk_in_n(clk_in_n),
        .clk_in_p(clk_in_p),
        .fmc_led0(fmc_led0),
        .fmc_led1(fmc_led1),
        .fmc_led2(fmc_led2),
        .fmc_led3(fmc_led3),
        .gpio_led(gpio_led),
        .i2c_scl(i2c_scl),
        .i2c_sda(i2c_sda));
endmodule

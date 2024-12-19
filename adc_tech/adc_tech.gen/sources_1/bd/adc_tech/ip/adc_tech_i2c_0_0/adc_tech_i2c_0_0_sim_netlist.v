// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Dec 18 15:21:45 2024
// Host        : ZA-WASADIE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/work/Technology/Vivado/MVT_ADC_TECH/adc_tech/adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_i2c_0_0/adc_tech_i2c_0_0_sim_netlist.v
// Design      : adc_tech_i2c_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adc_tech_i2c_0_0,i2c,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "i2c,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module adc_tech_i2c_0_0
   (clk_in,
    rst_n,
    axi_gpio_in,
    scl,
    sda);
  input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [31:0]axi_gpio_in;
  output scl;
  inout sda;

  wire [31:0]axi_gpio_in;
  wire clk_in;
  wire i2c_clk;
  wire inst_n_0;
  wire inst_n_2;
  wire inst_n_4;
  wire rst_n;
  wire scl;
  wire sda;
  wire sda_INST_0_i_2_n_0;

  adc_tech_i2c_0_0_i2c inst
       (.axi_gpio_in({axi_gpio_in[31],axi_gpio_in[23:0]}),
        .clk_in(clk_in),
        .i2c_clk(i2c_clk),
        .i2c_start_flag_reg_0(inst_n_0),
        .i2c_start_flag_reg_1(inst_n_4),
        .rst_n(rst_n),
        .rst_n_0(inst_n_2),
        .scl(scl),
        .sda(sda),
        .sda_0(sda_INST_0_i_2_n_0));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    sda_INST_0_i_2
       (.C(i2c_clk),
        .CE(inst_n_0),
        .D(inst_n_4),
        .PRE(inst_n_2),
        .Q(sda_INST_0_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "i2c" *) 
module adc_tech_i2c_0_0_i2c
   (i2c_start_flag_reg_0,
    i2c_clk,
    rst_n_0,
    sda,
    i2c_start_flag_reg_1,
    scl,
    clk_in,
    rst_n,
    sda_0,
    axi_gpio_in);
  output i2c_start_flag_reg_0;
  output i2c_clk;
  output rst_n_0;
  output sda;
  output i2c_start_flag_reg_1;
  output scl;
  input clk_in;
  input rst_n;
  input sda_0;
  input [24:0]axi_gpio_in;

  wire [24:0]axi_gpio_in;
  wire \axi_gpio_in_reg1_reg_n_0_[0] ;
  wire \axi_gpio_in_reg1_reg_n_0_[10] ;
  wire \axi_gpio_in_reg1_reg_n_0_[11] ;
  wire \axi_gpio_in_reg1_reg_n_0_[12] ;
  wire \axi_gpio_in_reg1_reg_n_0_[13] ;
  wire \axi_gpio_in_reg1_reg_n_0_[14] ;
  wire \axi_gpio_in_reg1_reg_n_0_[15] ;
  wire \axi_gpio_in_reg1_reg_n_0_[16] ;
  wire \axi_gpio_in_reg1_reg_n_0_[17] ;
  wire \axi_gpio_in_reg1_reg_n_0_[18] ;
  wire \axi_gpio_in_reg1_reg_n_0_[19] ;
  wire \axi_gpio_in_reg1_reg_n_0_[1] ;
  wire \axi_gpio_in_reg1_reg_n_0_[20] ;
  wire \axi_gpio_in_reg1_reg_n_0_[21] ;
  wire \axi_gpio_in_reg1_reg_n_0_[22] ;
  wire \axi_gpio_in_reg1_reg_n_0_[23] ;
  wire \axi_gpio_in_reg1_reg_n_0_[2] ;
  wire \axi_gpio_in_reg1_reg_n_0_[3] ;
  wire \axi_gpio_in_reg1_reg_n_0_[4] ;
  wire \axi_gpio_in_reg1_reg_n_0_[5] ;
  wire \axi_gpio_in_reg1_reg_n_0_[6] ;
  wire \axi_gpio_in_reg1_reg_n_0_[7] ;
  wire \axi_gpio_in_reg1_reg_n_0_[8] ;
  wire \axi_gpio_in_reg1_reg_n_0_[9] ;
  wire clk_in;
  wire [7:0]dac_command;
  wire \dac_command[0]_i_1_n_0 ;
  wire \dac_command[1]_i_1_n_0 ;
  wire \dac_command[2]_i_1_n_0 ;
  wire \dac_command[3]_i_1_n_0 ;
  wire \dac_command[4]_i_1_n_0 ;
  wire \dac_command[5]_i_1_n_0 ;
  wire \dac_command[6]_i_1_n_0 ;
  wire \dac_command[7]_i_2_n_0 ;
  wire \dac_command[7]_i_3_n_0 ;
  wire dac_data_lsb;
  wire \dac_data_lsb[0]_i_1_n_0 ;
  wire \dac_data_lsb[1]_i_1_n_0 ;
  wire \dac_data_lsb[2]_i_1_n_0 ;
  wire \dac_data_lsb[3]_i_1_n_0 ;
  wire \dac_data_lsb[4]_i_1_n_0 ;
  wire \dac_data_lsb[5]_i_1_n_0 ;
  wire \dac_data_lsb[6]_i_1_n_0 ;
  wire \dac_data_lsb[7]_i_1_n_0 ;
  wire \dac_data_lsb_reg_n_0_[0] ;
  wire \dac_data_lsb_reg_n_0_[1] ;
  wire \dac_data_lsb_reg_n_0_[2] ;
  wire \dac_data_lsb_reg_n_0_[3] ;
  wire \dac_data_lsb_reg_n_0_[4] ;
  wire \dac_data_lsb_reg_n_0_[5] ;
  wire \dac_data_lsb_reg_n_0_[6] ;
  wire \dac_data_lsb_reg_n_0_[7] ;
  wire [7:0]dac_data_msb;
  wire \dac_data_msb[0]_i_1_n_0 ;
  wire \dac_data_msb[1]_i_1_n_0 ;
  wire \dac_data_msb[2]_i_1_n_0 ;
  wire \dac_data_msb[3]_i_1_n_0 ;
  wire \dac_data_msb[4]_i_1_n_0 ;
  wire \dac_data_msb[5]_i_1_n_0 ;
  wire \dac_data_msb[6]_i_1_n_0 ;
  wire \dac_data_msb[7]_i_1_n_0 ;
  wire i2c_ack_flag_i_1_n_0;
  wire i2c_ack_flag_i_2_n_0;
  wire i2c_ack_flag_reg_n_0;
  wire i2c_clk;
  wire \i2c_clk_counter[10]_i_1_n_0 ;
  wire \i2c_clk_counter[10]_i_3_n_0 ;
  wire \i2c_clk_counter[10]_i_4_n_0 ;
  wire \i2c_clk_counter[4]_i_2_n_0 ;
  wire \i2c_clk_counter[8]_i_1_n_0 ;
  wire \i2c_clk_counter[8]_i_2_n_0 ;
  wire \i2c_clk_counter[9]_i_1_n_0 ;
  wire [10:0]i2c_clk_counter_reg;
  wire i2c_clk_i_1_n_0;
  wire [3:0]i2c_shift_reg_counter;
  wire \i2c_shift_reg_counter[3]_i_1_n_0 ;
  wire \i2c_shift_reg_counter[3]_i_3_n_0 ;
  wire \i2c_shift_reg_counter_reg_n_0_[0] ;
  wire \i2c_shift_reg_counter_reg_n_0_[1] ;
  wire \i2c_shift_reg_counter_reg_n_0_[2] ;
  wire \i2c_shift_reg_counter_reg_n_0_[3] ;
  wire i2c_start_flag_i_1_n_0;
  wire i2c_start_flag_i_2_n_0;
  wire i2c_start_flag_reg_0;
  wire i2c_start_flag_reg_1;
  wire i2c_start_flag_reg_n_0;
  wire i2c_state;
  wire i2c_state_i_1_n_0;
  wire i2c_write_address_flag_i_1_n_0;
  wire i2c_write_address_flag_i_2_n_0;
  wire i2c_write_address_flag_i_3_n_0;
  wire i2c_write_address_flag_reg_n_0;
  wire i2c_write_command_flag_i_1_n_0;
  wire i2c_write_command_flag_reg_n_0;
  wire i2c_write_data_lsb_flag_i_1_n_0;
  wire i2c_write_data_lsb_flag_reg_n_0;
  wire i2c_write_data_msb_flag_i_1_n_0;
  wire i2c_write_data_msb_flag_i_2_n_0;
  wire i2c_write_data_msb_flag_reg_n_0;
  wire i2c_write_stop_flag;
  wire i2c_write_stop_flag_i_1_n_0;
  wire i2c_write_stop_flag_i_2_n_0;
  wire i2c_write_stop_flag_i_3_n_0;
  wire \i2c_write_tracker[0]_i_1_n_0 ;
  wire p_0_in;
  wire p_0_in_0;
  wire [7:0]p_0_in__0;
  wire [5:1]p_0_in__1;
  wire p_1_in13_in;
  wire rst_n;
  wire rst_n_0;
  wire scl;
  wire scl_write_i_1_n_0;
  wire scl_write_i_2_n_0;
  wire scl_write_i_3_n_0;
  wire scl_write_i_4_n_0;
  wire scl_write_reg_n_0;
  wire sda;
  wire sda_0;
  wire sda_out;
  wire sda_out_tristate_oe_i_10_n_0;
  wire sda_out_tristate_oe_i_11_n_0;
  wire sda_out_tristate_oe_i_12_n_0;
  wire sda_out_tristate_oe_i_13_n_0;
  wire sda_out_tristate_oe_i_14_n_0;
  wire sda_out_tristate_oe_i_15_n_0;
  wire sda_out_tristate_oe_i_16_n_0;
  wire sda_out_tristate_oe_i_2_n_0;
  wire sda_out_tristate_oe_i_4_n_0;
  wire sda_out_tristate_oe_i_5_n_0;
  wire sda_out_tristate_oe_i_6_n_0;
  wire sda_out_tristate_oe_i_7_n_0;
  wire sda_out_tristate_oe_i_8_n_0;
  wire sda_out_tristate_oe_i_9_n_0;
  wire sda_out_tristate_oe_reg_n_0;
  wire sda_write_i_1_n_0;
  wire sda_write_reg_n_0;
  wire [5:0]sel0;

  FDCE \axi_gpio_in_reg1_reg[0] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[0]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[0] ));
  FDCE \axi_gpio_in_reg1_reg[10] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[10]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[10] ));
  FDCE \axi_gpio_in_reg1_reg[11] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[11]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[11] ));
  FDCE \axi_gpio_in_reg1_reg[12] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[12]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[12] ));
  FDCE \axi_gpio_in_reg1_reg[13] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[13]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[13] ));
  FDCE \axi_gpio_in_reg1_reg[14] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[14]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[14] ));
  FDCE \axi_gpio_in_reg1_reg[15] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[15]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[15] ));
  FDCE \axi_gpio_in_reg1_reg[16] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[16]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[16] ));
  FDCE \axi_gpio_in_reg1_reg[17] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[17]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[17] ));
  FDCE \axi_gpio_in_reg1_reg[18] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[18]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[18] ));
  FDCE \axi_gpio_in_reg1_reg[19] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[19]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[19] ));
  FDCE \axi_gpio_in_reg1_reg[1] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[1]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[1] ));
  FDCE \axi_gpio_in_reg1_reg[20] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[20]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[20] ));
  FDCE \axi_gpio_in_reg1_reg[21] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[21]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[21] ));
  FDCE \axi_gpio_in_reg1_reg[22] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[22]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[22] ));
  FDCE \axi_gpio_in_reg1_reg[23] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[23]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[23] ));
  FDCE \axi_gpio_in_reg1_reg[2] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[2]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[2] ));
  FDCE \axi_gpio_in_reg1_reg[31] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[24]),
        .Q(p_1_in13_in));
  FDCE \axi_gpio_in_reg1_reg[3] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[3]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[3] ));
  FDCE \axi_gpio_in_reg1_reg[4] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[4]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[4] ));
  FDCE \axi_gpio_in_reg1_reg[5] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[5]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[5] ));
  FDCE \axi_gpio_in_reg1_reg[6] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[6]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[6] ));
  FDCE \axi_gpio_in_reg1_reg[7] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[7]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[7] ));
  FDCE \axi_gpio_in_reg1_reg[8] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[8]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[8] ));
  FDCE \axi_gpio_in_reg1_reg[9] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[9]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[9] ));
  FDCE \axi_gpio_in_reg2_reg[31] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_1_in13_in),
        .Q(p_0_in_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_command[0]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[16] ),
        .I1(i2c_state),
        .O(\dac_command[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_command[1]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[17] ),
        .I1(i2c_state),
        .O(\dac_command[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_command[2]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[18] ),
        .I1(i2c_state),
        .O(\dac_command[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_command[3]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[19] ),
        .I1(i2c_state),
        .O(\dac_command[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_command[4]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[20] ),
        .I1(i2c_state),
        .O(\dac_command[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_command[5]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[21] ),
        .I1(i2c_state),
        .O(\dac_command[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_command[6]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[22] ),
        .I1(i2c_state),
        .O(\dac_command[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA0C)) 
    \dac_command[7]_i_1 
       (.I0(\dac_command[7]_i_3_n_0 ),
        .I1(p_1_in13_in),
        .I2(p_0_in_0),
        .I3(i2c_state),
        .O(dac_data_lsb));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_command[7]_i_2 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[23] ),
        .I1(i2c_state),
        .O(\dac_command[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAAAAA80)) 
    \dac_command[7]_i_3 
       (.I0(sel0[5]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .O(\dac_command[7]_i_3_n_0 ));
  FDCE \dac_command_reg[0] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_command[0]_i_1_n_0 ),
        .Q(dac_command[0]));
  FDCE \dac_command_reg[1] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_command[1]_i_1_n_0 ),
        .Q(dac_command[1]));
  FDCE \dac_command_reg[2] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_command[2]_i_1_n_0 ),
        .Q(dac_command[2]));
  FDCE \dac_command_reg[3] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_command[3]_i_1_n_0 ),
        .Q(dac_command[3]));
  FDCE \dac_command_reg[4] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_command[4]_i_1_n_0 ),
        .Q(dac_command[4]));
  FDCE \dac_command_reg[5] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_command[5]_i_1_n_0 ),
        .Q(dac_command[5]));
  FDCE \dac_command_reg[6] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_command[6]_i_1_n_0 ),
        .Q(dac_command[6]));
  FDCE \dac_command_reg[7] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_command[7]_i_2_n_0 ),
        .Q(dac_command[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_data_lsb[0]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[0] ),
        .I1(i2c_state),
        .O(\dac_data_lsb[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_data_lsb[1]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[1] ),
        .I1(i2c_state),
        .O(\dac_data_lsb[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_data_lsb[2]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[2] ),
        .I1(i2c_state),
        .O(\dac_data_lsb[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_data_lsb[3]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[3] ),
        .I1(i2c_state),
        .O(\dac_data_lsb[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_data_lsb[4]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[4] ),
        .I1(i2c_state),
        .O(\dac_data_lsb[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_data_lsb[5]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[5] ),
        .I1(i2c_state),
        .O(\dac_data_lsb[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_data_lsb[6]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[6] ),
        .I1(i2c_state),
        .O(\dac_data_lsb[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_data_lsb[7]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[7] ),
        .I1(i2c_state),
        .O(\dac_data_lsb[7]_i_1_n_0 ));
  FDCE \dac_data_lsb_reg[0] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_data_lsb[0]_i_1_n_0 ),
        .Q(\dac_data_lsb_reg_n_0_[0] ));
  FDCE \dac_data_lsb_reg[1] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_data_lsb[1]_i_1_n_0 ),
        .Q(\dac_data_lsb_reg_n_0_[1] ));
  FDCE \dac_data_lsb_reg[2] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_data_lsb[2]_i_1_n_0 ),
        .Q(\dac_data_lsb_reg_n_0_[2] ));
  FDCE \dac_data_lsb_reg[3] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_data_lsb[3]_i_1_n_0 ),
        .Q(\dac_data_lsb_reg_n_0_[3] ));
  FDCE \dac_data_lsb_reg[4] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_data_lsb[4]_i_1_n_0 ),
        .Q(\dac_data_lsb_reg_n_0_[4] ));
  FDCE \dac_data_lsb_reg[5] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_data_lsb[5]_i_1_n_0 ),
        .Q(\dac_data_lsb_reg_n_0_[5] ));
  FDCE \dac_data_lsb_reg[6] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_data_lsb[6]_i_1_n_0 ),
        .Q(\dac_data_lsb_reg_n_0_[6] ));
  FDCE \dac_data_lsb_reg[7] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_data_lsb[7]_i_1_n_0 ),
        .Q(\dac_data_lsb_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_data_msb[0]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[8] ),
        .I1(i2c_state),
        .O(\dac_data_msb[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_data_msb[1]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[9] ),
        .I1(i2c_state),
        .O(\dac_data_msb[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_data_msb[2]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[10] ),
        .I1(i2c_state),
        .O(\dac_data_msb[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_data_msb[3]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[11] ),
        .I1(i2c_state),
        .O(\dac_data_msb[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_data_msb[4]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[12] ),
        .I1(i2c_state),
        .O(\dac_data_msb[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_data_msb[5]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[13] ),
        .I1(i2c_state),
        .O(\dac_data_msb[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_data_msb[6]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[14] ),
        .I1(i2c_state),
        .O(\dac_data_msb[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dac_data_msb[7]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[15] ),
        .I1(i2c_state),
        .O(\dac_data_msb[7]_i_1_n_0 ));
  FDCE \dac_data_msb_reg[0] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_data_msb[0]_i_1_n_0 ),
        .Q(dac_data_msb[0]));
  FDCE \dac_data_msb_reg[1] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_data_msb[1]_i_1_n_0 ),
        .Q(dac_data_msb[1]));
  FDCE \dac_data_msb_reg[2] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_data_msb[2]_i_1_n_0 ),
        .Q(dac_data_msb[2]));
  FDCE \dac_data_msb_reg[3] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_data_msb[3]_i_1_n_0 ),
        .Q(dac_data_msb[3]));
  FDCE \dac_data_msb_reg[4] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_data_msb[4]_i_1_n_0 ),
        .Q(dac_data_msb[4]));
  FDCE \dac_data_msb_reg[5] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_data_msb[5]_i_1_n_0 ),
        .Q(dac_data_msb[5]));
  FDCE \dac_data_msb_reg[6] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_data_msb[6]_i_1_n_0 ),
        .Q(dac_data_msb[6]));
  FDCE \dac_data_msb_reg[7] 
       (.C(i2c_clk),
        .CE(dac_data_lsb),
        .CLR(rst_n_0),
        .D(\dac_data_msb[7]_i_1_n_0 ),
        .Q(dac_data_msb[7]));
  LUT2 #(
    .INIT(4'h2)) 
    i2c_ack_flag_i_1
       (.I0(i2c_state),
        .I1(i2c_ack_flag_i_2_n_0),
        .O(i2c_ack_flag_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFDEFFFFFFFFFBDF)) 
    i2c_ack_flag_i_2
       (.I0(sel0[0]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[4]),
        .I5(sel0[1]),
        .O(i2c_ack_flag_i_2_n_0));
  FDCE i2c_ack_flag_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(i2c_ack_flag_i_1_n_0),
        .Q(i2c_ack_flag_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \i2c_clk_counter[0]_i_1 
       (.I0(i2c_clk_counter_reg[0]),
        .I1(p_0_in),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'h5555555540000000)) 
    \i2c_clk_counter[10]_i_1 
       (.I0(p_0_in),
        .I1(i2c_clk_counter_reg[7]),
        .I2(i2c_clk_counter_reg[8]),
        .I3(\i2c_clk_counter[10]_i_3_n_0 ),
        .I4(i2c_clk_counter_reg[9]),
        .I5(i2c_clk_counter_reg[10]),
        .O(\i2c_clk_counter[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \i2c_clk_counter[10]_i_2 
       (.I0(\i2c_clk_counter[10]_i_4_n_0 ),
        .I1(i2c_clk_counter_reg[5]),
        .I2(\i2c_clk_counter[4]_i_2_n_0 ),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \i2c_clk_counter[10]_i_3 
       (.I0(i2c_clk_counter_reg[6]),
        .I1(i2c_clk_counter_reg[5]),
        .I2(\i2c_clk_counter[8]_i_2_n_0 ),
        .O(\i2c_clk_counter[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \i2c_clk_counter[10]_i_4 
       (.I0(i2c_clk_counter_reg[4]),
        .I1(i2c_clk_counter_reg[3]),
        .I2(i2c_clk_counter_reg[1]),
        .I3(i2c_clk_counter_reg[0]),
        .I4(i2c_clk_counter_reg[2]),
        .O(\i2c_clk_counter[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \i2c_clk_counter[1]_i_1 
       (.I0(i2c_clk_counter_reg[1]),
        .I1(i2c_clk_counter_reg[0]),
        .I2(p_0_in),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \i2c_clk_counter[2]_i_1 
       (.I0(p_0_in),
        .I1(i2c_clk_counter_reg[0]),
        .I2(i2c_clk_counter_reg[1]),
        .I3(i2c_clk_counter_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \i2c_clk_counter[3]_i_1 
       (.I0(p_0_in),
        .I1(i2c_clk_counter_reg[1]),
        .I2(i2c_clk_counter_reg[0]),
        .I3(i2c_clk_counter_reg[2]),
        .I4(i2c_clk_counter_reg[3]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \i2c_clk_counter[4]_i_1 
       (.I0(i2c_clk_counter_reg[3]),
        .I1(i2c_clk_counter_reg[1]),
        .I2(i2c_clk_counter_reg[0]),
        .I3(i2c_clk_counter_reg[2]),
        .I4(i2c_clk_counter_reg[4]),
        .I5(\i2c_clk_counter[4]_i_2_n_0 ),
        .O(p_0_in__0[4]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \i2c_clk_counter[4]_i_2 
       (.I0(i2c_clk_counter_reg[8]),
        .I1(i2c_clk_counter_reg[7]),
        .I2(i2c_clk_counter_reg[10]),
        .I3(i2c_clk_counter_reg[6]),
        .I4(i2c_clk_counter_reg[9]),
        .O(\i2c_clk_counter[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \i2c_clk_counter[5]_i_1 
       (.I0(p_0_in),
        .I1(\i2c_clk_counter[8]_i_2_n_0 ),
        .I2(i2c_clk_counter_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4510)) 
    \i2c_clk_counter[6]_i_1 
       (.I0(p_0_in),
        .I1(\i2c_clk_counter[8]_i_2_n_0 ),
        .I2(i2c_clk_counter_reg[5]),
        .I3(i2c_clk_counter_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0000F708)) 
    \i2c_clk_counter[7]_i_1 
       (.I0(i2c_clk_counter_reg[6]),
        .I1(i2c_clk_counter_reg[5]),
        .I2(\i2c_clk_counter[8]_i_2_n_0 ),
        .I3(i2c_clk_counter_reg[7]),
        .I4(p_0_in),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h5155555504000000)) 
    \i2c_clk_counter[8]_i_1 
       (.I0(p_0_in),
        .I1(i2c_clk_counter_reg[7]),
        .I2(\i2c_clk_counter[8]_i_2_n_0 ),
        .I3(i2c_clk_counter_reg[5]),
        .I4(i2c_clk_counter_reg[6]),
        .I5(i2c_clk_counter_reg[8]),
        .O(\i2c_clk_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \i2c_clk_counter[8]_i_2 
       (.I0(i2c_clk_counter_reg[3]),
        .I1(i2c_clk_counter_reg[1]),
        .I2(i2c_clk_counter_reg[0]),
        .I3(i2c_clk_counter_reg[2]),
        .I4(i2c_clk_counter_reg[4]),
        .O(\i2c_clk_counter[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h15554000)) 
    \i2c_clk_counter[9]_i_1 
       (.I0(p_0_in),
        .I1(\i2c_clk_counter[10]_i_3_n_0 ),
        .I2(i2c_clk_counter_reg[8]),
        .I3(i2c_clk_counter_reg[7]),
        .I4(i2c_clk_counter_reg[9]),
        .O(\i2c_clk_counter[9]_i_1_n_0 ));
  FDCE \i2c_clk_counter_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_in__0[0]),
        .Q(i2c_clk_counter_reg[0]));
  FDCE \i2c_clk_counter_reg[10] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_clk_counter[10]_i_1_n_0 ),
        .Q(i2c_clk_counter_reg[10]));
  FDCE \i2c_clk_counter_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_in__0[1]),
        .Q(i2c_clk_counter_reg[1]));
  FDCE \i2c_clk_counter_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_in__0[2]),
        .Q(i2c_clk_counter_reg[2]));
  FDCE \i2c_clk_counter_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_in__0[3]),
        .Q(i2c_clk_counter_reg[3]));
  FDCE \i2c_clk_counter_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_in__0[4]),
        .Q(i2c_clk_counter_reg[4]));
  FDCE \i2c_clk_counter_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_in__0[5]),
        .Q(i2c_clk_counter_reg[5]));
  FDCE \i2c_clk_counter_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_in__0[6]),
        .Q(i2c_clk_counter_reg[6]));
  FDCE \i2c_clk_counter_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_in__0[7]),
        .Q(i2c_clk_counter_reg[7]));
  FDCE \i2c_clk_counter_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_clk_counter[8]_i_1_n_0 ),
        .Q(i2c_clk_counter_reg[8]));
  FDCE \i2c_clk_counter_reg[9] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_clk_counter[9]_i_1_n_0 ),
        .Q(i2c_clk_counter_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    i2c_clk_i_1
       (.I0(p_0_in),
        .I1(i2c_clk),
        .O(i2c_clk_i_1_n_0));
  FDPE i2c_clk_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(i2c_clk_i_1_n_0),
        .PRE(rst_n_0),
        .Q(i2c_clk));
  LUT6 #(
    .INIT(64'h0000000000005554)) 
    \i2c_shift_reg_counter[0]_i_1 
       (.I0(i2c_ack_flag_reg_n_0),
        .I1(\i2c_shift_reg_counter_reg_n_0_[3] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[2] ),
        .I4(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I5(sda_out_tristate_oe_i_5_n_0),
        .O(i2c_shift_reg_counter[0]));
  LUT6 #(
    .INIT(64'h0000000055000054)) 
    \i2c_shift_reg_counter[1]_i_1 
       (.I0(i2c_ack_flag_reg_n_0),
        .I1(\i2c_shift_reg_counter_reg_n_0_[3] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[2] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I4(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I5(sda_out_tristate_oe_i_5_n_0),
        .O(i2c_shift_reg_counter[1]));
  LUT6 #(
    .INIT(64'h0000000050505004)) 
    \i2c_shift_reg_counter[2]_i_1 
       (.I0(i2c_ack_flag_reg_n_0),
        .I1(\i2c_shift_reg_counter_reg_n_0_[3] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[2] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I4(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I5(sda_out_tristate_oe_i_5_n_0),
        .O(i2c_shift_reg_counter[2]));
  LUT6 #(
    .INIT(64'h00000000FFFEFFFF)) 
    \i2c_shift_reg_counter[3]_i_1 
       (.I0(i2c_write_command_flag_reg_n_0),
        .I1(i2c_write_address_flag_reg_n_0),
        .I2(\i2c_shift_reg_counter[3]_i_3_n_0 ),
        .I3(i2c_ack_flag_reg_n_0),
        .I4(i2c_write_stop_flag),
        .I5(i2c_start_flag_reg_n_0),
        .O(\i2c_shift_reg_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFE01)) 
    \i2c_shift_reg_counter[3]_i_2 
       (.I0(\i2c_shift_reg_counter_reg_n_0_[2] ),
        .I1(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[3] ),
        .I4(sda_out_tristate_oe_i_5_n_0),
        .I5(i2c_ack_flag_reg_n_0),
        .O(i2c_shift_reg_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \i2c_shift_reg_counter[3]_i_3 
       (.I0(i2c_write_data_msb_flag_reg_n_0),
        .I1(i2c_write_data_lsb_flag_reg_n_0),
        .O(\i2c_shift_reg_counter[3]_i_3_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_shift_reg_counter_reg[0] 
       (.C(i2c_clk),
        .CE(\i2c_shift_reg_counter[3]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_shift_reg_counter[0]),
        .Q(\i2c_shift_reg_counter_reg_n_0_[0] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_shift_reg_counter_reg[1] 
       (.C(i2c_clk),
        .CE(\i2c_shift_reg_counter[3]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_shift_reg_counter[1]),
        .Q(\i2c_shift_reg_counter_reg_n_0_[1] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_shift_reg_counter_reg[2] 
       (.C(i2c_clk),
        .CE(\i2c_shift_reg_counter[3]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_shift_reg_counter[2]),
        .Q(\i2c_shift_reg_counter_reg_n_0_[2] ));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_shift_reg_counter_reg[3] 
       (.C(i2c_clk),
        .CE(\i2c_shift_reg_counter[3]_i_1_n_0 ),
        .D(i2c_shift_reg_counter[3]),
        .PRE(rst_n_0),
        .Q(\i2c_shift_reg_counter_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    i2c_start_flag_i_1
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(i2c_start_flag_i_2_n_0),
        .I4(i2c_state),
        .I5(sel0[5]),
        .O(i2c_start_flag_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    i2c_start_flag_i_2
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .O(i2c_start_flag_i_2_n_0));
  FDCE i2c_start_flag_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(i2c_start_flag_i_1_n_0),
        .Q(i2c_start_flag_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2722)) 
    i2c_state_i_1
       (.I0(i2c_state),
        .I1(\dac_command[7]_i_3_n_0 ),
        .I2(p_0_in_0),
        .I3(p_1_in13_in),
        .O(i2c_state_i_1_n_0));
  FDCE i2c_state_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(i2c_state_i_1_n_0),
        .Q(i2c_state));
  LUT6 #(
    .INIT(64'h0002000200000002)) 
    i2c_write_address_flag_i_1
       (.I0(i2c_state),
        .I1(i2c_write_address_flag_i_2_n_0),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .I4(sel0[3]),
        .I5(i2c_write_address_flag_i_3_n_0),
        .O(i2c_write_address_flag_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    i2c_write_address_flag_i_2
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(i2c_write_address_flag_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h01)) 
    i2c_write_address_flag_i_3
       (.I0(sel0[0]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .O(i2c_write_address_flag_i_3_n_0));
  FDCE i2c_write_address_flag_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(i2c_write_address_flag_i_1_n_0),
        .Q(i2c_write_address_flag_reg_n_0));
  LUT6 #(
    .INIT(64'h0040004000400400)) 
    i2c_write_command_flag_i_1
       (.I0(sel0[5]),
        .I1(i2c_state),
        .I2(sel0[3]),
        .I3(sel0[4]),
        .I4(sel0[2]),
        .I5(sel0[1]),
        .O(i2c_write_command_flag_i_1_n_0));
  FDCE i2c_write_command_flag_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(i2c_write_command_flag_i_1_n_0),
        .Q(i2c_write_command_flag_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00028000)) 
    i2c_write_data_lsb_flag_i_1
       (.I0(i2c_state),
        .I1(sel0[3]),
        .I2(sel0[4]),
        .I3(sel0[2]),
        .I4(sel0[5]),
        .O(i2c_write_data_lsb_flag_i_1_n_0));
  FDCE i2c_write_data_lsb_flag_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(i2c_write_data_lsb_flag_i_1_n_0),
        .Q(i2c_write_data_lsb_flag_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00600000)) 
    i2c_write_data_msb_flag_i_1
       (.I0(i2c_write_data_msb_flag_i_2_n_0),
        .I1(sel0[3]),
        .I2(i2c_state),
        .I3(sel0[5]),
        .I4(sel0[4]),
        .O(i2c_write_data_msb_flag_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    i2c_write_data_msb_flag_i_2
       (.I0(sel0[0]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .O(i2c_write_data_msb_flag_i_2_n_0));
  FDCE i2c_write_data_msb_flag_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(i2c_write_data_msb_flag_i_1_n_0),
        .Q(i2c_write_data_msb_flag_reg_n_0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    i2c_write_stop_flag_i_1
       (.I0(i2c_write_stop_flag_i_2_n_0),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(i2c_write_stop_flag_i_3_n_0),
        .O(i2c_write_stop_flag_i_1_n_0));
  LUT6 #(
    .INIT(64'h00020202AAAAAAAA)) 
    i2c_write_stop_flag_i_2
       (.I0(i2c_state),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[5]),
        .O(i2c_write_stop_flag_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    i2c_write_stop_flag_i_3
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .O(i2c_write_stop_flag_i_3_n_0));
  FDCE i2c_write_stop_flag_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(i2c_write_stop_flag_i_1_n_0),
        .Q(i2c_write_stop_flag));
  LUT6 #(
    .INIT(64'h0001010155555555)) 
    \i2c_write_tracker[0]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[5]),
        .O(\i2c_write_tracker[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000102025555AAAA)) 
    \i2c_write_tracker[1]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[5]),
        .O(p_0_in__1[1]));
  LUT6 #(
    .INIT(64'h0002030055AAFF00)) 
    \i2c_write_tracker[2]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[5]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00006CCC)) 
    \i2c_write_tracker[3]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[5]),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'h000000006CCCCCCC)) 
    \i2c_write_tracker[4]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[5]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h4000000002220222)) 
    \i2c_write_tracker[5]_i_1 
       (.I0(sel0[5]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[4]),
        .O(p_0_in__1[5]));
  FDCE \i2c_write_tracker_reg[0] 
       (.C(i2c_clk),
        .CE(i2c_state),
        .CLR(rst_n_0),
        .D(\i2c_write_tracker[0]_i_1_n_0 ),
        .Q(sel0[0]));
  FDCE \i2c_write_tracker_reg[1] 
       (.C(i2c_clk),
        .CE(i2c_state),
        .CLR(rst_n_0),
        .D(p_0_in__1[1]),
        .Q(sel0[1]));
  FDCE \i2c_write_tracker_reg[2] 
       (.C(i2c_clk),
        .CE(i2c_state),
        .CLR(rst_n_0),
        .D(p_0_in__1[2]),
        .Q(sel0[2]));
  FDCE \i2c_write_tracker_reg[3] 
       (.C(i2c_clk),
        .CE(i2c_state),
        .CLR(rst_n_0),
        .D(p_0_in__1[3]),
        .Q(sel0[3]));
  FDCE \i2c_write_tracker_reg[4] 
       (.C(i2c_clk),
        .CE(i2c_state),
        .CLR(rst_n_0),
        .D(p_0_in__1[4]),
        .Q(sel0[4]));
  FDCE \i2c_write_tracker_reg[5] 
       (.C(i2c_clk),
        .CE(i2c_state),
        .CLR(rst_n_0),
        .D(p_0_in__1[5]),
        .Q(sel0[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    scl_INST_0
       (.I0(i2c_clk),
        .I1(scl_write_reg_n_0),
        .O(scl));
  LUT6 #(
    .INIT(64'hFFFF22F200002202)) 
    scl_write_i_1
       (.I0(scl_write_i_2_n_0),
        .I1(i2c_write_address_flag_i_2_n_0),
        .I2(i2c_write_stop_flag_i_2_n_0),
        .I3(scl_write_i_3_n_0),
        .I4(scl_write_i_4_n_0),
        .I5(scl_write_reg_n_0),
        .O(scl_write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    scl_write_i_2
       (.I0(i2c_state),
        .I1(sel0[5]),
        .O(scl_write_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000AAABD5D5)) 
    scl_write_i_3
       (.I0(sel0[5]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .I5(sel0[4]),
        .O(scl_write_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h45)) 
    scl_write_i_4
       (.I0(i2c_state),
        .I1(p_0_in_0),
        .I2(p_1_in13_in),
        .O(scl_write_i_4_n_0));
  FDCE scl_write_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(scl_write_i_1_n_0),
        .Q(scl_write_reg_n_0));
  LUT2 #(
    .INIT(4'hD)) 
    sda_INST_0
       (.I0(sda_write_reg_n_0),
        .I1(sda_out),
        .O(sda));
  LUT2 #(
    .INIT(4'h8)) 
    sda_INST_0_i_1
       (.I0(sda_out_tristate_oe_reg_n_0),
        .I1(sda_0),
        .O(sda_out));
  LUT4 #(
    .INIT(16'hBBBA)) 
    sda_INST_0_i_3
       (.I0(i2c_start_flag_reg_n_0),
        .I1(i2c_ack_flag_reg_n_0),
        .I2(sda_out_tristate_oe_i_4_n_0),
        .I3(sda_out_tristate_oe_i_5_n_0),
        .O(i2c_start_flag_reg_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sda_out_tristate_oe_i_1
       (.I0(i2c_start_flag_reg_n_0),
        .I1(sda_out_tristate_oe_i_4_n_0),
        .I2(sda_out_tristate_oe_i_5_n_0),
        .I3(i2c_ack_flag_reg_n_0),
        .O(i2c_start_flag_reg_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_tristate_oe_i_10
       (.I0(dac_command[0]),
        .I1(dac_command[1]),
        .I2(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I4(dac_command[2]),
        .I5(dac_command[3]),
        .O(sda_out_tristate_oe_i_10_n_0));
  LUT3 #(
    .INIT(8'h1E)) 
    sda_out_tristate_oe_i_11
       (.I0(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I1(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[2] ),
        .O(sda_out_tristate_oe_i_11_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_tristate_oe_i_12
       (.I0(dac_command[4]),
        .I1(dac_command[5]),
        .I2(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I4(dac_command[6]),
        .I5(dac_command[7]),
        .O(sda_out_tristate_oe_i_12_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_tristate_oe_i_13
       (.I0(dac_data_msb[4]),
        .I1(dac_data_msb[5]),
        .I2(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I4(dac_data_msb[6]),
        .I5(dac_data_msb[7]),
        .O(sda_out_tristate_oe_i_13_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_tristate_oe_i_14
       (.I0(dac_data_msb[0]),
        .I1(dac_data_msb[1]),
        .I2(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I4(dac_data_msb[2]),
        .I5(dac_data_msb[3]),
        .O(sda_out_tristate_oe_i_14_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_tristate_oe_i_15
       (.I0(\dac_data_lsb_reg_n_0_[4] ),
        .I1(\dac_data_lsb_reg_n_0_[5] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I4(\dac_data_lsb_reg_n_0_[6] ),
        .I5(\dac_data_lsb_reg_n_0_[7] ),
        .O(sda_out_tristate_oe_i_15_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_tristate_oe_i_16
       (.I0(\dac_data_lsb_reg_n_0_[0] ),
        .I1(\dac_data_lsb_reg_n_0_[1] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I4(\dac_data_lsb_reg_n_0_[2] ),
        .I5(\dac_data_lsb_reg_n_0_[3] ),
        .O(sda_out_tristate_oe_i_16_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAAAFE)) 
    sda_out_tristate_oe_i_2
       (.I0(sda_out_tristate_oe_i_6_n_0),
        .I1(sda_out_tristate_oe_i_7_n_0),
        .I2(sda_out_tristate_oe_i_8_n_0),
        .I3(i2c_write_address_flag_reg_n_0),
        .I4(i2c_write_command_flag_reg_n_0),
        .I5(i2c_start_flag_reg_n_0),
        .O(sda_out_tristate_oe_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sda_out_tristate_oe_i_3
       (.I0(rst_n),
        .O(rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sda_out_tristate_oe_i_4
       (.I0(\i2c_shift_reg_counter_reg_n_0_[2] ),
        .I1(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[3] ),
        .O(sda_out_tristate_oe_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    sda_out_tristate_oe_i_5
       (.I0(i2c_write_address_flag_reg_n_0),
        .I1(i2c_write_command_flag_reg_n_0),
        .I2(i2c_write_data_lsb_flag_reg_n_0),
        .I3(i2c_write_data_msb_flag_reg_n_0),
        .O(sda_out_tristate_oe_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAAAEFEAAAAA0000)) 
    sda_out_tristate_oe_i_6
       (.I0(sda_out_tristate_oe_i_9_n_0),
        .I1(sda_out_tristate_oe_i_10_n_0),
        .I2(sda_out_tristate_oe_i_11_n_0),
        .I3(sda_out_tristate_oe_i_12_n_0),
        .I4(i2c_write_address_flag_reg_n_0),
        .I5(i2c_write_command_flag_reg_n_0),
        .O(sda_out_tristate_oe_i_6_n_0));
  LUT6 #(
    .INIT(64'hBBBE888200000000)) 
    sda_out_tristate_oe_i_7
       (.I0(sda_out_tristate_oe_i_13_n_0),
        .I1(\i2c_shift_reg_counter_reg_n_0_[2] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I4(sda_out_tristate_oe_i_14_n_0),
        .I5(i2c_write_data_msb_flag_reg_n_0),
        .O(sda_out_tristate_oe_i_7_n_0));
  LUT6 #(
    .INIT(64'h3330003011111111)) 
    sda_out_tristate_oe_i_8
       (.I0(i2c_write_stop_flag),
        .I1(i2c_write_data_msb_flag_reg_n_0),
        .I2(sda_out_tristate_oe_i_15_n_0),
        .I3(sda_out_tristate_oe_i_11_n_0),
        .I4(sda_out_tristate_oe_i_16_n_0),
        .I5(i2c_write_data_lsb_flag_reg_n_0),
        .O(sda_out_tristate_oe_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2300)) 
    sda_out_tristate_oe_i_9
       (.I0(\i2c_shift_reg_counter_reg_n_0_[2] ),
        .I1(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I3(i2c_write_address_flag_reg_n_0),
        .O(sda_out_tristate_oe_i_9_n_0));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    sda_out_tristate_oe_reg
       (.C(i2c_clk),
        .CE(i2c_start_flag_reg_0),
        .D(sda_out_tristate_oe_i_2_n_0),
        .PRE(rst_n_0),
        .Q(sda_out_tristate_oe_reg_n_0));
  LUT6 #(
    .INIT(64'h080808FF08080800)) 
    sda_write_i_1
       (.I0(i2c_write_stop_flag_i_2_n_0),
        .I1(i2c_start_flag_i_2_n_0),
        .I2(sel0[0]),
        .I3(i2c_start_flag_i_1_n_0),
        .I4(dac_data_lsb),
        .I5(sda_write_reg_n_0),
        .O(sda_write_i_1_n_0));
  FDCE sda_write_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(sda_write_i_1_n_0),
        .Q(sda_write_reg_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Oct 21 09:26:39 2025
// Host        : ZA-WASADIE1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adc_tech_i2c_master_0_0_sim_netlist.v
// Design      : adc_tech_i2c_master_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adc_tech_i2c_master_0_0,i2c_master,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "i2c_master,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    axi_gpio_in,
    axi_gpio_out,
    sda,
    scl,
    sda_en);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN adc_tech_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [31:0]axi_gpio_in;
  output [31:0]axi_gpio_out;
  inout sda;
  output scl;
  output sda_en;

  wire \<const0> ;
  wire U0_n_2;
  wire [31:0]axi_gpio_in;
  wire [23:0]\^axi_gpio_out ;
  wire clk;
  wire ctrl_clk;
  wire rst_n;
  wire scl;
  wire sda;
  wire sda_INST_0_i_2_n_0;
  wire sda_en;
  wire sda_r0;
  wire sda_r6_out;

  assign axi_gpio_out[31] = \<const0> ;
  assign axi_gpio_out[30] = \<const0> ;
  assign axi_gpio_out[29] = \<const0> ;
  assign axi_gpio_out[28] = \<const0> ;
  assign axi_gpio_out[27] = \<const0> ;
  assign axi_gpio_out[26] = \<const0> ;
  assign axi_gpio_out[25] = \<const0> ;
  assign axi_gpio_out[24] = \<const0> ;
  assign axi_gpio_out[23:0] = \^axi_gpio_out [23:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_master U0
       (.axi_gpio_in({axi_gpio_in[31:30],axi_gpio_in[24:0]}),
        .axi_gpio_out(\^axi_gpio_out ),
        .clk(clk),
        .ctrl_clk(ctrl_clk),
        .rst_n(rst_n),
        .rst_n_0(U0_n_2),
        .scl_active_reg_0(scl),
        .sda(sda),
        .sda_0(sda_INST_0_i_2_n_0),
        .sda_en(sda_en),
        .sda_r0(sda_r0),
        .sda_r6_out(sda_r6_out));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    sda_INST_0_i_2
       (.C(ctrl_clk),
        .CE(sda_r6_out),
        .D(sda_r0),
        .PRE(U0_n_2),
        .Q(sda_INST_0_i_2_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_master
   (sda_r6_out,
    ctrl_clk,
    rst_n_0,
    sda_en,
    scl_active_reg_0,
    axi_gpio_out,
    sda_r0,
    sda,
    clk,
    rst_n,
    sda_0,
    axi_gpio_in);
  output sda_r6_out;
  output ctrl_clk;
  output rst_n_0;
  output sda_en;
  output scl_active_reg_0;
  output [23:0]axi_gpio_out;
  output sda_r0;
  inout sda;
  input clk;
  input rst_n;
  input sda_0;
  input [26:0]axi_gpio_in;

  wire \FSM_sequential_i2c_state[0]_i_1_n_0 ;
  wire \FSM_sequential_i2c_state[3]_i_1_n_0 ;
  wire \FSM_sequential_i2c_state[3]_i_3_n_0 ;
  wire \FSM_sequential_i2c_state[3]_i_4_n_0 ;
  wire \FSM_sequential_i2c_state[3]_i_5_n_0 ;
  wire \FSM_sequential_i2c_state[3]_i_6_n_0 ;
  wire [26:0]axi_gpio_in;
  wire [31:0]axi_gpio_in_r1;
  wire \axi_gpio_in_r2_reg_n_0_[0] ;
  wire \axi_gpio_in_r2_reg_n_0_[10] ;
  wire \axi_gpio_in_r2_reg_n_0_[11] ;
  wire \axi_gpio_in_r2_reg_n_0_[12] ;
  wire \axi_gpio_in_r2_reg_n_0_[13] ;
  wire \axi_gpio_in_r2_reg_n_0_[14] ;
  wire \axi_gpio_in_r2_reg_n_0_[15] ;
  wire \axi_gpio_in_r2_reg_n_0_[16] ;
  wire \axi_gpio_in_r2_reg_n_0_[17] ;
  wire \axi_gpio_in_r2_reg_n_0_[18] ;
  wire \axi_gpio_in_r2_reg_n_0_[19] ;
  wire \axi_gpio_in_r2_reg_n_0_[1] ;
  wire \axi_gpio_in_r2_reg_n_0_[20] ;
  wire \axi_gpio_in_r2_reg_n_0_[21] ;
  wire \axi_gpio_in_r2_reg_n_0_[22] ;
  wire \axi_gpio_in_r2_reg_n_0_[23] ;
  wire \axi_gpio_in_r2_reg_n_0_[2] ;
  wire \axi_gpio_in_r2_reg_n_0_[3] ;
  wire \axi_gpio_in_r2_reg_n_0_[4] ;
  wire \axi_gpio_in_r2_reg_n_0_[5] ;
  wire \axi_gpio_in_r2_reg_n_0_[6] ;
  wire \axi_gpio_in_r2_reg_n_0_[7] ;
  wire \axi_gpio_in_r2_reg_n_0_[8] ;
  wire \axi_gpio_in_r2_reg_n_0_[9] ;
  wire [31:31]axi_gpio_in_r3;
  wire [23:0]axi_gpio_out;
  wire \axi_gpio_out[23]_i_1_n_0 ;
  wire clk;
  wire ctrl_clk;
  wire [9:0]ctrl_clk_counter;
  wire \ctrl_clk_counter[0]_i_1_n_0 ;
  wire \ctrl_clk_counter[1]_i_1_n_0 ;
  wire \ctrl_clk_counter[2]_i_1_n_0 ;
  wire \ctrl_clk_counter[3]_i_1_n_0 ;
  wire \ctrl_clk_counter[3]_i_2_n_0 ;
  wire \ctrl_clk_counter[4]_i_1_n_0 ;
  wire \ctrl_clk_counter[5]_i_1_n_0 ;
  wire \ctrl_clk_counter[5]_i_2_n_0 ;
  wire \ctrl_clk_counter[6]_i_1_n_0 ;
  wire \ctrl_clk_counter[7]_i_1_n_0 ;
  wire \ctrl_clk_counter[8]_i_1_n_0 ;
  wire \ctrl_clk_counter[9]_i_1_n_0 ;
  wire \ctrl_clk_counter[9]_i_2_n_0 ;
  wire \ctrl_clk_counter[9]_i_3_n_0 ;
  wire ctrl_clk_i_1_n_0;
  wire [2:1]delay_counter;
  wire \delay_counter[0]_i_1_n_0 ;
  wire \delay_counter[0]_i_2_n_0 ;
  wire \delay_counter[0]_i_3_n_0 ;
  wire \delay_counter[0]_i_4_n_0 ;
  wire \delay_counter[2]_i_1_n_0 ;
  wire \delay_counter[2]_i_3_n_0 ;
  wire \delay_counter_reg_n_0_[0] ;
  wire \delay_counter_reg_n_0_[1] ;
  wire \delay_counter_reg_n_0_[2] ;
  wire [2:2]i2c_address_byte;
  wire \i2c_address_byte_reg_n_0_[2] ;
  wire [10:0]i2c_clk_counter;
  wire \i2c_clk_counter[0]_i_1_n_0 ;
  wire \i2c_clk_counter[10]_i_1_n_0 ;
  wire \i2c_clk_counter[10]_i_2_n_0 ;
  wire \i2c_clk_counter[10]_i_3_n_0 ;
  wire \i2c_clk_counter[10]_i_4_n_0 ;
  wire \i2c_clk_counter[1]_i_1_n_0 ;
  wire \i2c_clk_counter[2]_i_1_n_0 ;
  wire \i2c_clk_counter[3]_i_1_n_0 ;
  wire \i2c_clk_counter[3]_i_2_n_0 ;
  wire \i2c_clk_counter[4]_i_1_n_0 ;
  wire \i2c_clk_counter[5]_i_1_n_0 ;
  wire \i2c_clk_counter[5]_i_2_n_0 ;
  wire \i2c_clk_counter[6]_i_1_n_0 ;
  wire \i2c_clk_counter[7]_i_1_n_0 ;
  wire \i2c_clk_counter[7]_i_2_n_0 ;
  wire \i2c_clk_counter[7]_i_3_n_0 ;
  wire \i2c_clk_counter[8]_i_1_n_0 ;
  wire \i2c_clk_counter[9]_i_1_n_0 ;
  wire \i2c_cmd_byte_reg_n_0_[0] ;
  wire \i2c_cmd_byte_reg_n_0_[1] ;
  wire \i2c_cmd_byte_reg_n_0_[2] ;
  wire \i2c_cmd_byte_reg_n_0_[3] ;
  wire \i2c_cmd_byte_reg_n_0_[4] ;
  wire \i2c_cmd_byte_reg_n_0_[5] ;
  wire \i2c_cmd_byte_reg_n_0_[6] ;
  wire \i2c_cmd_byte_reg_n_0_[7] ;
  wire \i2c_cmd_read_byte[0]_i_1_n_0 ;
  wire \i2c_cmd_read_byte[0]_i_2_n_0 ;
  wire \i2c_cmd_read_byte[1]_i_1_n_0 ;
  wire \i2c_cmd_read_byte[1]_i_2_n_0 ;
  wire \i2c_cmd_read_byte[2]_i_1_n_0 ;
  wire \i2c_cmd_read_byte[2]_i_2_n_0 ;
  wire \i2c_cmd_read_byte[3]_i_1_n_0 ;
  wire \i2c_cmd_read_byte[3]_i_2_n_0 ;
  wire \i2c_cmd_read_byte[4]_i_1_n_0 ;
  wire \i2c_cmd_read_byte[4]_i_2_n_0 ;
  wire \i2c_cmd_read_byte[5]_i_1_n_0 ;
  wire \i2c_cmd_read_byte[5]_i_2_n_0 ;
  wire \i2c_cmd_read_byte[6]_i_1_n_0 ;
  wire \i2c_cmd_read_byte[6]_i_2_n_0 ;
  wire \i2c_cmd_read_byte[7]_i_1_n_0 ;
  wire \i2c_cmd_read_byte[7]_i_2_n_0 ;
  wire \i2c_cmd_read_byte[7]_i_3_n_0 ;
  wire \i2c_cmd_read_byte_reg_n_0_[0] ;
  wire \i2c_cmd_read_byte_reg_n_0_[1] ;
  wire \i2c_cmd_read_byte_reg_n_0_[2] ;
  wire \i2c_cmd_read_byte_reg_n_0_[3] ;
  wire \i2c_cmd_read_byte_reg_n_0_[4] ;
  wire \i2c_cmd_read_byte_reg_n_0_[5] ;
  wire \i2c_cmd_read_byte_reg_n_0_[6] ;
  wire \i2c_cmd_read_byte_reg_n_0_[7] ;
  wire [7:0]i2c_data_lsb;
  wire [7:0]i2c_data_msb;
  wire [7:0]i2c_lsb_data_read_byte;
  wire \i2c_lsb_data_read_byte[0]_i_1_n_0 ;
  wire \i2c_lsb_data_read_byte[0]_i_2_n_0 ;
  wire \i2c_lsb_data_read_byte[1]_i_1_n_0 ;
  wire \i2c_lsb_data_read_byte[1]_i_2_n_0 ;
  wire \i2c_lsb_data_read_byte[2]_i_1_n_0 ;
  wire \i2c_lsb_data_read_byte[2]_i_2_n_0 ;
  wire \i2c_lsb_data_read_byte[3]_i_1_n_0 ;
  wire \i2c_lsb_data_read_byte[3]_i_2_n_0 ;
  wire \i2c_lsb_data_read_byte[4]_i_1_n_0 ;
  wire \i2c_lsb_data_read_byte[4]_i_2_n_0 ;
  wire \i2c_lsb_data_read_byte[5]_i_1_n_0 ;
  wire \i2c_lsb_data_read_byte[5]_i_2_n_0 ;
  wire \i2c_lsb_data_read_byte[6]_i_1_n_0 ;
  wire \i2c_lsb_data_read_byte[6]_i_2_n_0 ;
  wire \i2c_lsb_data_read_byte[7]_i_1_n_0 ;
  wire \i2c_lsb_data_read_byte[7]_i_2_n_0 ;
  wire \i2c_lsb_data_read_byte[7]_i_3_n_0 ;
  wire [7:0]i2c_msb_data_read_byte;
  wire \i2c_msb_data_read_byte[0]_i_1_n_0 ;
  wire \i2c_msb_data_read_byte[0]_i_2_n_0 ;
  wire \i2c_msb_data_read_byte[1]_i_1_n_0 ;
  wire \i2c_msb_data_read_byte[1]_i_2_n_0 ;
  wire \i2c_msb_data_read_byte[2]_i_1_n_0 ;
  wire \i2c_msb_data_read_byte[2]_i_2_n_0 ;
  wire \i2c_msb_data_read_byte[3]_i_1_n_0 ;
  wire \i2c_msb_data_read_byte[3]_i_2_n_0 ;
  wire \i2c_msb_data_read_byte[4]_i_1_n_0 ;
  wire \i2c_msb_data_read_byte[4]_i_2_n_0 ;
  wire \i2c_msb_data_read_byte[5]_i_1_n_0 ;
  wire \i2c_msb_data_read_byte[5]_i_2_n_0 ;
  wire \i2c_msb_data_read_byte[6]_i_1_n_0 ;
  wire \i2c_msb_data_read_byte[6]_i_2_n_0 ;
  wire \i2c_msb_data_read_byte[7]_i_1_n_0 ;
  wire \i2c_msb_data_read_byte[7]_i_2_n_0 ;
  wire \i2c_msb_data_read_byte[7]_i_3_n_0 ;
  wire [3:1]i2c_shift_counter;
  wire \i2c_shift_counter[0]_i_1_n_0 ;
  wire \i2c_shift_counter[1]_i_2_n_0 ;
  wire \i2c_shift_counter[2]_i_1_n_0 ;
  wire \i2c_shift_counter[2]_i_2_n_0 ;
  wire \i2c_shift_counter[2]_i_3_n_0 ;
  wire \i2c_shift_counter[3]_i_1_n_0 ;
  wire \i2c_shift_counter[3]_i_3_n_0 ;
  wire \i2c_shift_counter[3]_i_4_n_0 ;
  wire \i2c_shift_counter_reg_n_0_[0] ;
  wire \i2c_shift_counter_reg_n_0_[1] ;
  wire \i2c_shift_counter_reg_n_0_[2] ;
  wire \i2c_shift_counter_reg_n_0_[3] ;
  wire [3:0]i2c_shift_read_counter;
  wire \i2c_shift_read_counter[2]_i_1_n_0 ;
  wire \i2c_shift_read_counter[3]_i_1_n_0 ;
  wire [3:0]i2c_shift_read_counter_reg;
  wire [3:0]i2c_state__0;
  wire [3:1]i2c_state__1;
  wire p_0_in22_in;
  wire p_1_in;
  wire p_1_in27_in;
  wire read_flag18_out;
  wire read_flag_reg_n_0;
  wire rst_n;
  wire rst_n_0;
  wire scl_active_i_1_n_0;
  wire scl_active_reg_0;
  wire scl_active_reg_n_0;
  wire scl_freerunning;
  wire scl_freerunning_i_1_n_0;
  wire scl_r10_out;
  wire scl_r_i_1_n_0;
  wire scl_r_reg_n_0;
  wire sda;
  wire sda_0;
  wire sda_en;
  wire sda_en_i;
  wire sda_en_i_i_1_n_0;
  wire sda_en_i_i_3_n_0;
  wire sda_en_i_i_4_n_0;
  wire sda_r;
  wire sda_r0;
  wire sda_r6_out;
  wire sda_r__0;
  wire sda_r_tristate_oe_i_10_n_0;
  wire sda_r_tristate_oe_i_11_n_0;
  wire sda_r_tristate_oe_i_12_n_0;
  wire sda_r_tristate_oe_i_13_n_0;
  wire sda_r_tristate_oe_i_14_n_0;
  wire sda_r_tristate_oe_i_15_n_0;
  wire sda_r_tristate_oe_i_3_n_0;
  wire sda_r_tristate_oe_i_4_n_0;
  wire sda_r_tristate_oe_i_5_n_0;
  wire sda_r_tristate_oe_i_6_n_0;
  wire sda_r_tristate_oe_i_7_n_0;
  wire sda_r_tristate_oe_i_8_n_0;
  wire sda_r_tristate_oe_i_9_n_0;
  wire sda_r_tristate_oe_reg_n_0;

  LUT6 #(
    .INIT(64'h5555555555555510)) 
    \FSM_sequential_i2c_state[0]_i_1 
       (.I0(i2c_state__0[0]),
        .I1(axi_gpio_in_r3),
        .I2(p_1_in27_in),
        .I3(i2c_state__0[3]),
        .I4(i2c_state__0[2]),
        .I5(i2c_state__0[1]),
        .O(\FSM_sequential_i2c_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_i2c_state[1]_i_1 
       (.I0(i2c_state__0[1]),
        .I1(i2c_state__0[0]),
        .O(i2c_state__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \FSM_sequential_i2c_state[2]_i_1 
       (.I0(i2c_state__0[2]),
        .I1(i2c_state__0[0]),
        .I2(i2c_state__0[1]),
        .O(i2c_state__1[2]));
  LUT5 #(
    .INIT(32'hA8A8A8AA)) 
    \FSM_sequential_i2c_state[3]_i_1 
       (.I0(sda_en_i_i_3_n_0),
        .I1(\FSM_sequential_i2c_state[3]_i_3_n_0 ),
        .I2(\FSM_sequential_i2c_state[3]_i_4_n_0 ),
        .I3(i2c_state__0[0]),
        .I4(\FSM_sequential_i2c_state[3]_i_5_n_0 ),
        .O(\FSM_sequential_i2c_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \FSM_sequential_i2c_state[3]_i_2 
       (.I0(i2c_state__0[3]),
        .I1(i2c_state__0[1]),
        .I2(i2c_state__0[2]),
        .I3(i2c_state__0[0]),
        .O(i2c_state__1[3]));
  LUT6 #(
    .INIT(64'h8AAF8AA0000F000F)) 
    \FSM_sequential_i2c_state[3]_i_3 
       (.I0(i2c_state__0[0]),
        .I1(\FSM_sequential_i2c_state[3]_i_6_n_0 ),
        .I2(i2c_state__0[3]),
        .I3(i2c_state__0[1]),
        .I4(\i2c_shift_counter[3]_i_3_n_0 ),
        .I5(i2c_state__0[2]),
        .O(\FSM_sequential_i2c_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3CBC3C8000800080)) 
    \FSM_sequential_i2c_state[3]_i_4 
       (.I0(\i2c_shift_counter[3]_i_3_n_0 ),
        .I1(i2c_state__0[1]),
        .I2(i2c_state__0[3]),
        .I3(i2c_state__0[2]),
        .I4(i2c_state__0[0]),
        .I5(\i2c_shift_counter[2]_i_3_n_0 ),
        .O(\FSM_sequential_i2c_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h606060E6E6E6E6E6)) 
    \FSM_sequential_i2c_state[3]_i_5 
       (.I0(i2c_state__0[1]),
        .I1(i2c_state__0[3]),
        .I2(i2c_state__0[2]),
        .I3(\delay_counter_reg_n_0_[1] ),
        .I4(\delay_counter_reg_n_0_[0] ),
        .I5(\delay_counter_reg_n_0_[2] ),
        .O(\FSM_sequential_i2c_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_i2c_state[3]_i_6 
       (.I0(\delay_counter_reg_n_0_[1] ),
        .I1(\delay_counter_reg_n_0_[0] ),
        .I2(\delay_counter_reg_n_0_[2] ),
        .O(\FSM_sequential_i2c_state[3]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "i2c_s_ack1:0100,i2c_s_write_address:0011,i2c_s_ack4:1101,i2c_s_delay1:0010,i2c_s_delay4:1011,i2c_s_data_lsb:1100,i2c_s_ack3:1010,i2c_s_start:0001,i2c_s_idle:0000,i2c_s_data_msb:1001,i2c_s_ack2:0111,i2c_s_delay3:1000,i2c_s_cmd:0110,i2c_s_stop:1111,i2c_s_delay5:1110,i2c_s_delay2:0101" *) 
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_i2c_state_reg[0] 
       (.C(ctrl_clk),
        .CE(\FSM_sequential_i2c_state[3]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\FSM_sequential_i2c_state[0]_i_1_n_0 ),
        .Q(i2c_state__0[0]));
  (* FSM_ENCODED_STATES = "i2c_s_ack1:0100,i2c_s_write_address:0011,i2c_s_ack4:1101,i2c_s_delay1:0010,i2c_s_delay4:1011,i2c_s_data_lsb:1100,i2c_s_ack3:1010,i2c_s_start:0001,i2c_s_idle:0000,i2c_s_data_msb:1001,i2c_s_ack2:0111,i2c_s_delay3:1000,i2c_s_cmd:0110,i2c_s_stop:1111,i2c_s_delay5:1110,i2c_s_delay2:0101" *) 
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_i2c_state_reg[1] 
       (.C(ctrl_clk),
        .CE(\FSM_sequential_i2c_state[3]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_state__1[1]),
        .Q(i2c_state__0[1]));
  (* FSM_ENCODED_STATES = "i2c_s_ack1:0100,i2c_s_write_address:0011,i2c_s_ack4:1101,i2c_s_delay1:0010,i2c_s_delay4:1011,i2c_s_data_lsb:1100,i2c_s_ack3:1010,i2c_s_start:0001,i2c_s_idle:0000,i2c_s_data_msb:1001,i2c_s_ack2:0111,i2c_s_delay3:1000,i2c_s_cmd:0110,i2c_s_stop:1111,i2c_s_delay5:1110,i2c_s_delay2:0101" *) 
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_i2c_state_reg[2] 
       (.C(ctrl_clk),
        .CE(\FSM_sequential_i2c_state[3]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_state__1[2]),
        .Q(i2c_state__0[2]));
  (* FSM_ENCODED_STATES = "i2c_s_ack1:0100,i2c_s_write_address:0011,i2c_s_ack4:1101,i2c_s_delay1:0010,i2c_s_delay4:1011,i2c_s_data_lsb:1100,i2c_s_ack3:1010,i2c_s_start:0001,i2c_s_idle:0000,i2c_s_data_msb:1001,i2c_s_ack2:0111,i2c_s_delay3:1000,i2c_s_cmd:0110,i2c_s_stop:1111,i2c_s_delay5:1110,i2c_s_delay2:0101" *) 
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_i2c_state_reg[3] 
       (.C(ctrl_clk),
        .CE(\FSM_sequential_i2c_state[3]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_state__1[3]),
        .Q(i2c_state__0[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[0] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[0]),
        .Q(axi_gpio_in_r1[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[10] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[10]),
        .Q(axi_gpio_in_r1[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[11] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[11]),
        .Q(axi_gpio_in_r1[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[12] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[12]),
        .Q(axi_gpio_in_r1[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[13] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[13]),
        .Q(axi_gpio_in_r1[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[14] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[14]),
        .Q(axi_gpio_in_r1[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[15] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[15]),
        .Q(axi_gpio_in_r1[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[16] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[16]),
        .Q(axi_gpio_in_r1[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[17] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[17]),
        .Q(axi_gpio_in_r1[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[18] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[18]),
        .Q(axi_gpio_in_r1[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[19] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[19]),
        .Q(axi_gpio_in_r1[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[1] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[1]),
        .Q(axi_gpio_in_r1[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[20] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[20]),
        .Q(axi_gpio_in_r1[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[21] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[21]),
        .Q(axi_gpio_in_r1[21]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[22] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[22]),
        .Q(axi_gpio_in_r1[22]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[23] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[23]),
        .Q(axi_gpio_in_r1[23]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[24] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[24]),
        .Q(axi_gpio_in_r1[24]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[2] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[2]),
        .Q(axi_gpio_in_r1[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[30] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[25]),
        .Q(axi_gpio_in_r1[30]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[31] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[26]),
        .Q(axi_gpio_in_r1[31]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[3] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[3]),
        .Q(axi_gpio_in_r1[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[4] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[4]),
        .Q(axi_gpio_in_r1[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[5] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[5]),
        .Q(axi_gpio_in_r1[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[6] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[6]),
        .Q(axi_gpio_in_r1[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[7] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[7]),
        .Q(axi_gpio_in_r1[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[8] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[8]),
        .Q(axi_gpio_in_r1[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r1_reg[9] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in[9]),
        .Q(axi_gpio_in_r1[9]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[0] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[0]),
        .Q(\axi_gpio_in_r2_reg_n_0_[0] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[10] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[10]),
        .Q(\axi_gpio_in_r2_reg_n_0_[10] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[11] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[11]),
        .Q(\axi_gpio_in_r2_reg_n_0_[11] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[12] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[12]),
        .Q(\axi_gpio_in_r2_reg_n_0_[12] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[13] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[13]),
        .Q(\axi_gpio_in_r2_reg_n_0_[13] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[14] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[14]),
        .Q(\axi_gpio_in_r2_reg_n_0_[14] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[15] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[15]),
        .Q(\axi_gpio_in_r2_reg_n_0_[15] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[16] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[16]),
        .Q(\axi_gpio_in_r2_reg_n_0_[16] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[17] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[17]),
        .Q(\axi_gpio_in_r2_reg_n_0_[17] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[18] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[18]),
        .Q(\axi_gpio_in_r2_reg_n_0_[18] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[19] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[19]),
        .Q(\axi_gpio_in_r2_reg_n_0_[19] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[1] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[1]),
        .Q(\axi_gpio_in_r2_reg_n_0_[1] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[20] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[20]),
        .Q(\axi_gpio_in_r2_reg_n_0_[20] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[21] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[21]),
        .Q(\axi_gpio_in_r2_reg_n_0_[21] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[22] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[22]),
        .Q(\axi_gpio_in_r2_reg_n_0_[22] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[23] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[23]),
        .Q(\axi_gpio_in_r2_reg_n_0_[23] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[24] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[24]),
        .Q(p_1_in));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[2] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[2]),
        .Q(\axi_gpio_in_r2_reg_n_0_[2] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[30] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[30]),
        .Q(p_0_in22_in));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[31] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[31]),
        .Q(p_1_in27_in));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[3] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[3]),
        .Q(\axi_gpio_in_r2_reg_n_0_[3] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[4] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[4]),
        .Q(\axi_gpio_in_r2_reg_n_0_[4] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[5] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[5]),
        .Q(\axi_gpio_in_r2_reg_n_0_[5] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[6] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[6]),
        .Q(\axi_gpio_in_r2_reg_n_0_[6] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[7] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[7]),
        .Q(\axi_gpio_in_r2_reg_n_0_[7] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[8] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[8]),
        .Q(\axi_gpio_in_r2_reg_n_0_[8] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r2_reg[9] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(axi_gpio_in_r1[9]),
        .Q(\axi_gpio_in_r2_reg_n_0_[9] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_in_r3_reg[31] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_1_in27_in),
        .Q(axi_gpio_in_r3));
  LUT5 #(
    .INIT(32'h80000000)) 
    \axi_gpio_out[23]_i_1 
       (.I0(read_flag_reg_n_0),
        .I1(i2c_state__0[3]),
        .I2(i2c_state__0[1]),
        .I3(i2c_state__0[2]),
        .I4(i2c_state__0[0]),
        .O(\axi_gpio_out[23]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_gpio_out[23]_i_2 
       (.I0(rst_n),
        .O(rst_n_0));
  FDCE \axi_gpio_out_reg[0] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_lsb_data_read_byte[0]),
        .Q(axi_gpio_out[0]));
  FDCE \axi_gpio_out_reg[10] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_msb_data_read_byte[2]),
        .Q(axi_gpio_out[10]));
  FDCE \axi_gpio_out_reg[11] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_msb_data_read_byte[3]),
        .Q(axi_gpio_out[11]));
  FDCE \axi_gpio_out_reg[12] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_msb_data_read_byte[4]),
        .Q(axi_gpio_out[12]));
  FDCE \axi_gpio_out_reg[13] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_msb_data_read_byte[5]),
        .Q(axi_gpio_out[13]));
  FDCE \axi_gpio_out_reg[14] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_msb_data_read_byte[6]),
        .Q(axi_gpio_out[14]));
  FDCE \axi_gpio_out_reg[15] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_msb_data_read_byte[7]),
        .Q(axi_gpio_out[15]));
  FDCE \axi_gpio_out_reg[16] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\i2c_cmd_read_byte_reg_n_0_[0] ),
        .Q(axi_gpio_out[16]));
  FDCE \axi_gpio_out_reg[17] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\i2c_cmd_read_byte_reg_n_0_[1] ),
        .Q(axi_gpio_out[17]));
  FDCE \axi_gpio_out_reg[18] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\i2c_cmd_read_byte_reg_n_0_[2] ),
        .Q(axi_gpio_out[18]));
  FDCE \axi_gpio_out_reg[19] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\i2c_cmd_read_byte_reg_n_0_[3] ),
        .Q(axi_gpio_out[19]));
  FDCE \axi_gpio_out_reg[1] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_lsb_data_read_byte[1]),
        .Q(axi_gpio_out[1]));
  FDCE \axi_gpio_out_reg[20] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\i2c_cmd_read_byte_reg_n_0_[4] ),
        .Q(axi_gpio_out[20]));
  FDCE \axi_gpio_out_reg[21] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\i2c_cmd_read_byte_reg_n_0_[5] ),
        .Q(axi_gpio_out[21]));
  FDCE \axi_gpio_out_reg[22] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\i2c_cmd_read_byte_reg_n_0_[6] ),
        .Q(axi_gpio_out[22]));
  FDCE \axi_gpio_out_reg[23] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\i2c_cmd_read_byte_reg_n_0_[7] ),
        .Q(axi_gpio_out[23]));
  FDCE \axi_gpio_out_reg[2] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_lsb_data_read_byte[2]),
        .Q(axi_gpio_out[2]));
  FDCE \axi_gpio_out_reg[3] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_lsb_data_read_byte[3]),
        .Q(axi_gpio_out[3]));
  FDCE \axi_gpio_out_reg[4] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_lsb_data_read_byte[4]),
        .Q(axi_gpio_out[4]));
  FDCE \axi_gpio_out_reg[5] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_lsb_data_read_byte[5]),
        .Q(axi_gpio_out[5]));
  FDCE \axi_gpio_out_reg[6] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_lsb_data_read_byte[6]),
        .Q(axi_gpio_out[6]));
  FDCE \axi_gpio_out_reg[7] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_lsb_data_read_byte[7]),
        .Q(axi_gpio_out[7]));
  FDCE \axi_gpio_out_reg[8] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_msb_data_read_byte[0]),
        .Q(axi_gpio_out[8]));
  FDCE \axi_gpio_out_reg[9] 
       (.C(scl_active_reg_0),
        .CE(\axi_gpio_out[23]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_msb_data_read_byte[1]),
        .Q(axi_gpio_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ctrl_clk_counter[0]_i_1 
       (.I0(ctrl_clk_counter[0]),
        .I1(\ctrl_clk_counter[9]_i_2_n_0 ),
        .O(\ctrl_clk_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \ctrl_clk_counter[1]_i_1 
       (.I0(ctrl_clk_counter[0]),
        .I1(ctrl_clk_counter[1]),
        .I2(\ctrl_clk_counter[9]_i_2_n_0 ),
        .O(\ctrl_clk_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \ctrl_clk_counter[2]_i_1 
       (.I0(\ctrl_clk_counter[9]_i_2_n_0 ),
        .I1(ctrl_clk_counter[1]),
        .I2(ctrl_clk_counter[0]),
        .I3(ctrl_clk_counter[2]),
        .O(\ctrl_clk_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \ctrl_clk_counter[3]_i_1 
       (.I0(\ctrl_clk_counter[3]_i_2_n_0 ),
        .I1(ctrl_clk_counter[0]),
        .I2(ctrl_clk_counter[1]),
        .I3(ctrl_clk_counter[2]),
        .I4(ctrl_clk_counter[3]),
        .O(\ctrl_clk_counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \ctrl_clk_counter[3]_i_2 
       (.I0(ctrl_clk_counter[6]),
        .I1(ctrl_clk_counter[8]),
        .I2(ctrl_clk_counter[7]),
        .I3(ctrl_clk_counter[9]),
        .I4(ctrl_clk_counter[5]),
        .O(\ctrl_clk_counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \ctrl_clk_counter[4]_i_1 
       (.I0(\ctrl_clk_counter[9]_i_2_n_0 ),
        .I1(ctrl_clk_counter[2]),
        .I2(ctrl_clk_counter[1]),
        .I3(ctrl_clk_counter[0]),
        .I4(ctrl_clk_counter[3]),
        .I5(ctrl_clk_counter[4]),
        .O(\ctrl_clk_counter[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h51550400)) 
    \ctrl_clk_counter[5]_i_1 
       (.I0(\ctrl_clk_counter[9]_i_2_n_0 ),
        .I1(ctrl_clk_counter[3]),
        .I2(\ctrl_clk_counter[5]_i_2_n_0 ),
        .I3(ctrl_clk_counter[4]),
        .I4(ctrl_clk_counter[5]),
        .O(\ctrl_clk_counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ctrl_clk_counter[5]_i_2 
       (.I0(ctrl_clk_counter[0]),
        .I1(ctrl_clk_counter[1]),
        .I2(ctrl_clk_counter[2]),
        .O(\ctrl_clk_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \ctrl_clk_counter[6]_i_1 
       (.I0(\ctrl_clk_counter[9]_i_2_n_0 ),
        .I1(\ctrl_clk_counter[9]_i_3_n_0 ),
        .I2(ctrl_clk_counter[6]),
        .O(\ctrl_clk_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h5104)) 
    \ctrl_clk_counter[7]_i_1 
       (.I0(\ctrl_clk_counter[9]_i_2_n_0 ),
        .I1(ctrl_clk_counter[6]),
        .I2(\ctrl_clk_counter[9]_i_3_n_0 ),
        .I3(ctrl_clk_counter[7]),
        .O(\ctrl_clk_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0000BF40)) 
    \ctrl_clk_counter[8]_i_1 
       (.I0(\ctrl_clk_counter[9]_i_3_n_0 ),
        .I1(ctrl_clk_counter[6]),
        .I2(ctrl_clk_counter[7]),
        .I3(ctrl_clk_counter[8]),
        .I4(\ctrl_clk_counter[9]_i_2_n_0 ),
        .O(\ctrl_clk_counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4544444444444444)) 
    \ctrl_clk_counter[9]_i_1 
       (.I0(\ctrl_clk_counter[9]_i_2_n_0 ),
        .I1(ctrl_clk_counter[9]),
        .I2(\ctrl_clk_counter[9]_i_3_n_0 ),
        .I3(ctrl_clk_counter[6]),
        .I4(ctrl_clk_counter[8]),
        .I5(ctrl_clk_counter[7]),
        .O(\ctrl_clk_counter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFF80)) 
    \ctrl_clk_counter[9]_i_2 
       (.I0(ctrl_clk_counter[0]),
        .I1(ctrl_clk_counter[1]),
        .I2(ctrl_clk_counter[2]),
        .I3(ctrl_clk_counter[3]),
        .I4(ctrl_clk_counter[4]),
        .I5(\ctrl_clk_counter[3]_i_2_n_0 ),
        .O(\ctrl_clk_counter[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ctrl_clk_counter[9]_i_3 
       (.I0(ctrl_clk_counter[4]),
        .I1(ctrl_clk_counter[2]),
        .I2(ctrl_clk_counter[1]),
        .I3(ctrl_clk_counter[0]),
        .I4(ctrl_clk_counter[3]),
        .I5(ctrl_clk_counter[5]),
        .O(\ctrl_clk_counter[9]_i_3_n_0 ));
  FDCE \ctrl_clk_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\ctrl_clk_counter[0]_i_1_n_0 ),
        .Q(ctrl_clk_counter[0]));
  FDCE \ctrl_clk_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\ctrl_clk_counter[1]_i_1_n_0 ),
        .Q(ctrl_clk_counter[1]));
  FDCE \ctrl_clk_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\ctrl_clk_counter[2]_i_1_n_0 ),
        .Q(ctrl_clk_counter[2]));
  FDCE \ctrl_clk_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\ctrl_clk_counter[3]_i_1_n_0 ),
        .Q(ctrl_clk_counter[3]));
  FDCE \ctrl_clk_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\ctrl_clk_counter[4]_i_1_n_0 ),
        .Q(ctrl_clk_counter[4]));
  FDCE \ctrl_clk_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\ctrl_clk_counter[5]_i_1_n_0 ),
        .Q(ctrl_clk_counter[5]));
  FDCE \ctrl_clk_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\ctrl_clk_counter[6]_i_1_n_0 ),
        .Q(ctrl_clk_counter[6]));
  FDCE \ctrl_clk_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\ctrl_clk_counter[7]_i_1_n_0 ),
        .Q(ctrl_clk_counter[7]));
  FDCE \ctrl_clk_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\ctrl_clk_counter[8]_i_1_n_0 ),
        .Q(ctrl_clk_counter[8]));
  FDCE \ctrl_clk_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\ctrl_clk_counter[9]_i_1_n_0 ),
        .Q(ctrl_clk_counter[9]));
  LUT2 #(
    .INIT(4'h6)) 
    ctrl_clk_i_1
       (.I0(\ctrl_clk_counter[9]_i_2_n_0 ),
        .I1(ctrl_clk),
        .O(ctrl_clk_i_1_n_0));
  FDPE ctrl_clk_reg
       (.C(clk),
        .CE(1'b1),
        .D(ctrl_clk_i_1_n_0),
        .PRE(rst_n_0),
        .Q(ctrl_clk));
  LUT6 #(
    .INIT(64'h0000AAAA0000AAEA)) 
    \delay_counter[0]_i_1 
       (.I0(\delay_counter[0]_i_2_n_0 ),
        .I1(\delay_counter[0]_i_3_n_0 ),
        .I2(\delay_counter[0]_i_4_n_0 ),
        .I3(\delay_counter_reg_n_0_[2] ),
        .I4(\delay_counter_reg_n_0_[0] ),
        .I5(\delay_counter_reg_n_0_[1] ),
        .O(\delay_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00001AE6)) 
    \delay_counter[0]_i_2 
       (.I0(i2c_state__0[1]),
        .I1(i2c_state__0[3]),
        .I2(i2c_state__0[0]),
        .I3(i2c_state__0[2]),
        .I4(\i2c_shift_counter[3]_i_3_n_0 ),
        .O(\delay_counter[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[0]_i_3 
       (.I0(i2c_state__0[3]),
        .I1(i2c_state__0[1]),
        .O(\delay_counter[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[0]_i_4 
       (.I0(i2c_state__0[2]),
        .I1(i2c_state__0[0]),
        .O(\delay_counter[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \delay_counter[1]_i_1 
       (.I0(\delay_counter_reg_n_0_[0] ),
        .I1(\delay_counter_reg_n_0_[1] ),
        .I2(\delay_counter_reg_n_0_[2] ),
        .I3(\delay_counter[2]_i_3_n_0 ),
        .O(delay_counter[1]));
  LUT5 #(
    .INIT(32'h0000F99E)) 
    \delay_counter[2]_i_1 
       (.I0(i2c_state__0[0]),
        .I1(i2c_state__0[2]),
        .I2(i2c_state__0[1]),
        .I3(i2c_state__0[3]),
        .I4(scl_freerunning),
        .O(\delay_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0042)) 
    \delay_counter[2]_i_2 
       (.I0(\delay_counter_reg_n_0_[2] ),
        .I1(\delay_counter_reg_n_0_[1] ),
        .I2(\delay_counter_reg_n_0_[0] ),
        .I3(\delay_counter[2]_i_3_n_0 ),
        .O(delay_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h9A87)) 
    \delay_counter[2]_i_3 
       (.I0(i2c_state__0[2]),
        .I1(i2c_state__0[0]),
        .I2(i2c_state__0[1]),
        .I3(i2c_state__0[3]),
        .O(\delay_counter[2]_i_3_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \delay_counter_reg[0] 
       (.C(ctrl_clk),
        .CE(\delay_counter[2]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\delay_counter[0]_i_1_n_0 ),
        .Q(\delay_counter_reg_n_0_[0] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \delay_counter_reg[1] 
       (.C(ctrl_clk),
        .CE(\delay_counter[2]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(delay_counter[1]),
        .Q(\delay_counter_reg_n_0_[1] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \delay_counter_reg[2] 
       (.C(ctrl_clk),
        .CE(\delay_counter[2]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(delay_counter[2]),
        .Q(\delay_counter_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \i2c_address_byte[2]_i_1 
       (.I0(i2c_state__0[1]),
        .I1(i2c_state__0[0]),
        .I2(i2c_state__0[2]),
        .I3(axi_gpio_in_r3),
        .I4(p_1_in27_in),
        .I5(i2c_state__0[3]),
        .O(read_flag18_out));
  LUT1 #(
    .INIT(2'h1)) 
    \i2c_address_byte[2]_i_2 
       (.I0(p_1_in),
        .O(i2c_address_byte));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_address_byte_reg[2] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .D(i2c_address_byte),
        .PRE(rst_n_0),
        .Q(\i2c_address_byte_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00AB)) 
    \i2c_clk_counter[0]_i_1 
       (.I0(\i2c_clk_counter[5]_i_2_n_0 ),
        .I1(i2c_clk_counter[4]),
        .I2(i2c_clk_counter[5]),
        .I3(i2c_clk_counter[0]),
        .O(\i2c_clk_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F2F052F0F0F0F0)) 
    \i2c_clk_counter[10]_i_1 
       (.I0(i2c_clk_counter[9]),
        .I1(\i2c_clk_counter[10]_i_2_n_0 ),
        .I2(i2c_clk_counter[10]),
        .I3(\i2c_clk_counter[10]_i_3_n_0 ),
        .I4(\i2c_clk_counter[10]_i_4_n_0 ),
        .I5(i2c_clk_counter[8]),
        .O(\i2c_clk_counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \i2c_clk_counter[10]_i_2 
       (.I0(i2c_clk_counter[4]),
        .I1(i2c_clk_counter[2]),
        .I2(i2c_clk_counter[0]),
        .I3(i2c_clk_counter[1]),
        .I4(i2c_clk_counter[3]),
        .I5(i2c_clk_counter[5]),
        .O(\i2c_clk_counter[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \i2c_clk_counter[10]_i_3 
       (.I0(i2c_clk_counter[6]),
        .I1(i2c_clk_counter[7]),
        .O(\i2c_clk_counter[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0111111111111111)) 
    \i2c_clk_counter[10]_i_4 
       (.I0(i2c_clk_counter[5]),
        .I1(i2c_clk_counter[4]),
        .I2(i2c_clk_counter[3]),
        .I3(i2c_clk_counter[1]),
        .I4(i2c_clk_counter[0]),
        .I5(i2c_clk_counter[2]),
        .O(\i2c_clk_counter[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00F1F100)) 
    \i2c_clk_counter[1]_i_1 
       (.I0(i2c_clk_counter[5]),
        .I1(i2c_clk_counter[4]),
        .I2(\i2c_clk_counter[5]_i_2_n_0 ),
        .I3(i2c_clk_counter[0]),
        .I4(i2c_clk_counter[1]),
        .O(\i2c_clk_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F1F1F1F1000000)) 
    \i2c_clk_counter[2]_i_1 
       (.I0(i2c_clk_counter[5]),
        .I1(i2c_clk_counter[4]),
        .I2(\i2c_clk_counter[5]_i_2_n_0 ),
        .I3(i2c_clk_counter[1]),
        .I4(i2c_clk_counter[0]),
        .I5(i2c_clk_counter[2]),
        .O(\i2c_clk_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \i2c_clk_counter[3]_i_1 
       (.I0(\i2c_clk_counter[3]_i_2_n_0 ),
        .I1(i2c_clk_counter[2]),
        .I2(i2c_clk_counter[0]),
        .I3(i2c_clk_counter[1]),
        .I4(i2c_clk_counter[3]),
        .O(\i2c_clk_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \i2c_clk_counter[3]_i_2 
       (.I0(i2c_clk_counter[5]),
        .I1(i2c_clk_counter[4]),
        .I2(\i2c_clk_counter[5]_i_2_n_0 ),
        .O(\i2c_clk_counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \i2c_clk_counter[4]_i_1 
       (.I0(\i2c_clk_counter[5]_i_2_n_0 ),
        .I1(i2c_clk_counter[3]),
        .I2(i2c_clk_counter[1]),
        .I3(i2c_clk_counter[0]),
        .I4(i2c_clk_counter[2]),
        .I5(i2c_clk_counter[4]),
        .O(\i2c_clk_counter[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB040)) 
    \i2c_clk_counter[5]_i_1 
       (.I0(\i2c_clk_counter[7]_i_3_n_0 ),
        .I1(i2c_clk_counter[4]),
        .I2(\i2c_clk_counter[5]_i_2_n_0 ),
        .I3(i2c_clk_counter[5]),
        .O(\i2c_clk_counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \i2c_clk_counter[5]_i_2 
       (.I0(i2c_clk_counter[7]),
        .I1(i2c_clk_counter[6]),
        .I2(i2c_clk_counter[8]),
        .I3(i2c_clk_counter[9]),
        .I4(i2c_clk_counter[10]),
        .O(\i2c_clk_counter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC4C433C4C4CCC4C4)) 
    \i2c_clk_counter[6]_i_1 
       (.I0(i2c_clk_counter[7]),
        .I1(i2c_clk_counter[6]),
        .I2(\i2c_clk_counter[7]_i_2_n_0 ),
        .I3(i2c_clk_counter[4]),
        .I4(\i2c_clk_counter[7]_i_3_n_0 ),
        .I5(i2c_clk_counter[5]),
        .O(\i2c_clk_counter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC4C466C4C4CCC4C4)) 
    \i2c_clk_counter[7]_i_1 
       (.I0(i2c_clk_counter[6]),
        .I1(i2c_clk_counter[7]),
        .I2(\i2c_clk_counter[7]_i_2_n_0 ),
        .I3(i2c_clk_counter[4]),
        .I4(\i2c_clk_counter[7]_i_3_n_0 ),
        .I5(i2c_clk_counter[5]),
        .O(\i2c_clk_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \i2c_clk_counter[7]_i_2 
       (.I0(i2c_clk_counter[10]),
        .I1(i2c_clk_counter[9]),
        .I2(i2c_clk_counter[8]),
        .O(\i2c_clk_counter[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \i2c_clk_counter[7]_i_3 
       (.I0(i2c_clk_counter[2]),
        .I1(i2c_clk_counter[0]),
        .I2(i2c_clk_counter[1]),
        .I3(i2c_clk_counter[3]),
        .O(\i2c_clk_counter[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FF0F700F)) 
    \i2c_clk_counter[8]_i_1 
       (.I0(i2c_clk_counter[9]),
        .I1(i2c_clk_counter[10]),
        .I2(\i2c_clk_counter[10]_i_2_n_0 ),
        .I3(i2c_clk_counter[8]),
        .I4(\i2c_clk_counter[10]_i_4_n_0 ),
        .I5(\i2c_clk_counter[10]_i_3_n_0 ),
        .O(\i2c_clk_counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F3F043F0F0F0F0)) 
    \i2c_clk_counter[9]_i_1 
       (.I0(i2c_clk_counter[10]),
        .I1(\i2c_clk_counter[10]_i_2_n_0 ),
        .I2(i2c_clk_counter[9]),
        .I3(\i2c_clk_counter[10]_i_3_n_0 ),
        .I4(\i2c_clk_counter[10]_i_4_n_0 ),
        .I5(i2c_clk_counter[8]),
        .O(\i2c_clk_counter[9]_i_1_n_0 ));
  FDCE \i2c_clk_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_clk_counter[0]_i_1_n_0 ),
        .Q(i2c_clk_counter[0]));
  FDCE \i2c_clk_counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_clk_counter[10]_i_1_n_0 ),
        .Q(i2c_clk_counter[10]));
  FDCE \i2c_clk_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_clk_counter[1]_i_1_n_0 ),
        .Q(i2c_clk_counter[1]));
  FDCE \i2c_clk_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_clk_counter[2]_i_1_n_0 ),
        .Q(i2c_clk_counter[2]));
  FDCE \i2c_clk_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_clk_counter[3]_i_1_n_0 ),
        .Q(i2c_clk_counter[3]));
  FDCE \i2c_clk_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_clk_counter[4]_i_1_n_0 ),
        .Q(i2c_clk_counter[4]));
  FDCE \i2c_clk_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_clk_counter[5]_i_1_n_0 ),
        .Q(i2c_clk_counter[5]));
  FDCE \i2c_clk_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_clk_counter[6]_i_1_n_0 ),
        .Q(i2c_clk_counter[6]));
  FDCE \i2c_clk_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_clk_counter[7]_i_1_n_0 ),
        .Q(i2c_clk_counter[7]));
  FDCE \i2c_clk_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_clk_counter[8]_i_1_n_0 ),
        .Q(i2c_clk_counter[8]));
  FDCE \i2c_clk_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_clk_counter[9]_i_1_n_0 ),
        .Q(i2c_clk_counter[9]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_cmd_byte_reg[0] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[16] ),
        .Q(\i2c_cmd_byte_reg_n_0_[0] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_cmd_byte_reg[1] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[17] ),
        .Q(\i2c_cmd_byte_reg_n_0_[1] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_cmd_byte_reg[2] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[18] ),
        .Q(\i2c_cmd_byte_reg_n_0_[2] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_cmd_byte_reg[3] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[19] ),
        .Q(\i2c_cmd_byte_reg_n_0_[3] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_cmd_byte_reg[4] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[20] ),
        .Q(\i2c_cmd_byte_reg_n_0_[4] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_cmd_byte_reg[5] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[21] ),
        .Q(\i2c_cmd_byte_reg_n_0_[5] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_cmd_byte_reg[6] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[22] ),
        .Q(\i2c_cmd_byte_reg_n_0_[6] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_cmd_byte_reg[7] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[23] ),
        .Q(\i2c_cmd_byte_reg_n_0_[7] ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_cmd_read_byte[0]_i_1 
       (.I0(\i2c_cmd_read_byte[0]_i_2_n_0 ),
        .I1(\i2c_cmd_read_byte_reg_n_0_[0] ),
        .I2(sda),
        .O(\i2c_cmd_read_byte[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \i2c_cmd_read_byte[0]_i_2 
       (.I0(i2c_shift_read_counter_reg[3]),
        .I1(i2c_shift_read_counter_reg[0]),
        .I2(i2c_shift_read_counter_reg[1]),
        .I3(i2c_shift_read_counter_reg[2]),
        .I4(\i2c_cmd_read_byte[7]_i_3_n_0 ),
        .O(\i2c_cmd_read_byte[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_cmd_read_byte[1]_i_1 
       (.I0(\i2c_cmd_read_byte[1]_i_2_n_0 ),
        .I1(\i2c_cmd_read_byte_reg_n_0_[1] ),
        .I2(sda),
        .O(\i2c_cmd_read_byte[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \i2c_cmd_read_byte[1]_i_2 
       (.I0(i2c_shift_read_counter_reg[3]),
        .I1(i2c_shift_read_counter_reg[0]),
        .I2(i2c_shift_read_counter_reg[1]),
        .I3(i2c_shift_read_counter_reg[2]),
        .I4(\i2c_cmd_read_byte[7]_i_3_n_0 ),
        .O(\i2c_cmd_read_byte[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_cmd_read_byte[2]_i_1 
       (.I0(\i2c_cmd_read_byte[2]_i_2_n_0 ),
        .I1(\i2c_cmd_read_byte_reg_n_0_[2] ),
        .I2(sda),
        .O(\i2c_cmd_read_byte[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \i2c_cmd_read_byte[2]_i_2 
       (.I0(i2c_shift_read_counter_reg[3]),
        .I1(i2c_shift_read_counter_reg[0]),
        .I2(i2c_shift_read_counter_reg[1]),
        .I3(i2c_shift_read_counter_reg[2]),
        .I4(\i2c_cmd_read_byte[7]_i_3_n_0 ),
        .O(\i2c_cmd_read_byte[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_cmd_read_byte[3]_i_1 
       (.I0(\i2c_cmd_read_byte[3]_i_2_n_0 ),
        .I1(\i2c_cmd_read_byte_reg_n_0_[3] ),
        .I2(sda),
        .O(\i2c_cmd_read_byte[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \i2c_cmd_read_byte[3]_i_2 
       (.I0(i2c_shift_read_counter_reg[3]),
        .I1(i2c_shift_read_counter_reg[0]),
        .I2(i2c_shift_read_counter_reg[1]),
        .I3(i2c_shift_read_counter_reg[2]),
        .I4(\i2c_cmd_read_byte[7]_i_3_n_0 ),
        .O(\i2c_cmd_read_byte[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_cmd_read_byte[4]_i_1 
       (.I0(\i2c_cmd_read_byte[4]_i_2_n_0 ),
        .I1(\i2c_cmd_read_byte_reg_n_0_[4] ),
        .I2(sda),
        .O(\i2c_cmd_read_byte[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \i2c_cmd_read_byte[4]_i_2 
       (.I0(i2c_shift_read_counter_reg[3]),
        .I1(i2c_shift_read_counter_reg[0]),
        .I2(i2c_shift_read_counter_reg[1]),
        .I3(i2c_shift_read_counter_reg[2]),
        .I4(\i2c_cmd_read_byte[7]_i_3_n_0 ),
        .O(\i2c_cmd_read_byte[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_cmd_read_byte[5]_i_1 
       (.I0(\i2c_cmd_read_byte[5]_i_2_n_0 ),
        .I1(\i2c_cmd_read_byte_reg_n_0_[5] ),
        .I2(sda),
        .O(\i2c_cmd_read_byte[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \i2c_cmd_read_byte[5]_i_2 
       (.I0(i2c_shift_read_counter_reg[3]),
        .I1(i2c_shift_read_counter_reg[0]),
        .I2(i2c_shift_read_counter_reg[1]),
        .I3(i2c_shift_read_counter_reg[2]),
        .I4(\i2c_cmd_read_byte[7]_i_3_n_0 ),
        .O(\i2c_cmd_read_byte[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_cmd_read_byte[6]_i_1 
       (.I0(\i2c_cmd_read_byte[6]_i_2_n_0 ),
        .I1(\i2c_cmd_read_byte_reg_n_0_[6] ),
        .I2(sda),
        .O(\i2c_cmd_read_byte[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \i2c_cmd_read_byte[6]_i_2 
       (.I0(i2c_shift_read_counter_reg[3]),
        .I1(i2c_shift_read_counter_reg[0]),
        .I2(i2c_shift_read_counter_reg[1]),
        .I3(i2c_shift_read_counter_reg[2]),
        .I4(\i2c_cmd_read_byte[7]_i_3_n_0 ),
        .O(\i2c_cmd_read_byte[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_cmd_read_byte[7]_i_1 
       (.I0(\i2c_cmd_read_byte[7]_i_2_n_0 ),
        .I1(\i2c_cmd_read_byte_reg_n_0_[7] ),
        .I2(sda),
        .O(\i2c_cmd_read_byte[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \i2c_cmd_read_byte[7]_i_2 
       (.I0(i2c_shift_read_counter_reg[2]),
        .I1(i2c_shift_read_counter_reg[1]),
        .I2(i2c_shift_read_counter_reg[0]),
        .I3(i2c_shift_read_counter_reg[3]),
        .I4(\i2c_cmd_read_byte[7]_i_3_n_0 ),
        .O(\i2c_cmd_read_byte[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \i2c_cmd_read_byte[7]_i_3 
       (.I0(i2c_state__0[0]),
        .I1(read_flag_reg_n_0),
        .I2(i2c_state__0[3]),
        .I3(i2c_state__0[2]),
        .I4(i2c_state__0[1]),
        .O(\i2c_cmd_read_byte[7]_i_3_n_0 ));
  FDCE \i2c_cmd_read_byte_reg[0] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_cmd_read_byte[0]_i_1_n_0 ),
        .Q(\i2c_cmd_read_byte_reg_n_0_[0] ));
  FDCE \i2c_cmd_read_byte_reg[1] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_cmd_read_byte[1]_i_1_n_0 ),
        .Q(\i2c_cmd_read_byte_reg_n_0_[1] ));
  FDCE \i2c_cmd_read_byte_reg[2] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_cmd_read_byte[2]_i_1_n_0 ),
        .Q(\i2c_cmd_read_byte_reg_n_0_[2] ));
  FDCE \i2c_cmd_read_byte_reg[3] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_cmd_read_byte[3]_i_1_n_0 ),
        .Q(\i2c_cmd_read_byte_reg_n_0_[3] ));
  FDCE \i2c_cmd_read_byte_reg[4] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_cmd_read_byte[4]_i_1_n_0 ),
        .Q(\i2c_cmd_read_byte_reg_n_0_[4] ));
  FDCE \i2c_cmd_read_byte_reg[5] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_cmd_read_byte[5]_i_1_n_0 ),
        .Q(\i2c_cmd_read_byte_reg_n_0_[5] ));
  FDCE \i2c_cmd_read_byte_reg[6] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_cmd_read_byte[6]_i_1_n_0 ),
        .Q(\i2c_cmd_read_byte_reg_n_0_[6] ));
  FDCE \i2c_cmd_read_byte_reg[7] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_cmd_read_byte[7]_i_1_n_0 ),
        .Q(\i2c_cmd_read_byte_reg_n_0_[7] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_data_lsb_reg[0] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[0] ),
        .Q(i2c_data_lsb[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_data_lsb_reg[1] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[1] ),
        .Q(i2c_data_lsb[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_data_lsb_reg[2] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[2] ),
        .Q(i2c_data_lsb[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_data_lsb_reg[3] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[3] ),
        .Q(i2c_data_lsb[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_data_lsb_reg[4] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[4] ),
        .Q(i2c_data_lsb[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_data_lsb_reg[5] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[5] ),
        .Q(i2c_data_lsb[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_data_lsb_reg[6] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[6] ),
        .Q(i2c_data_lsb[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_data_lsb_reg[7] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[7] ),
        .Q(i2c_data_lsb[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_data_msb_reg[0] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[8] ),
        .Q(i2c_data_msb[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_data_msb_reg[1] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[9] ),
        .Q(i2c_data_msb[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_data_msb_reg[2] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[10] ),
        .Q(i2c_data_msb[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_data_msb_reg[3] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[11] ),
        .Q(i2c_data_msb[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_data_msb_reg[4] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[12] ),
        .Q(i2c_data_msb[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_data_msb_reg[5] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[13] ),
        .Q(i2c_data_msb[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_data_msb_reg[6] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[14] ),
        .Q(i2c_data_msb[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_data_msb_reg[7] 
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(\axi_gpio_in_r2_reg_n_0_[15] ),
        .Q(i2c_data_msb[7]));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_lsb_data_read_byte[0]_i_1 
       (.I0(\i2c_lsb_data_read_byte[0]_i_2_n_0 ),
        .I1(i2c_lsb_data_read_byte[0]),
        .I2(sda),
        .O(\i2c_lsb_data_read_byte[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \i2c_lsb_data_read_byte[0]_i_2 
       (.I0(\i2c_lsb_data_read_byte[7]_i_3_n_0 ),
        .I1(i2c_shift_read_counter_reg[3]),
        .I2(i2c_shift_read_counter_reg[0]),
        .I3(i2c_shift_read_counter_reg[1]),
        .I4(i2c_shift_read_counter_reg[2]),
        .O(\i2c_lsb_data_read_byte[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_lsb_data_read_byte[1]_i_1 
       (.I0(\i2c_lsb_data_read_byte[1]_i_2_n_0 ),
        .I1(i2c_lsb_data_read_byte[1]),
        .I2(sda),
        .O(\i2c_lsb_data_read_byte[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \i2c_lsb_data_read_byte[1]_i_2 
       (.I0(\i2c_lsb_data_read_byte[7]_i_3_n_0 ),
        .I1(i2c_shift_read_counter_reg[3]),
        .I2(i2c_shift_read_counter_reg[0]),
        .I3(i2c_shift_read_counter_reg[1]),
        .I4(i2c_shift_read_counter_reg[2]),
        .O(\i2c_lsb_data_read_byte[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_lsb_data_read_byte[2]_i_1 
       (.I0(\i2c_lsb_data_read_byte[2]_i_2_n_0 ),
        .I1(i2c_lsb_data_read_byte[2]),
        .I2(sda),
        .O(\i2c_lsb_data_read_byte[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \i2c_lsb_data_read_byte[2]_i_2 
       (.I0(\i2c_lsb_data_read_byte[7]_i_3_n_0 ),
        .I1(i2c_shift_read_counter_reg[3]),
        .I2(i2c_shift_read_counter_reg[0]),
        .I3(i2c_shift_read_counter_reg[1]),
        .I4(i2c_shift_read_counter_reg[2]),
        .O(\i2c_lsb_data_read_byte[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_lsb_data_read_byte[3]_i_1 
       (.I0(\i2c_lsb_data_read_byte[3]_i_2_n_0 ),
        .I1(i2c_lsb_data_read_byte[3]),
        .I2(sda),
        .O(\i2c_lsb_data_read_byte[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \i2c_lsb_data_read_byte[3]_i_2 
       (.I0(\i2c_lsb_data_read_byte[7]_i_3_n_0 ),
        .I1(i2c_shift_read_counter_reg[3]),
        .I2(i2c_shift_read_counter_reg[0]),
        .I3(i2c_shift_read_counter_reg[1]),
        .I4(i2c_shift_read_counter_reg[2]),
        .O(\i2c_lsb_data_read_byte[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_lsb_data_read_byte[4]_i_1 
       (.I0(\i2c_lsb_data_read_byte[4]_i_2_n_0 ),
        .I1(i2c_lsb_data_read_byte[4]),
        .I2(sda),
        .O(\i2c_lsb_data_read_byte[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \i2c_lsb_data_read_byte[4]_i_2 
       (.I0(\i2c_lsb_data_read_byte[7]_i_3_n_0 ),
        .I1(i2c_shift_read_counter_reg[3]),
        .I2(i2c_shift_read_counter_reg[0]),
        .I3(i2c_shift_read_counter_reg[1]),
        .I4(i2c_shift_read_counter_reg[2]),
        .O(\i2c_lsb_data_read_byte[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_lsb_data_read_byte[5]_i_1 
       (.I0(\i2c_lsb_data_read_byte[5]_i_2_n_0 ),
        .I1(i2c_lsb_data_read_byte[5]),
        .I2(sda),
        .O(\i2c_lsb_data_read_byte[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \i2c_lsb_data_read_byte[5]_i_2 
       (.I0(\i2c_lsb_data_read_byte[7]_i_3_n_0 ),
        .I1(i2c_shift_read_counter_reg[3]),
        .I2(i2c_shift_read_counter_reg[0]),
        .I3(i2c_shift_read_counter_reg[1]),
        .I4(i2c_shift_read_counter_reg[2]),
        .O(\i2c_lsb_data_read_byte[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_lsb_data_read_byte[6]_i_1 
       (.I0(\i2c_lsb_data_read_byte[6]_i_2_n_0 ),
        .I1(i2c_lsb_data_read_byte[6]),
        .I2(sda),
        .O(\i2c_lsb_data_read_byte[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \i2c_lsb_data_read_byte[6]_i_2 
       (.I0(\i2c_lsb_data_read_byte[7]_i_3_n_0 ),
        .I1(i2c_shift_read_counter_reg[3]),
        .I2(i2c_shift_read_counter_reg[0]),
        .I3(i2c_shift_read_counter_reg[1]),
        .I4(i2c_shift_read_counter_reg[2]),
        .O(\i2c_lsb_data_read_byte[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_lsb_data_read_byte[7]_i_1 
       (.I0(\i2c_lsb_data_read_byte[7]_i_2_n_0 ),
        .I1(i2c_lsb_data_read_byte[7]),
        .I2(sda),
        .O(\i2c_lsb_data_read_byte[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \i2c_lsb_data_read_byte[7]_i_2 
       (.I0(i2c_shift_read_counter_reg[2]),
        .I1(i2c_shift_read_counter_reg[1]),
        .I2(i2c_shift_read_counter_reg[0]),
        .I3(i2c_shift_read_counter_reg[3]),
        .I4(\i2c_lsb_data_read_byte[7]_i_3_n_0 ),
        .O(\i2c_lsb_data_read_byte[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \i2c_lsb_data_read_byte[7]_i_3 
       (.I0(i2c_state__0[0]),
        .I1(i2c_state__0[1]),
        .I2(i2c_state__0[3]),
        .I3(i2c_state__0[2]),
        .I4(read_flag_reg_n_0),
        .O(\i2c_lsb_data_read_byte[7]_i_3_n_0 ));
  FDCE \i2c_lsb_data_read_byte_reg[0] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_lsb_data_read_byte[0]_i_1_n_0 ),
        .Q(i2c_lsb_data_read_byte[0]));
  FDCE \i2c_lsb_data_read_byte_reg[1] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_lsb_data_read_byte[1]_i_1_n_0 ),
        .Q(i2c_lsb_data_read_byte[1]));
  FDCE \i2c_lsb_data_read_byte_reg[2] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_lsb_data_read_byte[2]_i_1_n_0 ),
        .Q(i2c_lsb_data_read_byte[2]));
  FDCE \i2c_lsb_data_read_byte_reg[3] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_lsb_data_read_byte[3]_i_1_n_0 ),
        .Q(i2c_lsb_data_read_byte[3]));
  FDCE \i2c_lsb_data_read_byte_reg[4] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_lsb_data_read_byte[4]_i_1_n_0 ),
        .Q(i2c_lsb_data_read_byte[4]));
  FDCE \i2c_lsb_data_read_byte_reg[5] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_lsb_data_read_byte[5]_i_1_n_0 ),
        .Q(i2c_lsb_data_read_byte[5]));
  FDCE \i2c_lsb_data_read_byte_reg[6] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_lsb_data_read_byte[6]_i_1_n_0 ),
        .Q(i2c_lsb_data_read_byte[6]));
  FDCE \i2c_lsb_data_read_byte_reg[7] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_lsb_data_read_byte[7]_i_1_n_0 ),
        .Q(i2c_lsb_data_read_byte[7]));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_msb_data_read_byte[0]_i_1 
       (.I0(\i2c_msb_data_read_byte[0]_i_2_n_0 ),
        .I1(i2c_msb_data_read_byte[0]),
        .I2(sda),
        .O(\i2c_msb_data_read_byte[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \i2c_msb_data_read_byte[0]_i_2 
       (.I0(i2c_shift_read_counter_reg[3]),
        .I1(i2c_shift_read_counter_reg[0]),
        .I2(i2c_shift_read_counter_reg[1]),
        .I3(i2c_shift_read_counter_reg[2]),
        .I4(\i2c_msb_data_read_byte[7]_i_3_n_0 ),
        .O(\i2c_msb_data_read_byte[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_msb_data_read_byte[1]_i_1 
       (.I0(\i2c_msb_data_read_byte[1]_i_2_n_0 ),
        .I1(i2c_msb_data_read_byte[1]),
        .I2(sda),
        .O(\i2c_msb_data_read_byte[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \i2c_msb_data_read_byte[1]_i_2 
       (.I0(i2c_shift_read_counter_reg[3]),
        .I1(i2c_shift_read_counter_reg[0]),
        .I2(i2c_shift_read_counter_reg[1]),
        .I3(i2c_shift_read_counter_reg[2]),
        .I4(\i2c_msb_data_read_byte[7]_i_3_n_0 ),
        .O(\i2c_msb_data_read_byte[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_msb_data_read_byte[2]_i_1 
       (.I0(\i2c_msb_data_read_byte[2]_i_2_n_0 ),
        .I1(i2c_msb_data_read_byte[2]),
        .I2(sda),
        .O(\i2c_msb_data_read_byte[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \i2c_msb_data_read_byte[2]_i_2 
       (.I0(i2c_shift_read_counter_reg[3]),
        .I1(i2c_shift_read_counter_reg[0]),
        .I2(i2c_shift_read_counter_reg[1]),
        .I3(i2c_shift_read_counter_reg[2]),
        .I4(\i2c_msb_data_read_byte[7]_i_3_n_0 ),
        .O(\i2c_msb_data_read_byte[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_msb_data_read_byte[3]_i_1 
       (.I0(\i2c_msb_data_read_byte[3]_i_2_n_0 ),
        .I1(i2c_msb_data_read_byte[3]),
        .I2(sda),
        .O(\i2c_msb_data_read_byte[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \i2c_msb_data_read_byte[3]_i_2 
       (.I0(i2c_shift_read_counter_reg[3]),
        .I1(i2c_shift_read_counter_reg[0]),
        .I2(i2c_shift_read_counter_reg[1]),
        .I3(i2c_shift_read_counter_reg[2]),
        .I4(\i2c_msb_data_read_byte[7]_i_3_n_0 ),
        .O(\i2c_msb_data_read_byte[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_msb_data_read_byte[4]_i_1 
       (.I0(\i2c_msb_data_read_byte[4]_i_2_n_0 ),
        .I1(i2c_msb_data_read_byte[4]),
        .I2(sda),
        .O(\i2c_msb_data_read_byte[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \i2c_msb_data_read_byte[4]_i_2 
       (.I0(i2c_shift_read_counter_reg[3]),
        .I1(i2c_shift_read_counter_reg[0]),
        .I2(i2c_shift_read_counter_reg[1]),
        .I3(i2c_shift_read_counter_reg[2]),
        .I4(\i2c_msb_data_read_byte[7]_i_3_n_0 ),
        .O(\i2c_msb_data_read_byte[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_msb_data_read_byte[5]_i_1 
       (.I0(\i2c_msb_data_read_byte[5]_i_2_n_0 ),
        .I1(i2c_msb_data_read_byte[5]),
        .I2(sda),
        .O(\i2c_msb_data_read_byte[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \i2c_msb_data_read_byte[5]_i_2 
       (.I0(i2c_shift_read_counter_reg[3]),
        .I1(i2c_shift_read_counter_reg[0]),
        .I2(i2c_shift_read_counter_reg[1]),
        .I3(i2c_shift_read_counter_reg[2]),
        .I4(\i2c_msb_data_read_byte[7]_i_3_n_0 ),
        .O(\i2c_msb_data_read_byte[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_msb_data_read_byte[6]_i_1 
       (.I0(\i2c_msb_data_read_byte[6]_i_2_n_0 ),
        .I1(i2c_msb_data_read_byte[6]),
        .I2(sda),
        .O(\i2c_msb_data_read_byte[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \i2c_msb_data_read_byte[6]_i_2 
       (.I0(i2c_shift_read_counter_reg[3]),
        .I1(i2c_shift_read_counter_reg[0]),
        .I2(i2c_shift_read_counter_reg[1]),
        .I3(i2c_shift_read_counter_reg[2]),
        .I4(\i2c_msb_data_read_byte[7]_i_3_n_0 ),
        .O(\i2c_msb_data_read_byte[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \i2c_msb_data_read_byte[7]_i_1 
       (.I0(\i2c_msb_data_read_byte[7]_i_2_n_0 ),
        .I1(i2c_msb_data_read_byte[7]),
        .I2(sda),
        .O(\i2c_msb_data_read_byte[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \i2c_msb_data_read_byte[7]_i_2 
       (.I0(i2c_shift_read_counter_reg[2]),
        .I1(i2c_shift_read_counter_reg[1]),
        .I2(i2c_shift_read_counter_reg[0]),
        .I3(i2c_shift_read_counter_reg[3]),
        .I4(\i2c_msb_data_read_byte[7]_i_3_n_0 ),
        .O(\i2c_msb_data_read_byte[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    \i2c_msb_data_read_byte[7]_i_3 
       (.I0(i2c_state__0[0]),
        .I1(i2c_state__0[2]),
        .I2(i2c_state__0[3]),
        .I3(i2c_state__0[1]),
        .I4(read_flag_reg_n_0),
        .O(\i2c_msb_data_read_byte[7]_i_3_n_0 ));
  FDCE \i2c_msb_data_read_byte_reg[0] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_msb_data_read_byte[0]_i_1_n_0 ),
        .Q(i2c_msb_data_read_byte[0]));
  FDCE \i2c_msb_data_read_byte_reg[1] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_msb_data_read_byte[1]_i_1_n_0 ),
        .Q(i2c_msb_data_read_byte[1]));
  FDCE \i2c_msb_data_read_byte_reg[2] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_msb_data_read_byte[2]_i_1_n_0 ),
        .Q(i2c_msb_data_read_byte[2]));
  FDCE \i2c_msb_data_read_byte_reg[3] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_msb_data_read_byte[3]_i_1_n_0 ),
        .Q(i2c_msb_data_read_byte[3]));
  FDCE \i2c_msb_data_read_byte_reg[4] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_msb_data_read_byte[4]_i_1_n_0 ),
        .Q(i2c_msb_data_read_byte[4]));
  FDCE \i2c_msb_data_read_byte_reg[5] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_msb_data_read_byte[5]_i_1_n_0 ),
        .Q(i2c_msb_data_read_byte[5]));
  FDCE \i2c_msb_data_read_byte_reg[6] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_msb_data_read_byte[6]_i_1_n_0 ),
        .Q(i2c_msb_data_read_byte[6]));
  FDCE \i2c_msb_data_read_byte_reg[7] 
       (.C(scl_active_reg_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\i2c_msb_data_read_byte[7]_i_1_n_0 ),
        .Q(i2c_msb_data_read_byte[7]));
  LUT6 #(
    .INIT(64'h0000000000545500)) 
    \i2c_shift_counter[0]_i_1 
       (.I0(\i2c_shift_counter_reg_n_0_[0] ),
        .I1(i2c_state__0[2]),
        .I2(i2c_state__0[0]),
        .I3(i2c_state__0[1]),
        .I4(i2c_state__0[3]),
        .I5(\i2c_shift_counter[2]_i_3_n_0 ),
        .O(\i2c_shift_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000545500)) 
    \i2c_shift_counter[1]_i_1 
       (.I0(\i2c_shift_counter[1]_i_2_n_0 ),
        .I1(i2c_state__0[2]),
        .I2(i2c_state__0[0]),
        .I3(i2c_state__0[1]),
        .I4(i2c_state__0[3]),
        .I5(\i2c_shift_counter[2]_i_3_n_0 ),
        .O(i2c_shift_counter[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \i2c_shift_counter[1]_i_2 
       (.I0(\i2c_shift_counter_reg_n_0_[0] ),
        .I1(\i2c_shift_counter_reg_n_0_[1] ),
        .O(\i2c_shift_counter[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000545500)) 
    \i2c_shift_counter[2]_i_1 
       (.I0(\i2c_shift_counter[2]_i_2_n_0 ),
        .I1(i2c_state__0[2]),
        .I2(i2c_state__0[0]),
        .I3(i2c_state__0[1]),
        .I4(i2c_state__0[3]),
        .I5(\i2c_shift_counter[2]_i_3_n_0 ),
        .O(\i2c_shift_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \i2c_shift_counter[2]_i_2 
       (.I0(\i2c_shift_counter_reg_n_0_[2] ),
        .I1(\i2c_shift_counter_reg_n_0_[1] ),
        .I2(\i2c_shift_counter_reg_n_0_[0] ),
        .O(\i2c_shift_counter[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \i2c_shift_counter[2]_i_3 
       (.I0(\i2c_shift_counter_reg_n_0_[3] ),
        .I1(\i2c_shift_counter_reg_n_0_[0] ),
        .I2(\i2c_shift_counter_reg_n_0_[1] ),
        .I3(\i2c_shift_counter_reg_n_0_[2] ),
        .O(\i2c_shift_counter[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0440055005544000)) 
    \i2c_shift_counter[3]_i_1 
       (.I0(scl_freerunning),
        .I1(\i2c_shift_counter[3]_i_3_n_0 ),
        .I2(i2c_state__0[2]),
        .I3(i2c_state__0[0]),
        .I4(i2c_state__0[3]),
        .I5(i2c_state__0[1]),
        .O(\i2c_shift_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC2D3C2D3FFFF)) 
    \i2c_shift_counter[3]_i_2 
       (.I0(i2c_state__0[2]),
        .I1(i2c_state__0[1]),
        .I2(i2c_state__0[3]),
        .I3(i2c_state__0[0]),
        .I4(\i2c_shift_counter[3]_i_4_n_0 ),
        .I5(\i2c_shift_counter_reg_n_0_[3] ),
        .O(i2c_shift_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \i2c_shift_counter[3]_i_3 
       (.I0(\delay_counter_reg_n_0_[1] ),
        .I1(\delay_counter_reg_n_0_[0] ),
        .I2(\delay_counter_reg_n_0_[2] ),
        .O(\i2c_shift_counter[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \i2c_shift_counter[3]_i_4 
       (.I0(\i2c_shift_counter_reg_n_0_[2] ),
        .I1(\i2c_shift_counter_reg_n_0_[1] ),
        .I2(\i2c_shift_counter_reg_n_0_[0] ),
        .O(\i2c_shift_counter[3]_i_4_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_shift_counter_reg[0] 
       (.C(ctrl_clk),
        .CE(\i2c_shift_counter[3]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\i2c_shift_counter[0]_i_1_n_0 ),
        .Q(\i2c_shift_counter_reg_n_0_[0] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_shift_counter_reg[1] 
       (.C(ctrl_clk),
        .CE(\i2c_shift_counter[3]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_shift_counter[1]),
        .Q(\i2c_shift_counter_reg_n_0_[1] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_shift_counter_reg[2] 
       (.C(ctrl_clk),
        .CE(\i2c_shift_counter[3]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\i2c_shift_counter[2]_i_1_n_0 ),
        .Q(\i2c_shift_counter_reg_n_0_[2] ));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_shift_counter_reg[3] 
       (.C(ctrl_clk),
        .CE(\i2c_shift_counter[3]_i_1_n_0 ),
        .D(i2c_shift_counter[3]),
        .PRE(rst_n_0),
        .Q(\i2c_shift_counter_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \i2c_shift_read_counter[0]_i_1 
       (.I0(i2c_shift_read_counter_reg[2]),
        .I1(i2c_shift_read_counter_reg[1]),
        .I2(i2c_shift_read_counter_reg[3]),
        .I3(i2c_shift_read_counter_reg[0]),
        .O(i2c_shift_read_counter[0]));
  LUT4 #(
    .INIT(16'hF00E)) 
    \i2c_shift_read_counter[1]_i_1 
       (.I0(i2c_shift_read_counter_reg[2]),
        .I1(i2c_shift_read_counter_reg[3]),
        .I2(i2c_shift_read_counter_reg[1]),
        .I3(i2c_shift_read_counter_reg[0]),
        .O(i2c_shift_read_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFC02)) 
    \i2c_shift_read_counter[2]_i_1 
       (.I0(i2c_shift_read_counter_reg[3]),
        .I1(i2c_shift_read_counter_reg[0]),
        .I2(i2c_shift_read_counter_reg[1]),
        .I3(i2c_shift_read_counter_reg[2]),
        .O(\i2c_shift_read_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00204080)) 
    \i2c_shift_read_counter[3]_i_1 
       (.I0(i2c_state__0[3]),
        .I1(i2c_state__0[2]),
        .I2(read_flag_reg_n_0),
        .I3(i2c_state__0[1]),
        .I4(i2c_state__0[0]),
        .O(\i2c_shift_read_counter[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \i2c_shift_read_counter[3]_i_2 
       (.I0(i2c_shift_read_counter_reg[3]),
        .I1(i2c_shift_read_counter_reg[0]),
        .I2(i2c_shift_read_counter_reg[1]),
        .I3(i2c_shift_read_counter_reg[2]),
        .O(i2c_shift_read_counter[3]));
  FDCE \i2c_shift_read_counter_reg[0] 
       (.C(scl_active_reg_0),
        .CE(\i2c_shift_read_counter[3]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_shift_read_counter[0]),
        .Q(i2c_shift_read_counter_reg[0]));
  FDCE \i2c_shift_read_counter_reg[1] 
       (.C(scl_active_reg_0),
        .CE(\i2c_shift_read_counter[3]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(i2c_shift_read_counter[1]),
        .Q(i2c_shift_read_counter_reg[1]));
  FDCE \i2c_shift_read_counter_reg[2] 
       (.C(scl_active_reg_0),
        .CE(\i2c_shift_read_counter[3]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\i2c_shift_read_counter[2]_i_1_n_0 ),
        .Q(i2c_shift_read_counter_reg[2]));
  FDPE \i2c_shift_read_counter_reg[3] 
       (.C(scl_active_reg_0),
        .CE(\i2c_shift_read_counter[3]_i_1_n_0 ),
        .D(i2c_shift_read_counter[3]),
        .PRE(rst_n_0),
        .Q(i2c_shift_read_counter_reg[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    read_flag_reg
       (.C(ctrl_clk),
        .CE(read_flag18_out),
        .CLR(rst_n_0),
        .D(p_0_in22_in),
        .Q(read_flag_reg_n_0));
  LUT3 #(
    .INIT(8'hD5)) 
    scl_INST_0
       (.I0(scl_active_reg_n_0),
        .I1(scl_r_reg_n_0),
        .I2(scl_freerunning),
        .O(scl_active_reg_0));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000100)) 
    scl_active_i_1
       (.I0(scl_freerunning),
        .I1(i2c_state__0[2]),
        .I2(i2c_state__0[1]),
        .I3(i2c_state__0[0]),
        .I4(i2c_state__0[3]),
        .I5(scl_active_reg_n_0),
        .O(scl_active_i_1_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    scl_active_reg
       (.C(ctrl_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(scl_active_i_1_n_0),
        .Q(scl_active_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAE5551)) 
    scl_freerunning_i_1
       (.I0(\i2c_clk_counter[5]_i_2_n_0 ),
        .I1(\i2c_clk_counter[7]_i_3_n_0 ),
        .I2(i2c_clk_counter[4]),
        .I3(i2c_clk_counter[5]),
        .I4(scl_freerunning),
        .O(scl_freerunning_i_1_n_0));
  FDPE scl_freerunning_reg
       (.C(clk),
        .CE(1'b1),
        .D(scl_freerunning_i_1_n_0),
        .PRE(rst_n_0),
        .Q(scl_freerunning));
  LUT6 #(
    .INIT(64'h0770FFFF07700000)) 
    scl_r_i_1
       (.I0(i2c_state__0[0]),
        .I1(i2c_state__0[2]),
        .I2(i2c_state__0[1]),
        .I3(i2c_state__0[3]),
        .I4(scl_r10_out),
        .I5(scl_r_reg_n_0),
        .O(scl_r_i_1_n_0));
  LUT6 #(
    .INIT(64'h1145545011451450)) 
    scl_r_i_2
       (.I0(scl_freerunning),
        .I1(i2c_state__0[3]),
        .I2(i2c_state__0[2]),
        .I3(i2c_state__0[1]),
        .I4(i2c_state__0[0]),
        .I5(\i2c_shift_counter[3]_i_3_n_0 ),
        .O(scl_r10_out));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    scl_r_reg
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(scl_r_i_1_n_0),
        .PRE(rst_n_0),
        .Q(scl_r_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sda_INST_0
       (.I0(sda_r),
        .I1(sda_en),
        .O(sda));
  LUT2 #(
    .INIT(4'h8)) 
    sda_INST_0_i_1
       (.I0(sda_r_tristate_oe_reg_n_0),
        .I1(sda_0),
        .O(sda_r));
  LUT6 #(
    .INIT(64'hBFABEBFFF7DFD7FF)) 
    sda_INST_0_i_3
       (.I0(i2c_state__0[1]),
        .I1(i2c_state__0[0]),
        .I2(i2c_state__0[2]),
        .I3(\i2c_shift_counter[2]_i_3_n_0 ),
        .I4(read_flag_reg_n_0),
        .I5(i2c_state__0[3]),
        .O(sda_r0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    sda_en_i_i_1
       (.I0(sda_en_i),
        .I1(sda_en_i_i_3_n_0),
        .I2(sda_en_i_i_4_n_0),
        .I3(sda_en),
        .O(sda_en_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h333D)) 
    sda_en_i_i_2
       (.I0(read_flag_reg_n_0),
        .I1(i2c_state__0[1]),
        .I2(i2c_state__0[0]),
        .I3(i2c_state__0[3]),
        .O(sda_en_i));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    sda_en_i_i_3
       (.I0(i2c_state__0[0]),
        .I1(i2c_state__0[3]),
        .I2(i2c_state__0[2]),
        .I3(i2c_state__0[1]),
        .I4(scl_freerunning),
        .O(sda_en_i_i_3_n_0));
  LUT6 #(
    .INIT(64'hE9FDFFFF436BCBEB)) 
    sda_en_i_i_4
       (.I0(i2c_state__0[1]),
        .I1(i2c_state__0[2]),
        .I2(i2c_state__0[0]),
        .I3(\i2c_shift_counter[2]_i_3_n_0 ),
        .I4(read_flag_reg_n_0),
        .I5(i2c_state__0[3]),
        .O(sda_en_i_i_4_n_0));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    sda_en_i_reg
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(sda_en_i_i_1_n_0),
        .PRE(rst_n_0),
        .Q(sda_en));
  LUT3 #(
    .INIT(8'h8A)) 
    sda_r_tristate_oe_i_1
       (.I0(sda_en_i_i_3_n_0),
        .I1(sda_r_tristate_oe_i_3_n_0),
        .I2(sda_r_tristate_oe_i_4_n_0),
        .O(sda_r6_out));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_r_tristate_oe_i_10
       (.I0(i2c_data_lsb[0]),
        .I1(i2c_data_lsb[1]),
        .I2(\i2c_shift_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_counter_reg_n_0_[1] ),
        .I4(i2c_data_lsb[2]),
        .I5(i2c_data_lsb[3]),
        .O(sda_r_tristate_oe_i_10_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_r_tristate_oe_i_11
       (.I0(\i2c_cmd_byte_reg_n_0_[4] ),
        .I1(\i2c_cmd_byte_reg_n_0_[5] ),
        .I2(\i2c_shift_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_counter_reg_n_0_[1] ),
        .I4(\i2c_cmd_byte_reg_n_0_[6] ),
        .I5(\i2c_cmd_byte_reg_n_0_[7] ),
        .O(sda_r_tristate_oe_i_11_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_r_tristate_oe_i_12
       (.I0(\i2c_cmd_byte_reg_n_0_[0] ),
        .I1(\i2c_cmd_byte_reg_n_0_[1] ),
        .I2(\i2c_shift_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_counter_reg_n_0_[1] ),
        .I4(\i2c_cmd_byte_reg_n_0_[2] ),
        .I5(\i2c_cmd_byte_reg_n_0_[3] ),
        .O(sda_r_tristate_oe_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h0C0AF0FF)) 
    sda_r_tristate_oe_i_13
       (.I0(read_flag_reg_n_0),
        .I1(\i2c_address_byte_reg_n_0_[2] ),
        .I2(\i2c_shift_counter_reg_n_0_[2] ),
        .I3(\i2c_shift_counter_reg_n_0_[1] ),
        .I4(\i2c_shift_counter_reg_n_0_[0] ),
        .O(sda_r_tristate_oe_i_13_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_r_tristate_oe_i_14
       (.I0(i2c_data_msb[0]),
        .I1(i2c_data_msb[1]),
        .I2(\i2c_shift_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_counter_reg_n_0_[1] ),
        .I4(i2c_data_msb[2]),
        .I5(i2c_data_msb[3]),
        .O(sda_r_tristate_oe_i_14_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_r_tristate_oe_i_15
       (.I0(i2c_data_msb[4]),
        .I1(i2c_data_msb[5]),
        .I2(\i2c_shift_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_counter_reg_n_0_[1] ),
        .I4(i2c_data_msb[6]),
        .I5(i2c_data_msb[7]),
        .O(sda_r_tristate_oe_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF5514)) 
    sda_r_tristate_oe_i_2
       (.I0(sda_r_tristate_oe_i_5_n_0),
        .I1(i2c_state__0[2]),
        .I2(i2c_state__0[1]),
        .I3(sda_r_tristate_oe_i_6_n_0),
        .I4(sda_r_tristate_oe_i_7_n_0),
        .I5(sda_r_tristate_oe_i_8_n_0),
        .O(sda_r__0));
  LUT6 #(
    .INIT(64'hB0303C0CBC3C3C0C)) 
    sda_r_tristate_oe_i_3
       (.I0(\FSM_sequential_i2c_state[3]_i_6_n_0 ),
        .I1(i2c_state__0[1]),
        .I2(i2c_state__0[3]),
        .I3(i2c_state__0[0]),
        .I4(i2c_state__0[2]),
        .I5(read_flag_reg_n_0),
        .O(sda_r_tristate_oe_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAEFFAEEFAAEFAA)) 
    sda_r_tristate_oe_i_4
       (.I0(i2c_state__0[0]),
        .I1(read_flag_reg_n_0),
        .I2(i2c_state__0[1]),
        .I3(i2c_state__0[3]),
        .I4(\i2c_shift_counter[3]_i_3_n_0 ),
        .I5(i2c_state__0[2]),
        .O(sda_r_tristate_oe_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFABFBAAAAAAAA)) 
    sda_r_tristate_oe_i_5
       (.I0(i2c_state__0[0]),
        .I1(sda_r_tristate_oe_i_9_n_0),
        .I2(\i2c_shift_counter[2]_i_2_n_0 ),
        .I3(sda_r_tristate_oe_i_10_n_0),
        .I4(read_flag_reg_n_0),
        .I5(i2c_state__0[3]),
        .O(sda_r_tristate_oe_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    sda_r_tristate_oe_i_6
       (.I0(sda_r_tristate_oe_i_11_n_0),
        .I1(\i2c_shift_counter[2]_i_2_n_0 ),
        .I2(sda_r_tristate_oe_i_12_n_0),
        .I3(i2c_state__0[3]),
        .I4(i2c_state__0[1]),
        .I5(read_flag_reg_n_0),
        .O(sda_r_tristate_oe_i_6_n_0));
  LUT6 #(
    .INIT(64'hC3C3C3C3CBC8CBCB)) 
    sda_r_tristate_oe_i_7
       (.I0(sda_r_tristate_oe_i_13_n_0),
        .I1(i2c_state__0[0]),
        .I2(i2c_state__0[2]),
        .I3(axi_gpio_in_r3),
        .I4(p_1_in27_in),
        .I5(i2c_state__0[3]),
        .O(sda_r_tristate_oe_i_7_n_0));
  LUT6 #(
    .INIT(64'h0020003000200000)) 
    sda_r_tristate_oe_i_8
       (.I0(sda_r_tristate_oe_i_14_n_0),
        .I1(read_flag_reg_n_0),
        .I2(i2c_state__0[3]),
        .I3(i2c_state__0[2]),
        .I4(\i2c_shift_counter[2]_i_2_n_0 ),
        .I5(sda_r_tristate_oe_i_15_n_0),
        .O(sda_r_tristate_oe_i_8_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_r_tristate_oe_i_9
       (.I0(i2c_data_lsb[4]),
        .I1(i2c_data_lsb[5]),
        .I2(\i2c_shift_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_counter_reg_n_0_[1] ),
        .I4(i2c_data_lsb[6]),
        .I5(i2c_data_lsb[7]),
        .O(sda_r_tristate_oe_i_9_n_0));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    sda_r_tristate_oe_reg
       (.C(ctrl_clk),
        .CE(sda_r6_out),
        .D(sda_r__0),
        .PRE(rst_n_0),
        .Q(sda_r_tristate_oe_reg_n_0));
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

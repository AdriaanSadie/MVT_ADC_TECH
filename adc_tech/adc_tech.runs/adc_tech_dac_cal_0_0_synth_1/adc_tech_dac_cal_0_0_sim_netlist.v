// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct  1 13:02:24 2025
// Host        : ZA-WASADIE1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adc_tech_dac_cal_0_0_sim_netlist.v
// Design      : adc_tech_dac_cal_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adc_tech_dac_cal_0_0,dac_cal,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "dac_cal,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    sync_in,
    pulse_in,
    control,
    counting_flag,
    counter,
    bram_data,
    bram_addr,
    bram_we,
    debug);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN adc_tech_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input sync_in;
  input pulse_in;
  input [31:0]control;
  output counting_flag;
  output [31:0]counter;
  output [31:0]bram_data;
  output [15:0]bram_addr;
  output bram_we;
  output [2:0]debug;

  wire \<const0> ;
  wire [9:2]\^bram_addr ;
  wire [31:0]bram_data;
  wire bram_we;
  wire clk;
  wire [31:0]control;
  wire [31:0]counter;
  wire counting_flag;
  wire [1:0]\^debug ;
  wire pulse_in;
  wire rst_n;
  wire sync_in;

  assign bram_addr[15] = \<const0> ;
  assign bram_addr[14] = \<const0> ;
  assign bram_addr[13] = \<const0> ;
  assign bram_addr[12] = \<const0> ;
  assign bram_addr[11] = \<const0> ;
  assign bram_addr[10] = \<const0> ;
  assign bram_addr[9:2] = \^bram_addr [9:2];
  assign bram_addr[1] = \<const0> ;
  assign bram_addr[0] = \<const0> ;
  assign debug[2] = \<const0> ;
  assign debug[1:0] = \^debug [1:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_cal U0
       (.bram_addr(\^bram_addr ),
        .bram_data(bram_data),
        .bram_we(bram_we),
        .clk(clk),
        .control(control),
        .counter(counter),
        .counting_flag(counting_flag),
        .debug(\^debug ),
        .pulse_in(pulse_in),
        .rst_n(rst_n),
        .sync_in(sync_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_cal
   (counter,
    bram_data,
    bram_addr,
    debug,
    counting_flag,
    bram_we,
    clk,
    rst_n,
    pulse_in,
    sync_in,
    control);
  output [31:0]counter;
  output [31:0]bram_data;
  output [7:0]bram_addr;
  output [1:0]debug;
  output counting_flag;
  output bram_we;
  input clk;
  input rst_n;
  input pulse_in;
  input sync_in;
  input [31:0]control;

  wire \FSM_onehot_dac_state[0]_i_1_n_0 ;
  wire \FSM_onehot_dac_state[0]_i_2_n_0 ;
  wire \FSM_onehot_dac_state[1]_i_1_n_0 ;
  wire \FSM_onehot_dac_state[1]_i_2_n_0 ;
  wire \FSM_onehot_dac_state[1]_i_3_n_0 ;
  wire \FSM_onehot_dac_state[1]_i_4_n_0 ;
  wire \FSM_onehot_dac_state[1]_i_5_n_0 ;
  wire \FSM_onehot_dac_state[1]_i_6_n_0 ;
  wire \FSM_onehot_dac_state[1]_i_7_n_0 ;
  wire \FSM_onehot_dac_state[1]_i_8_n_0 ;
  wire \FSM_onehot_dac_state[1]_i_9_n_0 ;
  wire \FSM_onehot_dac_state[2]_i_1_n_0 ;
  wire \FSM_onehot_dac_state[2]_i_2_n_0 ;
  wire \FSM_onehot_dac_state_reg_n_0_[0] ;
  wire \FSM_onehot_dac_state_reg_n_0_[1] ;
  wire \FSM_onehot_dac_state_reg_n_0_[2] ;
  wire [7:0]addr_count;
  wire \addr_count[7]_i_2_n_0 ;
  wire \addr_count_4_reg_n_0_[2] ;
  wire \addr_count_4_reg_n_0_[3] ;
  wire \addr_count_4_reg_n_0_[4] ;
  wire \addr_count_4_reg_n_0_[5] ;
  wire \addr_count_4_reg_n_0_[6] ;
  wire \addr_count_4_reg_n_0_[7] ;
  wire \addr_count_4_reg_n_0_[8] ;
  wire \addr_count_4_reg_n_0_[9] ;
  wire [7:0]bram_addr;
  wire [31:0]bram_data;
  wire \bram_data[31]_i_1_n_0 ;
  wire bram_we;
  wire bram_we_i_1_n_0;
  wire clk;
  wire [31:0]control;
  wire [31:0]counter;
  wire \counter[31]_i_1_n_0 ;
  wire counting_flag;
  wire counting_flag_i_1_n_0;
  wire counting_flag_i_2_n_0;
  wire [31:0]dac_counter;
  wire \dac_counter[0]_i_1_n_0 ;
  wire \dac_counter[10]_i_1_n_0 ;
  wire \dac_counter[11]_i_1_n_0 ;
  wire \dac_counter[12]_i_1_n_0 ;
  wire \dac_counter[13]_i_1_n_0 ;
  wire \dac_counter[14]_i_1_n_0 ;
  wire \dac_counter[15]_i_1_n_0 ;
  wire \dac_counter[16]_i_1_n_0 ;
  wire \dac_counter[17]_i_1_n_0 ;
  wire \dac_counter[18]_i_1_n_0 ;
  wire \dac_counter[19]_i_1_n_0 ;
  wire \dac_counter[1]_i_1_n_0 ;
  wire \dac_counter[20]_i_1_n_0 ;
  wire \dac_counter[21]_i_1_n_0 ;
  wire \dac_counter[22]_i_1_n_0 ;
  wire \dac_counter[23]_i_1_n_0 ;
  wire \dac_counter[24]_i_1_n_0 ;
  wire \dac_counter[25]_i_1_n_0 ;
  wire \dac_counter[26]_i_1_n_0 ;
  wire \dac_counter[27]_i_1_n_0 ;
  wire \dac_counter[28]_i_1_n_0 ;
  wire \dac_counter[29]_i_1_n_0 ;
  wire \dac_counter[2]_i_1_n_0 ;
  wire \dac_counter[30]_i_1_n_0 ;
  wire \dac_counter[31]_i_1_n_0 ;
  wire \dac_counter[3]_i_1_n_0 ;
  wire \dac_counter[4]_i_1_n_0 ;
  wire \dac_counter[5]_i_1_n_0 ;
  wire \dac_counter[6]_i_1_n_0 ;
  wire \dac_counter[7]_i_1_n_0 ;
  wire \dac_counter[8]_i_1_n_0 ;
  wire \dac_counter[9]_i_1_n_0 ;
  wire [1:0]debug;
  wire \debug[0]_i_1_n_0 ;
  wire \debug[1]_i_1_n_0 ;
  wire [7:0]plusOp;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_10 ;
  wire \plusOp_inferred__0/i__carry__0_n_11 ;
  wire \plusOp_inferred__0/i__carry__0_n_12 ;
  wire \plusOp_inferred__0/i__carry__0_n_13 ;
  wire \plusOp_inferred__0/i__carry__0_n_14 ;
  wire \plusOp_inferred__0/i__carry__0_n_15 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry__0_n_4 ;
  wire \plusOp_inferred__0/i__carry__0_n_5 ;
  wire \plusOp_inferred__0/i__carry__0_n_6 ;
  wire \plusOp_inferred__0/i__carry__0_n_7 ;
  wire \plusOp_inferred__0/i__carry__0_n_8 ;
  wire \plusOp_inferred__0/i__carry__0_n_9 ;
  wire \plusOp_inferred__0/i__carry__1_n_0 ;
  wire \plusOp_inferred__0/i__carry__1_n_1 ;
  wire \plusOp_inferred__0/i__carry__1_n_10 ;
  wire \plusOp_inferred__0/i__carry__1_n_11 ;
  wire \plusOp_inferred__0/i__carry__1_n_12 ;
  wire \plusOp_inferred__0/i__carry__1_n_13 ;
  wire \plusOp_inferred__0/i__carry__1_n_14 ;
  wire \plusOp_inferred__0/i__carry__1_n_15 ;
  wire \plusOp_inferred__0/i__carry__1_n_2 ;
  wire \plusOp_inferred__0/i__carry__1_n_3 ;
  wire \plusOp_inferred__0/i__carry__1_n_4 ;
  wire \plusOp_inferred__0/i__carry__1_n_5 ;
  wire \plusOp_inferred__0/i__carry__1_n_6 ;
  wire \plusOp_inferred__0/i__carry__1_n_7 ;
  wire \plusOp_inferred__0/i__carry__1_n_8 ;
  wire \plusOp_inferred__0/i__carry__1_n_9 ;
  wire \plusOp_inferred__0/i__carry__2_n_10 ;
  wire \plusOp_inferred__0/i__carry__2_n_11 ;
  wire \plusOp_inferred__0/i__carry__2_n_12 ;
  wire \plusOp_inferred__0/i__carry__2_n_13 ;
  wire \plusOp_inferred__0/i__carry__2_n_14 ;
  wire \plusOp_inferred__0/i__carry__2_n_15 ;
  wire \plusOp_inferred__0/i__carry__2_n_2 ;
  wire \plusOp_inferred__0/i__carry__2_n_3 ;
  wire \plusOp_inferred__0/i__carry__2_n_4 ;
  wire \plusOp_inferred__0/i__carry__2_n_5 ;
  wire \plusOp_inferred__0/i__carry__2_n_6 ;
  wire \plusOp_inferred__0/i__carry__2_n_7 ;
  wire \plusOp_inferred__0/i__carry__2_n_9 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_10 ;
  wire \plusOp_inferred__0/i__carry_n_11 ;
  wire \plusOp_inferred__0/i__carry_n_12 ;
  wire \plusOp_inferred__0/i__carry_n_13 ;
  wire \plusOp_inferred__0/i__carry_n_14 ;
  wire \plusOp_inferred__0/i__carry_n_15 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_4 ;
  wire \plusOp_inferred__0/i__carry_n_5 ;
  wire \plusOp_inferred__0/i__carry_n_6 ;
  wire \plusOp_inferred__0/i__carry_n_7 ;
  wire \plusOp_inferred__0/i__carry_n_8 ;
  wire \plusOp_inferred__0/i__carry_n_9 ;
  wire pulse_in;
  wire pulse_in_r1;
  wire pulse_in_r2;
  wire rst_n;
  wire sync_in;
  wire sync_in_r1;
  wire sync_in_r2;
  wire [7:6]\NLW_plusOp_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [7:7]\NLW_plusOp_inferred__0/i__carry__2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEA)) 
    \FSM_onehot_dac_state[0]_i_1 
       (.I0(\FSM_onehot_dac_state[0]_i_2_n_0 ),
        .I1(\FSM_onehot_dac_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_dac_state[1]_i_5_n_0 ),
        .I3(\FSM_onehot_dac_state[1]_i_4_n_0 ),
        .I4(\FSM_onehot_dac_state[1]_i_3_n_0 ),
        .I5(\FSM_onehot_dac_state[1]_i_2_n_0 ),
        .O(\FSM_onehot_dac_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_dac_state[0]_i_2 
       (.I0(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .I1(addr_count[7]),
        .I2(\FSM_onehot_dac_state_reg_n_0_[2] ),
        .O(\FSM_onehot_dac_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_dac_state[1]_i_1 
       (.I0(\FSM_onehot_dac_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_dac_state[1]_i_2_n_0 ),
        .I2(\FSM_onehot_dac_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_dac_state[1]_i_4_n_0 ),
        .I4(\FSM_onehot_dac_state[1]_i_5_n_0 ),
        .O(\FSM_onehot_dac_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_onehot_dac_state[1]_i_2 
       (.I0(control[14]),
        .I1(control[15]),
        .I2(control[12]),
        .I3(control[13]),
        .I4(\FSM_onehot_dac_state[1]_i_6_n_0 ),
        .O(\FSM_onehot_dac_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_onehot_dac_state[1]_i_3 
       (.I0(control[22]),
        .I1(control[23]),
        .I2(control[20]),
        .I3(control[21]),
        .I4(\FSM_onehot_dac_state[1]_i_7_n_0 ),
        .O(\FSM_onehot_dac_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \FSM_onehot_dac_state[1]_i_4 
       (.I0(\FSM_onehot_dac_state[1]_i_8_n_0 ),
        .I1(control[2]),
        .I2(control[3]),
        .I3(control[0]),
        .I4(control[1]),
        .O(\FSM_onehot_dac_state[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_onehot_dac_state[1]_i_5 
       (.I0(control[6]),
        .I1(control[7]),
        .I2(control[4]),
        .I3(control[5]),
        .I4(\FSM_onehot_dac_state[1]_i_9_n_0 ),
        .O(\FSM_onehot_dac_state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_dac_state[1]_i_6 
       (.I0(control[17]),
        .I1(control[16]),
        .I2(control[19]),
        .I3(control[18]),
        .O(\FSM_onehot_dac_state[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_dac_state[1]_i_7 
       (.I0(control[25]),
        .I1(control[24]),
        .I2(control[27]),
        .I3(control[26]),
        .O(\FSM_onehot_dac_state[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \FSM_onehot_dac_state[1]_i_8 
       (.I0(control[30]),
        .I1(control[31]),
        .I2(control[28]),
        .I3(control[29]),
        .I4(sync_in_r1),
        .I5(sync_in_r2),
        .O(\FSM_onehot_dac_state[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_dac_state[1]_i_9 
       (.I0(control[9]),
        .I1(control[8]),
        .I2(control[11]),
        .I3(control[10]),
        .O(\FSM_onehot_dac_state[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEFEEEEEE)) 
    \FSM_onehot_dac_state[2]_i_1 
       (.I0(\FSM_onehot_dac_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_dac_state_reg_n_0_[0] ),
        .I2(pulse_in_r2),
        .I3(pulse_in_r1),
        .I4(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .O(\FSM_onehot_dac_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_dac_state[2]_i_2 
       (.I0(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .I1(addr_count[7]),
        .O(\FSM_onehot_dac_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "dac_s_count:010,dac_s_idle:001,dac_s_write:100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_dac_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_dac_state[0]_i_1_n_0 ),
        .PRE(counting_flag_i_2_n_0),
        .Q(\FSM_onehot_dac_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "dac_s_count:010,dac_s_idle:001,dac_s_write:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_dac_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state[2]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\FSM_onehot_dac_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_dac_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "dac_s_count:010,dac_s_idle:001,dac_s_write:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_dac_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state[2]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\FSM_onehot_dac_state[2]_i_2_n_0 ),
        .Q(\FSM_onehot_dac_state_reg_n_0_[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_count[0]_i_1 
       (.I0(addr_count[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr_count[1]_i_1 
       (.I0(addr_count[0]),
        .I1(addr_count[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \addr_count[2]_i_1 
       (.I0(addr_count[1]),
        .I1(addr_count[0]),
        .I2(addr_count[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \addr_count[3]_i_1 
       (.I0(addr_count[2]),
        .I1(addr_count[0]),
        .I2(addr_count[1]),
        .I3(addr_count[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_count[4]_i_1 
       (.I0(addr_count[3]),
        .I1(addr_count[1]),
        .I2(addr_count[0]),
        .I3(addr_count[2]),
        .I4(addr_count[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \addr_count[5]_i_1 
       (.I0(addr_count[4]),
        .I1(addr_count[2]),
        .I2(addr_count[0]),
        .I3(addr_count[1]),
        .I4(addr_count[3]),
        .I5(addr_count[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \addr_count[6]_i_1 
       (.I0(\addr_count[7]_i_2_n_0 ),
        .I1(addr_count[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr_count[7]_i_1 
       (.I0(addr_count[6]),
        .I1(\addr_count[7]_i_2_n_0 ),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \addr_count[7]_i_2 
       (.I0(addr_count[4]),
        .I1(addr_count[2]),
        .I2(addr_count[0]),
        .I3(addr_count[1]),
        .I4(addr_count[3]),
        .I5(addr_count[5]),
        .O(\addr_count[7]_i_2_n_0 ));
  FDCE \addr_count_4_reg[2] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(addr_count[0]),
        .Q(\addr_count_4_reg_n_0_[2] ));
  FDCE \addr_count_4_reg[3] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(addr_count[1]),
        .Q(\addr_count_4_reg_n_0_[3] ));
  FDCE \addr_count_4_reg[4] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(addr_count[2]),
        .Q(\addr_count_4_reg_n_0_[4] ));
  FDCE \addr_count_4_reg[5] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(addr_count[3]),
        .Q(\addr_count_4_reg_n_0_[5] ));
  FDCE \addr_count_4_reg[6] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(addr_count[4]),
        .Q(\addr_count_4_reg_n_0_[6] ));
  FDCE \addr_count_4_reg[7] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(addr_count[5]),
        .Q(\addr_count_4_reg_n_0_[7] ));
  FDCE \addr_count_4_reg[8] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(addr_count[6]),
        .Q(\addr_count_4_reg_n_0_[8] ));
  FDCE \addr_count_4_reg[9] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(addr_count[7]),
        .Q(\addr_count_4_reg_n_0_[9] ));
  FDCE \addr_count_reg[0] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(plusOp[0]),
        .Q(addr_count[0]));
  FDCE \addr_count_reg[1] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(plusOp[1]),
        .Q(addr_count[1]));
  FDCE \addr_count_reg[2] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(plusOp[2]),
        .Q(addr_count[2]));
  FDCE \addr_count_reg[3] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(plusOp[3]),
        .Q(addr_count[3]));
  FDCE \addr_count_reg[4] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(plusOp[4]),
        .Q(addr_count[4]));
  FDCE \addr_count_reg[5] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(plusOp[5]),
        .Q(addr_count[5]));
  FDCE \addr_count_reg[6] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(plusOp[6]),
        .Q(addr_count[6]));
  FDCE \addr_count_reg[7] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(plusOp[7]),
        .Q(addr_count[7]));
  FDCE \bram_addr_reg[2] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\addr_count_4_reg_n_0_[2] ),
        .Q(bram_addr[0]));
  FDCE \bram_addr_reg[3] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\addr_count_4_reg_n_0_[3] ),
        .Q(bram_addr[1]));
  FDCE \bram_addr_reg[4] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\addr_count_4_reg_n_0_[4] ),
        .Q(bram_addr[2]));
  FDCE \bram_addr_reg[5] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\addr_count_4_reg_n_0_[5] ),
        .Q(bram_addr[3]));
  FDCE \bram_addr_reg[6] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\addr_count_4_reg_n_0_[6] ),
        .Q(bram_addr[4]));
  FDCE \bram_addr_reg[7] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\addr_count_4_reg_n_0_[7] ),
        .Q(bram_addr[5]));
  FDCE \bram_addr_reg[8] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\addr_count_4_reg_n_0_[8] ),
        .Q(bram_addr[6]));
  FDCE \bram_addr_reg[9] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\addr_count_4_reg_n_0_[9] ),
        .Q(bram_addr[7]));
  LUT4 #(
    .INIT(16'h0040)) 
    \bram_data[31]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .I3(addr_count[7]),
        .O(\bram_data[31]_i_1_n_0 ));
  FDCE \bram_data_reg[0] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[0]),
        .Q(bram_data[0]));
  FDCE \bram_data_reg[10] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[10]),
        .Q(bram_data[10]));
  FDCE \bram_data_reg[11] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[11]),
        .Q(bram_data[11]));
  FDCE \bram_data_reg[12] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[12]),
        .Q(bram_data[12]));
  FDCE \bram_data_reg[13] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[13]),
        .Q(bram_data[13]));
  FDCE \bram_data_reg[14] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[14]),
        .Q(bram_data[14]));
  FDCE \bram_data_reg[15] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[15]),
        .Q(bram_data[15]));
  FDCE \bram_data_reg[16] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[16]),
        .Q(bram_data[16]));
  FDCE \bram_data_reg[17] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[17]),
        .Q(bram_data[17]));
  FDCE \bram_data_reg[18] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[18]),
        .Q(bram_data[18]));
  FDCE \bram_data_reg[19] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[19]),
        .Q(bram_data[19]));
  FDCE \bram_data_reg[1] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[1]),
        .Q(bram_data[1]));
  FDCE \bram_data_reg[20] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[20]),
        .Q(bram_data[20]));
  FDCE \bram_data_reg[21] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[21]),
        .Q(bram_data[21]));
  FDCE \bram_data_reg[22] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[22]),
        .Q(bram_data[22]));
  FDCE \bram_data_reg[23] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[23]),
        .Q(bram_data[23]));
  FDCE \bram_data_reg[24] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[24]),
        .Q(bram_data[24]));
  FDCE \bram_data_reg[25] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[25]),
        .Q(bram_data[25]));
  FDCE \bram_data_reg[26] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[26]),
        .Q(bram_data[26]));
  FDCE \bram_data_reg[27] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[27]),
        .Q(bram_data[27]));
  FDCE \bram_data_reg[28] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[28]),
        .Q(bram_data[28]));
  FDCE \bram_data_reg[29] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[29]),
        .Q(bram_data[29]));
  FDCE \bram_data_reg[2] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[2]),
        .Q(bram_data[2]));
  FDCE \bram_data_reg[30] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[30]),
        .Q(bram_data[30]));
  FDCE \bram_data_reg[31] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[31]),
        .Q(bram_data[31]));
  FDCE \bram_data_reg[3] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[3]),
        .Q(bram_data[3]));
  FDCE \bram_data_reg[4] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[4]),
        .Q(bram_data[4]));
  FDCE \bram_data_reg[5] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[5]),
        .Q(bram_data[5]));
  FDCE \bram_data_reg[6] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[6]),
        .Q(bram_data[6]));
  FDCE \bram_data_reg[7] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[7]),
        .Q(bram_data[7]));
  FDCE \bram_data_reg[8] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[8]),
        .Q(bram_data[8]));
  FDCE \bram_data_reg[9] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[9]),
        .Q(bram_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hCDCC)) 
    bram_we_i_1
       (.I0(\bram_data[31]_i_1_n_0 ),
        .I1(\FSM_onehot_dac_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_dac_state_reg_n_0_[0] ),
        .I3(bram_we),
        .O(bram_we_i_1_n_0));
  FDCE bram_we_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(counting_flag_i_2_n_0),
        .D(bram_we_i_1_n_0),
        .Q(bram_we));
  LUT3 #(
    .INIT(8'h08)) 
    \counter[31]_i_1 
       (.I0(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .I1(pulse_in_r1),
        .I2(pulse_in_r2),
        .O(\counter[31]_i_1_n_0 ));
  FDCE \counter_reg[0] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[0]),
        .Q(counter[0]));
  FDCE \counter_reg[10] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[10]),
        .Q(counter[10]));
  FDCE \counter_reg[11] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[11]),
        .Q(counter[11]));
  FDCE \counter_reg[12] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[12]),
        .Q(counter[12]));
  FDCE \counter_reg[13] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[13]),
        .Q(counter[13]));
  FDCE \counter_reg[14] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[14]),
        .Q(counter[14]));
  FDCE \counter_reg[15] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[15]),
        .Q(counter[15]));
  FDCE \counter_reg[16] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[16]),
        .Q(counter[16]));
  FDCE \counter_reg[17] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[17]),
        .Q(counter[17]));
  FDCE \counter_reg[18] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[18]),
        .Q(counter[18]));
  FDCE \counter_reg[19] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[19]),
        .Q(counter[19]));
  FDCE \counter_reg[1] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[1]),
        .Q(counter[1]));
  FDCE \counter_reg[20] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[20]),
        .Q(counter[20]));
  FDCE \counter_reg[21] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[21]),
        .Q(counter[21]));
  FDCE \counter_reg[22] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[22]),
        .Q(counter[22]));
  FDCE \counter_reg[23] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[23]),
        .Q(counter[23]));
  FDCE \counter_reg[24] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[24]),
        .Q(counter[24]));
  FDCE \counter_reg[25] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[25]),
        .Q(counter[25]));
  FDCE \counter_reg[26] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[26]),
        .Q(counter[26]));
  FDCE \counter_reg[27] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[27]),
        .Q(counter[27]));
  FDCE \counter_reg[28] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[28]),
        .Q(counter[28]));
  FDCE \counter_reg[29] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[29]),
        .Q(counter[29]));
  FDCE \counter_reg[2] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[2]),
        .Q(counter[2]));
  FDCE \counter_reg[30] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[30]),
        .Q(counter[30]));
  FDCE \counter_reg[31] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[31]),
        .Q(counter[31]));
  FDCE \counter_reg[3] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[3]),
        .Q(counter[3]));
  FDCE \counter_reg[4] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[4]),
        .Q(counter[4]));
  FDCE \counter_reg[5] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[5]),
        .Q(counter[5]));
  FDCE \counter_reg[6] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[6]),
        .Q(counter[6]));
  FDCE \counter_reg[7] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[7]),
        .Q(counter[7]));
  FDCE \counter_reg[8] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[8]),
        .Q(counter[8]));
  FDCE \counter_reg[9] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[9]),
        .Q(counter[9]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    counting_flag_i_1
       (.I0(\FSM_onehot_dac_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .I2(counting_flag),
        .O(counting_flag_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counting_flag_i_2
       (.I0(rst_n),
        .O(counting_flag_i_2_n_0));
  FDCE counting_flag_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(counting_flag_i_2_n_0),
        .D(counting_flag_i_1_n_0),
        .Q(counting_flag));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \dac_counter[0]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(dac_counter[0]),
        .O(\dac_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[10]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__0_n_14 ),
        .O(\dac_counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[11]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__0_n_13 ),
        .O(\dac_counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[12]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__0_n_12 ),
        .O(\dac_counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[13]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__0_n_11 ),
        .O(\dac_counter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[14]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__0_n_10 ),
        .O(\dac_counter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[15]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__0_n_9 ),
        .O(\dac_counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[16]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__0_n_8 ),
        .O(\dac_counter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[17]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__1_n_15 ),
        .O(\dac_counter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[18]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__1_n_14 ),
        .O(\dac_counter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[19]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__1_n_13 ),
        .O(\dac_counter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[1]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry_n_15 ),
        .O(\dac_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[20]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__1_n_12 ),
        .O(\dac_counter[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[21]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__1_n_11 ),
        .O(\dac_counter[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[22]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__1_n_10 ),
        .O(\dac_counter[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[23]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__1_n_9 ),
        .O(\dac_counter[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[24]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__1_n_8 ),
        .O(\dac_counter[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[25]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__2_n_15 ),
        .O(\dac_counter[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[26]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__2_n_14 ),
        .O(\dac_counter[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[27]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__2_n_13 ),
        .O(\dac_counter[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[28]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__2_n_12 ),
        .O(\dac_counter[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[29]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__2_n_11 ),
        .O(\dac_counter[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[2]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry_n_14 ),
        .O(\dac_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[30]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__2_n_10 ),
        .O(\dac_counter[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[31]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__2_n_9 ),
        .O(\dac_counter[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[3]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry_n_13 ),
        .O(\dac_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[4]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry_n_12 ),
        .O(\dac_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[5]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry_n_11 ),
        .O(\dac_counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[6]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry_n_10 ),
        .O(\dac_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[7]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry_n_9 ),
        .O(\dac_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[8]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry_n_8 ),
        .O(\dac_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \dac_counter[9]_i_1 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .I2(\plusOp_inferred__0/i__carry__0_n_15 ),
        .O(\dac_counter[9]_i_1_n_0 ));
  FDCE \dac_counter_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[0]_i_1_n_0 ),
        .Q(dac_counter[0]));
  FDCE \dac_counter_reg[10] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[10]_i_1_n_0 ),
        .Q(dac_counter[10]));
  FDCE \dac_counter_reg[11] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[11]_i_1_n_0 ),
        .Q(dac_counter[11]));
  FDCE \dac_counter_reg[12] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[12]_i_1_n_0 ),
        .Q(dac_counter[12]));
  FDCE \dac_counter_reg[13] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[13]_i_1_n_0 ),
        .Q(dac_counter[13]));
  FDCE \dac_counter_reg[14] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[14]_i_1_n_0 ),
        .Q(dac_counter[14]));
  FDCE \dac_counter_reg[15] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[15]_i_1_n_0 ),
        .Q(dac_counter[15]));
  FDCE \dac_counter_reg[16] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[16]_i_1_n_0 ),
        .Q(dac_counter[16]));
  FDCE \dac_counter_reg[17] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[17]_i_1_n_0 ),
        .Q(dac_counter[17]));
  FDCE \dac_counter_reg[18] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[18]_i_1_n_0 ),
        .Q(dac_counter[18]));
  FDCE \dac_counter_reg[19] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[19]_i_1_n_0 ),
        .Q(dac_counter[19]));
  FDCE \dac_counter_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[1]_i_1_n_0 ),
        .Q(dac_counter[1]));
  FDCE \dac_counter_reg[20] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[20]_i_1_n_0 ),
        .Q(dac_counter[20]));
  FDCE \dac_counter_reg[21] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[21]_i_1_n_0 ),
        .Q(dac_counter[21]));
  FDCE \dac_counter_reg[22] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[22]_i_1_n_0 ),
        .Q(dac_counter[22]));
  FDCE \dac_counter_reg[23] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[23]_i_1_n_0 ),
        .Q(dac_counter[23]));
  FDCE \dac_counter_reg[24] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[24]_i_1_n_0 ),
        .Q(dac_counter[24]));
  FDCE \dac_counter_reg[25] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[25]_i_1_n_0 ),
        .Q(dac_counter[25]));
  FDCE \dac_counter_reg[26] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[26]_i_1_n_0 ),
        .Q(dac_counter[26]));
  FDCE \dac_counter_reg[27] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[27]_i_1_n_0 ),
        .Q(dac_counter[27]));
  FDCE \dac_counter_reg[28] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[28]_i_1_n_0 ),
        .Q(dac_counter[28]));
  FDCE \dac_counter_reg[29] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[29]_i_1_n_0 ),
        .Q(dac_counter[29]));
  FDCE \dac_counter_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[2]_i_1_n_0 ),
        .Q(dac_counter[2]));
  FDCE \dac_counter_reg[30] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[30]_i_1_n_0 ),
        .Q(dac_counter[30]));
  FDCE \dac_counter_reg[31] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[31]_i_1_n_0 ),
        .Q(dac_counter[31]));
  FDCE \dac_counter_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[3]_i_1_n_0 ),
        .Q(dac_counter[3]));
  FDCE \dac_counter_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[4]_i_1_n_0 ),
        .Q(dac_counter[4]));
  FDCE \dac_counter_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[5]_i_1_n_0 ),
        .Q(dac_counter[5]));
  FDCE \dac_counter_reg[6] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[6]_i_1_n_0 ),
        .Q(dac_counter[6]));
  FDCE \dac_counter_reg[7] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[7]_i_1_n_0 ),
        .Q(dac_counter[7]));
  FDCE \dac_counter_reg[8] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[8]_i_1_n_0 ),
        .Q(dac_counter[8]));
  FDCE \dac_counter_reg[9] 
       (.C(clk),
        .CE(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter[9]_i_1_n_0 ),
        .Q(dac_counter[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \debug[0]_i_1 
       (.I0(\FSM_onehot_dac_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_dac_state_reg_n_0_[2] ),
        .O(\debug[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \debug[1]_i_1 
       (.I0(\FSM_onehot_dac_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_dac_state_reg_n_0_[2] ),
        .O(\debug[1]_i_1_n_0 ));
  FDCE \debug_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(counting_flag_i_2_n_0),
        .D(\debug[0]_i_1_n_0 ),
        .Q(debug[0]));
  FDCE \debug_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(counting_flag_i_2_n_0),
        .D(\debug[1]_i_1_n_0 ),
        .Q(debug[1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry 
       (.CI(dac_counter[0]),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 ,\plusOp_inferred__0/i__carry_n_4 ,\plusOp_inferred__0/i__carry_n_5 ,\plusOp_inferred__0/i__carry_n_6 ,\plusOp_inferred__0/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry_n_8 ,\plusOp_inferred__0/i__carry_n_9 ,\plusOp_inferred__0/i__carry_n_10 ,\plusOp_inferred__0/i__carry_n_11 ,\plusOp_inferred__0/i__carry_n_12 ,\plusOp_inferred__0/i__carry_n_13 ,\plusOp_inferred__0/i__carry_n_14 ,\plusOp_inferred__0/i__carry_n_15 }),
        .S(dac_counter[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 ,\plusOp_inferred__0/i__carry__0_n_4 ,\plusOp_inferred__0/i__carry__0_n_5 ,\plusOp_inferred__0/i__carry__0_n_6 ,\plusOp_inferred__0/i__carry__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__0_n_8 ,\plusOp_inferred__0/i__carry__0_n_9 ,\plusOp_inferred__0/i__carry__0_n_10 ,\plusOp_inferred__0/i__carry__0_n_11 ,\plusOp_inferred__0/i__carry__0_n_12 ,\plusOp_inferred__0/i__carry__0_n_13 ,\plusOp_inferred__0/i__carry__0_n_14 ,\plusOp_inferred__0/i__carry__0_n_15 }),
        .S(dac_counter[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry__1_n_0 ,\plusOp_inferred__0/i__carry__1_n_1 ,\plusOp_inferred__0/i__carry__1_n_2 ,\plusOp_inferred__0/i__carry__1_n_3 ,\plusOp_inferred__0/i__carry__1_n_4 ,\plusOp_inferred__0/i__carry__1_n_5 ,\plusOp_inferred__0/i__carry__1_n_6 ,\plusOp_inferred__0/i__carry__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__1_n_8 ,\plusOp_inferred__0/i__carry__1_n_9 ,\plusOp_inferred__0/i__carry__1_n_10 ,\plusOp_inferred__0/i__carry__1_n_11 ,\plusOp_inferred__0/i__carry__1_n_12 ,\plusOp_inferred__0/i__carry__1_n_13 ,\plusOp_inferred__0/i__carry__1_n_14 ,\plusOp_inferred__0/i__carry__1_n_15 }),
        .S(dac_counter[24:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__2 
       (.CI(\plusOp_inferred__0/i__carry__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_plusOp_inferred__0/i__carry__2_CO_UNCONNECTED [7:6],\plusOp_inferred__0/i__carry__2_n_2 ,\plusOp_inferred__0/i__carry__2_n_3 ,\plusOp_inferred__0/i__carry__2_n_4 ,\plusOp_inferred__0/i__carry__2_n_5 ,\plusOp_inferred__0/i__carry__2_n_6 ,\plusOp_inferred__0/i__carry__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__2_O_UNCONNECTED [7],\plusOp_inferred__0/i__carry__2_n_9 ,\plusOp_inferred__0/i__carry__2_n_10 ,\plusOp_inferred__0/i__carry__2_n_11 ,\plusOp_inferred__0/i__carry__2_n_12 ,\plusOp_inferred__0/i__carry__2_n_13 ,\plusOp_inferred__0/i__carry__2_n_14 ,\plusOp_inferred__0/i__carry__2_n_15 }),
        .S({1'b0,dac_counter[31:25]}));
  FDRE pulse_in_r1_reg
       (.C(clk),
        .CE(rst_n),
        .D(pulse_in),
        .Q(pulse_in_r1),
        .R(1'b0));
  FDRE pulse_in_r2_reg
       (.C(clk),
        .CE(rst_n),
        .D(pulse_in_r1),
        .Q(pulse_in_r2),
        .R(1'b0));
  FDCE sync_in_r1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(counting_flag_i_2_n_0),
        .D(sync_in),
        .Q(sync_in_r1));
  FDCE sync_in_r2_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(counting_flag_i_2_n_0),
        .D(sync_in_r1),
        .Q(sync_in_r2));
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

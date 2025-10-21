// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Oct  7 10:44:56 2025
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
  input [15:0]pulse_in;
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
  wire [15:0]pulse_in;
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
        .control({control[19:16],control[3:0]}),
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
    control,
    pulse_in,
    clk,
    sync_in,
    rst_n);
  output [31:0]counter;
  output [31:0]bram_data;
  output [7:0]bram_addr;
  output [1:0]debug;
  output counting_flag;
  output bram_we;
  input [7:0]control;
  input [15:0]pulse_in;
  input clk;
  input sync_in;
  input rst_n;

  wire \FSM_sequential_dac_state[1]_i_1_n_0 ;
  wire \FSM_sequential_dac_state[1]_i_3_n_0 ;
  wire \FSM_sequential_dac_state[1]_i_4_n_0 ;
  wire \FSM_sequential_dac_state[1]_i_5_n_0 ;
  wire \FSM_sequential_dac_state_reg_n_0_[0] ;
  wire \FSM_sequential_dac_state_reg_n_0_[1] ;
  wire [7:0]addr_count;
  wire \addr_count[0]_i_1_n_0 ;
  wire \addr_count[1]_i_1_n_0 ;
  wire \addr_count[2]_i_1_n_0 ;
  wire \addr_count[3]_i_1_n_0 ;
  wire \addr_count[4]_i_1_n_0 ;
  wire \addr_count[5]_i_1_n_0 ;
  wire \addr_count[6]_i_1_n_0 ;
  wire \addr_count[7]_i_1_n_0 ;
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
  wire [7:0]control;
  wire [31:0]counter;
  wire \counter[31]_i_1_n_0 ;
  wire counting_flag;
  wire counting_flag_i_1_n_0;
  wire counting_flag_i_2_n_0;
  wire dac_bit_i;
  wire [31:0]dac_counter;
  wire \dac_counter_reg_n_0_[0] ;
  wire \dac_counter_reg_n_0_[10] ;
  wire \dac_counter_reg_n_0_[11] ;
  wire \dac_counter_reg_n_0_[12] ;
  wire \dac_counter_reg_n_0_[13] ;
  wire \dac_counter_reg_n_0_[14] ;
  wire \dac_counter_reg_n_0_[15] ;
  wire \dac_counter_reg_n_0_[16] ;
  wire \dac_counter_reg_n_0_[17] ;
  wire \dac_counter_reg_n_0_[18] ;
  wire \dac_counter_reg_n_0_[19] ;
  wire \dac_counter_reg_n_0_[1] ;
  wire \dac_counter_reg_n_0_[20] ;
  wire \dac_counter_reg_n_0_[21] ;
  wire \dac_counter_reg_n_0_[22] ;
  wire \dac_counter_reg_n_0_[23] ;
  wire \dac_counter_reg_n_0_[24] ;
  wire \dac_counter_reg_n_0_[25] ;
  wire \dac_counter_reg_n_0_[26] ;
  wire \dac_counter_reg_n_0_[27] ;
  wire \dac_counter_reg_n_0_[28] ;
  wire \dac_counter_reg_n_0_[29] ;
  wire \dac_counter_reg_n_0_[2] ;
  wire \dac_counter_reg_n_0_[30] ;
  wire \dac_counter_reg_n_0_[31] ;
  wire \dac_counter_reg_n_0_[3] ;
  wire \dac_counter_reg_n_0_[4] ;
  wire \dac_counter_reg_n_0_[5] ;
  wire \dac_counter_reg_n_0_[6] ;
  wire \dac_counter_reg_n_0_[7] ;
  wire \dac_counter_reg_n_0_[8] ;
  wire \dac_counter_reg_n_0_[9] ;
  wire [0:0]dac_state;
  wire dac_state0__4;
  wire dac_state11_out;
  wire [1:0]debug;
  wire \debug[0]_i_1_n_0 ;
  wire \debug[1]_i_1_n_0 ;
  wire \debug[1]_i_2_n_0 ;
  wire [19:0]delay_counter;
  wire \delay_counter[19]_i_1_n_0 ;
  wire \delay_counter_reg_n_0_[0] ;
  wire \delay_counter_reg_n_0_[10] ;
  wire \delay_counter_reg_n_0_[11] ;
  wire \delay_counter_reg_n_0_[12] ;
  wire \delay_counter_reg_n_0_[13] ;
  wire \delay_counter_reg_n_0_[14] ;
  wire \delay_counter_reg_n_0_[15] ;
  wire \delay_counter_reg_n_0_[16] ;
  wire \delay_counter_reg_n_0_[17] ;
  wire \delay_counter_reg_n_0_[18] ;
  wire \delay_counter_reg_n_0_[19] ;
  wire \delay_counter_reg_n_0_[1] ;
  wire \delay_counter_reg_n_0_[2] ;
  wire \delay_counter_reg_n_0_[3] ;
  wire \delay_counter_reg_n_0_[4] ;
  wire \delay_counter_reg_n_0_[5] ;
  wire \delay_counter_reg_n_0_[6] ;
  wire \delay_counter_reg_n_0_[7] ;
  wire \delay_counter_reg_n_0_[8] ;
  wire \delay_counter_reg_n_0_[9] ;
  wire [31:1]in9;
  wire p_0_in;
  wire [19:1]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire \plusOp_inferred__1/i__carry__0_n_0 ;
  wire \plusOp_inferred__1/i__carry__0_n_1 ;
  wire \plusOp_inferred__1/i__carry__0_n_2 ;
  wire \plusOp_inferred__1/i__carry__0_n_3 ;
  wire \plusOp_inferred__1/i__carry__0_n_4 ;
  wire \plusOp_inferred__1/i__carry__0_n_5 ;
  wire \plusOp_inferred__1/i__carry__0_n_6 ;
  wire \plusOp_inferred__1/i__carry__0_n_7 ;
  wire \plusOp_inferred__1/i__carry__1_n_0 ;
  wire \plusOp_inferred__1/i__carry__1_n_1 ;
  wire \plusOp_inferred__1/i__carry__1_n_2 ;
  wire \plusOp_inferred__1/i__carry__1_n_3 ;
  wire \plusOp_inferred__1/i__carry__1_n_4 ;
  wire \plusOp_inferred__1/i__carry__1_n_5 ;
  wire \plusOp_inferred__1/i__carry__1_n_6 ;
  wire \plusOp_inferred__1/i__carry__1_n_7 ;
  wire \plusOp_inferred__1/i__carry__2_n_2 ;
  wire \plusOp_inferred__1/i__carry__2_n_3 ;
  wire \plusOp_inferred__1/i__carry__2_n_4 ;
  wire \plusOp_inferred__1/i__carry__2_n_5 ;
  wire \plusOp_inferred__1/i__carry__2_n_6 ;
  wire \plusOp_inferred__1/i__carry__2_n_7 ;
  wire \plusOp_inferred__1/i__carry_n_0 ;
  wire \plusOp_inferred__1/i__carry_n_1 ;
  wire \plusOp_inferred__1/i__carry_n_2 ;
  wire \plusOp_inferred__1/i__carry_n_3 ;
  wire \plusOp_inferred__1/i__carry_n_4 ;
  wire \plusOp_inferred__1/i__carry_n_5 ;
  wire \plusOp_inferred__1/i__carry_n_6 ;
  wire \plusOp_inferred__1/i__carry_n_7 ;
  wire [15:0]pulse_in;
  wire pulse_in_r1;
  wire pulse_in_r1_i_4_n_0;
  wire pulse_in_r1_i_5_n_0;
  wire pulse_in_r1_i_6_n_0;
  wire pulse_in_r1_i_7_n_0;
  wire pulse_in_r1_reg_i_2_n_0;
  wire pulse_in_r1_reg_i_3_n_0;
  wire pulse_in_r2;
  wire rst_n;
  wire sync_in;
  wire sync_in_r1;
  wire sync_in_r2;
  wire [7:2]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [7:3]NLW_plusOp_carry__1_O_UNCONNECTED;
  wire [7:6]\NLW_plusOp_inferred__1/i__carry__2_CO_UNCONNECTED ;
  wire [7:7]\NLW_plusOp_inferred__1/i__carry__2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \FSM_sequential_dac_state[0]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .I1(dac_state0__4),
        .I2(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .O(dac_state));
  LUT6 #(
    .INIT(64'h2222222222222220)) 
    \FSM_sequential_dac_state[0]_i_2 
       (.I0(sync_in_r1),
        .I1(sync_in_r2),
        .I2(control[3]),
        .I3(control[2]),
        .I4(control[0]),
        .I5(control[1]),
        .O(dac_state0__4));
  LUT4 #(
    .INIT(16'h2EFF)) 
    \FSM_sequential_dac_state[1]_i_1 
       (.I0(dac_state11_out),
        .I1(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I2(p_0_in),
        .I3(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .O(\FSM_sequential_dac_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1055FFFF)) 
    \FSM_sequential_dac_state[1]_i_2 
       (.I0(\delay_counter_reg_n_0_[15] ),
        .I1(\FSM_sequential_dac_state[1]_i_3_n_0 ),
        .I2(\FSM_sequential_dac_state[1]_i_4_n_0 ),
        .I3(\delay_counter_reg_n_0_[14] ),
        .I4(\FSM_sequential_dac_state[1]_i_5_n_0 ),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_dac_state[1]_i_3 
       (.I0(\delay_counter_reg_n_0_[11] ),
        .I1(\delay_counter_reg_n_0_[10] ),
        .I2(\delay_counter_reg_n_0_[13] ),
        .I3(\delay_counter_reg_n_0_[12] ),
        .O(\FSM_sequential_dac_state[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \FSM_sequential_dac_state[1]_i_4 
       (.I0(\delay_counter_reg_n_0_[6] ),
        .I1(\delay_counter_reg_n_0_[7] ),
        .I2(\delay_counter_reg_n_0_[8] ),
        .I3(\delay_counter_reg_n_0_[9] ),
        .O(\FSM_sequential_dac_state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_dac_state[1]_i_5 
       (.I0(\delay_counter_reg_n_0_[17] ),
        .I1(\delay_counter_reg_n_0_[16] ),
        .I2(\delay_counter_reg_n_0_[19] ),
        .I3(\delay_counter_reg_n_0_[18] ),
        .O(\FSM_sequential_dac_state[1]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "dac_s_count:01,dac_s_write:10,dac_s_idle:00,dac_s_debounce:11" *) 
  FDCE \FSM_sequential_dac_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state[1]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_state),
        .Q(\FSM_sequential_dac_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "dac_s_count:01,dac_s_write:10,dac_s_idle:00,dac_s_debounce:11" *) 
  FDCE \FSM_sequential_dac_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state[1]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\bram_data[31]_i_1_n_0 ),
        .Q(\FSM_sequential_dac_state_reg_n_0_[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_count[0]_i_1 
       (.I0(addr_count[0]),
        .O(\addr_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr_count[1]_i_1 
       (.I0(addr_count[0]),
        .I1(addr_count[1]),
        .O(\addr_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \addr_count[2]_i_1 
       (.I0(addr_count[0]),
        .I1(addr_count[1]),
        .I2(addr_count[2]),
        .O(\addr_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \addr_count[3]_i_1 
       (.I0(addr_count[1]),
        .I1(addr_count[0]),
        .I2(addr_count[2]),
        .I3(addr_count[3]),
        .O(\addr_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_count[4]_i_1 
       (.I0(addr_count[2]),
        .I1(addr_count[0]),
        .I2(addr_count[1]),
        .I3(addr_count[3]),
        .I4(addr_count[4]),
        .O(\addr_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \addr_count[5]_i_1 
       (.I0(addr_count[3]),
        .I1(addr_count[1]),
        .I2(addr_count[0]),
        .I3(addr_count[2]),
        .I4(addr_count[4]),
        .I5(addr_count[5]),
        .O(\addr_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr_count[6]_i_1 
       (.I0(\addr_count[7]_i_2_n_0 ),
        .I1(addr_count[6]),
        .O(\addr_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_count[7]_i_1 
       (.I0(\addr_count[7]_i_2_n_0 ),
        .I1(addr_count[6]),
        .O(\addr_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \addr_count[7]_i_2 
       (.I0(addr_count[5]),
        .I1(addr_count[3]),
        .I2(addr_count[1]),
        .I3(addr_count[0]),
        .I4(addr_count[2]),
        .I5(addr_count[4]),
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
        .D(\addr_count[0]_i_1_n_0 ),
        .Q(addr_count[0]));
  FDCE \addr_count_reg[1] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\addr_count[1]_i_1_n_0 ),
        .Q(addr_count[1]));
  FDCE \addr_count_reg[2] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\addr_count[2]_i_1_n_0 ),
        .Q(addr_count[2]));
  FDCE \addr_count_reg[3] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\addr_count[3]_i_1_n_0 ),
        .Q(addr_count[3]));
  FDCE \addr_count_reg[4] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\addr_count[4]_i_1_n_0 ),
        .Q(addr_count[4]));
  FDCE \addr_count_reg[5] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\addr_count[5]_i_1_n_0 ),
        .Q(addr_count[5]));
  FDCE \addr_count_reg[6] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\addr_count[6]_i_1_n_0 ),
        .Q(addr_count[6]));
  FDCE \addr_count_reg[7] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\addr_count[7]_i_1_n_0 ),
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
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .I2(dac_state11_out),
        .I3(addr_count[7]),
        .O(\bram_data[31]_i_1_n_0 ));
  FDCE \bram_data_reg[0] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[0] ),
        .Q(bram_data[0]));
  FDCE \bram_data_reg[10] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[10] ),
        .Q(bram_data[10]));
  FDCE \bram_data_reg[11] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[11] ),
        .Q(bram_data[11]));
  FDCE \bram_data_reg[12] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[12] ),
        .Q(bram_data[12]));
  FDCE \bram_data_reg[13] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[13] ),
        .Q(bram_data[13]));
  FDCE \bram_data_reg[14] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[14] ),
        .Q(bram_data[14]));
  FDCE \bram_data_reg[15] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[15] ),
        .Q(bram_data[15]));
  FDCE \bram_data_reg[16] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[16] ),
        .Q(bram_data[16]));
  FDCE \bram_data_reg[17] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[17] ),
        .Q(bram_data[17]));
  FDCE \bram_data_reg[18] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[18] ),
        .Q(bram_data[18]));
  FDCE \bram_data_reg[19] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[19] ),
        .Q(bram_data[19]));
  FDCE \bram_data_reg[1] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[1] ),
        .Q(bram_data[1]));
  FDCE \bram_data_reg[20] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[20] ),
        .Q(bram_data[20]));
  FDCE \bram_data_reg[21] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[21] ),
        .Q(bram_data[21]));
  FDCE \bram_data_reg[22] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[22] ),
        .Q(bram_data[22]));
  FDCE \bram_data_reg[23] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[23] ),
        .Q(bram_data[23]));
  FDCE \bram_data_reg[24] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[24] ),
        .Q(bram_data[24]));
  FDCE \bram_data_reg[25] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[25] ),
        .Q(bram_data[25]));
  FDCE \bram_data_reg[26] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[26] ),
        .Q(bram_data[26]));
  FDCE \bram_data_reg[27] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[27] ),
        .Q(bram_data[27]));
  FDCE \bram_data_reg[28] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[28] ),
        .Q(bram_data[28]));
  FDCE \bram_data_reg[29] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[29] ),
        .Q(bram_data[29]));
  FDCE \bram_data_reg[2] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[2] ),
        .Q(bram_data[2]));
  FDCE \bram_data_reg[30] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[30] ),
        .Q(bram_data[30]));
  FDCE \bram_data_reg[31] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[31] ),
        .Q(bram_data[31]));
  FDCE \bram_data_reg[3] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[3] ),
        .Q(bram_data[3]));
  FDCE \bram_data_reg[4] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[4] ),
        .Q(bram_data[4]));
  FDCE \bram_data_reg[5] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[5] ),
        .Q(bram_data[5]));
  FDCE \bram_data_reg[6] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[6] ),
        .Q(bram_data[6]));
  FDCE \bram_data_reg[7] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[7] ),
        .Q(bram_data[7]));
  FDCE \bram_data_reg[8] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[8] ),
        .Q(bram_data[8]));
  FDCE \bram_data_reg[9] 
       (.C(clk),
        .CE(\bram_data[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[9] ),
        .Q(bram_data[9]));
  LUT5 #(
    .INIT(32'hFFA25500)) 
    bram_we_i_1
       (.I0(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .I1(dac_state11_out),
        .I2(addr_count[7]),
        .I3(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I4(bram_we),
        .O(bram_we_i_1_n_0));
  FDCE bram_we_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(counting_flag_i_2_n_0),
        .D(bram_we_i_1_n_0),
        .Q(bram_we));
  LUT3 #(
    .INIT(8'h40)) 
    \counter[31]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .I2(dac_state11_out),
        .O(\counter[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \counter[31]_i_2 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(control[0]),
        .I3(control[2]),
        .I4(control[1]),
        .I5(control[3]),
        .O(dac_state11_out));
  FDCE \counter_reg[0] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[0] ),
        .Q(counter[0]));
  FDCE \counter_reg[10] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[10] ),
        .Q(counter[10]));
  FDCE \counter_reg[11] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[11] ),
        .Q(counter[11]));
  FDCE \counter_reg[12] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[12] ),
        .Q(counter[12]));
  FDCE \counter_reg[13] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[13] ),
        .Q(counter[13]));
  FDCE \counter_reg[14] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[14] ),
        .Q(counter[14]));
  FDCE \counter_reg[15] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[15] ),
        .Q(counter[15]));
  FDCE \counter_reg[16] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[16] ),
        .Q(counter[16]));
  FDCE \counter_reg[17] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[17] ),
        .Q(counter[17]));
  FDCE \counter_reg[18] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[18] ),
        .Q(counter[18]));
  FDCE \counter_reg[19] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[19] ),
        .Q(counter[19]));
  FDCE \counter_reg[1] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[1] ),
        .Q(counter[1]));
  FDCE \counter_reg[20] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[20] ),
        .Q(counter[20]));
  FDCE \counter_reg[21] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[21] ),
        .Q(counter[21]));
  FDCE \counter_reg[22] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[22] ),
        .Q(counter[22]));
  FDCE \counter_reg[23] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[23] ),
        .Q(counter[23]));
  FDCE \counter_reg[24] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[24] ),
        .Q(counter[24]));
  FDCE \counter_reg[25] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[25] ),
        .Q(counter[25]));
  FDCE \counter_reg[26] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[26] ),
        .Q(counter[26]));
  FDCE \counter_reg[27] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[27] ),
        .Q(counter[27]));
  FDCE \counter_reg[28] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[28] ),
        .Q(counter[28]));
  FDCE \counter_reg[29] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[29] ),
        .Q(counter[29]));
  FDCE \counter_reg[2] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[2] ),
        .Q(counter[2]));
  FDCE \counter_reg[30] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[30] ),
        .Q(counter[30]));
  FDCE \counter_reg[31] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[31] ),
        .Q(counter[31]));
  FDCE \counter_reg[3] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[3] ),
        .Q(counter[3]));
  FDCE \counter_reg[4] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[4] ),
        .Q(counter[4]));
  FDCE \counter_reg[5] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[5] ),
        .Q(counter[5]));
  FDCE \counter_reg[6] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[6] ),
        .Q(counter[6]));
  FDCE \counter_reg[7] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[7] ),
        .Q(counter[7]));
  FDCE \counter_reg[8] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[8] ),
        .Q(counter[8]));
  FDCE \counter_reg[9] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\dac_counter_reg_n_0_[9] ),
        .Q(counter[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    counting_flag_i_1
       (.I0(counting_flag),
        .I1(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I2(\FSM_sequential_dac_state_reg_n_0_[0] ),
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h23)) 
    \dac_counter[0]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(\dac_counter_reg_n_0_[0] ),
        .I2(dac_state11_out),
        .O(dac_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[10]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[10]),
        .I2(dac_state11_out),
        .O(dac_counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[11]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[11]),
        .I2(dac_state11_out),
        .O(dac_counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[12]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[12]),
        .I2(dac_state11_out),
        .O(dac_counter[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[13]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[13]),
        .I2(dac_state11_out),
        .O(dac_counter[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[14]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[14]),
        .I2(dac_state11_out),
        .O(dac_counter[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[15]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[15]),
        .I2(dac_state11_out),
        .O(dac_counter[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[16]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[16]),
        .I2(dac_state11_out),
        .O(dac_counter[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[17]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[17]),
        .I2(dac_state11_out),
        .O(dac_counter[17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[18]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[18]),
        .I2(dac_state11_out),
        .O(dac_counter[18]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[19]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[19]),
        .I2(dac_state11_out),
        .O(dac_counter[19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[1]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[1]),
        .I2(dac_state11_out),
        .O(dac_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[20]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[20]),
        .I2(dac_state11_out),
        .O(dac_counter[20]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[21]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[21]),
        .I2(dac_state11_out),
        .O(dac_counter[21]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[22]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[22]),
        .I2(dac_state11_out),
        .O(dac_counter[22]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[23]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[23]),
        .I2(dac_state11_out),
        .O(dac_counter[23]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[24]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[24]),
        .I2(dac_state11_out),
        .O(dac_counter[24]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[25]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[25]),
        .I2(dac_state11_out),
        .O(dac_counter[25]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[26]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[26]),
        .I2(dac_state11_out),
        .O(dac_counter[26]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[27]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[27]),
        .I2(dac_state11_out),
        .O(dac_counter[27]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[28]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[28]),
        .I2(dac_state11_out),
        .O(dac_counter[28]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[29]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[29]),
        .I2(dac_state11_out),
        .O(dac_counter[29]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[2]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[2]),
        .I2(dac_state11_out),
        .O(dac_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[30]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[30]),
        .I2(dac_state11_out),
        .O(dac_counter[30]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[31]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[31]),
        .I2(dac_state11_out),
        .O(dac_counter[31]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[3]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[3]),
        .I2(dac_state11_out),
        .O(dac_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[4]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[4]),
        .I2(dac_state11_out),
        .O(dac_counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[5]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[5]),
        .I2(dac_state11_out),
        .O(dac_counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[6]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[6]),
        .I2(dac_state11_out),
        .O(dac_counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[7]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[7]),
        .I2(dac_state11_out),
        .O(dac_counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[8]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[8]),
        .I2(dac_state11_out),
        .O(dac_counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \dac_counter[9]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(in9[9]),
        .I2(dac_state11_out),
        .O(dac_counter[9]));
  FDCE \dac_counter_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[0]),
        .Q(\dac_counter_reg_n_0_[0] ));
  FDCE \dac_counter_reg[10] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[10]),
        .Q(\dac_counter_reg_n_0_[10] ));
  FDCE \dac_counter_reg[11] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[11]),
        .Q(\dac_counter_reg_n_0_[11] ));
  FDCE \dac_counter_reg[12] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[12]),
        .Q(\dac_counter_reg_n_0_[12] ));
  FDCE \dac_counter_reg[13] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[13]),
        .Q(\dac_counter_reg_n_0_[13] ));
  FDCE \dac_counter_reg[14] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[14]),
        .Q(\dac_counter_reg_n_0_[14] ));
  FDCE \dac_counter_reg[15] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[15]),
        .Q(\dac_counter_reg_n_0_[15] ));
  FDCE \dac_counter_reg[16] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[16]),
        .Q(\dac_counter_reg_n_0_[16] ));
  FDCE \dac_counter_reg[17] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[17]),
        .Q(\dac_counter_reg_n_0_[17] ));
  FDCE \dac_counter_reg[18] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[18]),
        .Q(\dac_counter_reg_n_0_[18] ));
  FDCE \dac_counter_reg[19] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[19]),
        .Q(\dac_counter_reg_n_0_[19] ));
  FDCE \dac_counter_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[1]),
        .Q(\dac_counter_reg_n_0_[1] ));
  FDCE \dac_counter_reg[20] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[20]),
        .Q(\dac_counter_reg_n_0_[20] ));
  FDCE \dac_counter_reg[21] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[21]),
        .Q(\dac_counter_reg_n_0_[21] ));
  FDCE \dac_counter_reg[22] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[22]),
        .Q(\dac_counter_reg_n_0_[22] ));
  FDCE \dac_counter_reg[23] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[23]),
        .Q(\dac_counter_reg_n_0_[23] ));
  FDCE \dac_counter_reg[24] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[24]),
        .Q(\dac_counter_reg_n_0_[24] ));
  FDCE \dac_counter_reg[25] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[25]),
        .Q(\dac_counter_reg_n_0_[25] ));
  FDCE \dac_counter_reg[26] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[26]),
        .Q(\dac_counter_reg_n_0_[26] ));
  FDCE \dac_counter_reg[27] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[27]),
        .Q(\dac_counter_reg_n_0_[27] ));
  FDCE \dac_counter_reg[28] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[28]),
        .Q(\dac_counter_reg_n_0_[28] ));
  FDCE \dac_counter_reg[29] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[29]),
        .Q(\dac_counter_reg_n_0_[29] ));
  FDCE \dac_counter_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[2]),
        .Q(\dac_counter_reg_n_0_[2] ));
  FDCE \dac_counter_reg[30] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[30]),
        .Q(\dac_counter_reg_n_0_[30] ));
  FDCE \dac_counter_reg[31] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[31]),
        .Q(\dac_counter_reg_n_0_[31] ));
  FDCE \dac_counter_reg[3] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[3]),
        .Q(\dac_counter_reg_n_0_[3] ));
  FDCE \dac_counter_reg[4] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[4]),
        .Q(\dac_counter_reg_n_0_[4] ));
  FDCE \dac_counter_reg[5] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[5]),
        .Q(\dac_counter_reg_n_0_[5] ));
  FDCE \dac_counter_reg[6] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[6]),
        .Q(\dac_counter_reg_n_0_[6] ));
  FDCE \dac_counter_reg[7] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[7]),
        .Q(\dac_counter_reg_n_0_[7] ));
  FDCE \dac_counter_reg[8] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[8]),
        .Q(\dac_counter_reg_n_0_[8] ));
  FDCE \dac_counter_reg[9] 
       (.C(clk),
        .CE(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_counter[9]),
        .Q(\dac_counter_reg_n_0_[9] ));
  LUT1 #(
    .INIT(2'h1)) 
    \debug[0]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .O(\debug[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \debug[1]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .I1(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .O(\debug[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \debug[1]_i_2 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .I1(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .O(\debug[1]_i_2_n_0 ));
  FDCE \debug_reg[0] 
       (.C(clk),
        .CE(\debug[1]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\debug[0]_i_1_n_0 ),
        .Q(debug[0]));
  FDCE \debug_reg[1] 
       (.C(clk),
        .CE(\debug[1]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(\debug[1]_i_2_n_0 ),
        .Q(debug[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \delay_counter[0]_i_1 
       (.I0(\delay_counter_reg_n_0_[0] ),
        .I1(p_0_in),
        .O(delay_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[10]_i_1 
       (.I0(plusOp[10]),
        .I1(p_0_in),
        .O(delay_counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[11]_i_1 
       (.I0(plusOp[11]),
        .I1(p_0_in),
        .O(delay_counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[12]_i_1 
       (.I0(plusOp[12]),
        .I1(p_0_in),
        .O(delay_counter[12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[13]_i_1 
       (.I0(plusOp[13]),
        .I1(p_0_in),
        .O(delay_counter[13]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[14]_i_1 
       (.I0(plusOp[14]),
        .I1(p_0_in),
        .O(delay_counter[14]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[15]_i_1 
       (.I0(plusOp[15]),
        .I1(p_0_in),
        .O(delay_counter[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[16]_i_1 
       (.I0(plusOp[16]),
        .I1(p_0_in),
        .O(delay_counter[16]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[17]_i_1 
       (.I0(plusOp[17]),
        .I1(p_0_in),
        .O(delay_counter[17]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[18]_i_1 
       (.I0(plusOp[18]),
        .I1(p_0_in),
        .O(delay_counter[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[19]_i_1 
       (.I0(\FSM_sequential_dac_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_dac_state_reg_n_0_[0] ),
        .O(\delay_counter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[19]_i_2 
       (.I0(plusOp[19]),
        .I1(p_0_in),
        .O(delay_counter[19]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[1]_i_1 
       (.I0(plusOp[1]),
        .I1(p_0_in),
        .O(delay_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[2]_i_1 
       (.I0(plusOp[2]),
        .I1(p_0_in),
        .O(delay_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[3]_i_1 
       (.I0(plusOp[3]),
        .I1(p_0_in),
        .O(delay_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[4]_i_1 
       (.I0(plusOp[4]),
        .I1(p_0_in),
        .O(delay_counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[5]_i_1 
       (.I0(plusOp[5]),
        .I1(p_0_in),
        .O(delay_counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[6]_i_1 
       (.I0(plusOp[6]),
        .I1(p_0_in),
        .O(delay_counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[7]_i_1 
       (.I0(plusOp[7]),
        .I1(p_0_in),
        .O(delay_counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[8]_i_1 
       (.I0(plusOp[8]),
        .I1(p_0_in),
        .O(delay_counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \delay_counter[9]_i_1 
       (.I0(plusOp[9]),
        .I1(p_0_in),
        .O(delay_counter[9]));
  FDCE \delay_counter_reg[0] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[0]),
        .Q(\delay_counter_reg_n_0_[0] ));
  FDCE \delay_counter_reg[10] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[10]),
        .Q(\delay_counter_reg_n_0_[10] ));
  FDCE \delay_counter_reg[11] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[11]),
        .Q(\delay_counter_reg_n_0_[11] ));
  FDCE \delay_counter_reg[12] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[12]),
        .Q(\delay_counter_reg_n_0_[12] ));
  FDCE \delay_counter_reg[13] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[13]),
        .Q(\delay_counter_reg_n_0_[13] ));
  FDCE \delay_counter_reg[14] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[14]),
        .Q(\delay_counter_reg_n_0_[14] ));
  FDCE \delay_counter_reg[15] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[15]),
        .Q(\delay_counter_reg_n_0_[15] ));
  FDCE \delay_counter_reg[16] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[16]),
        .Q(\delay_counter_reg_n_0_[16] ));
  FDCE \delay_counter_reg[17] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[17]),
        .Q(\delay_counter_reg_n_0_[17] ));
  FDCE \delay_counter_reg[18] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[18]),
        .Q(\delay_counter_reg_n_0_[18] ));
  FDCE \delay_counter_reg[19] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[19]),
        .Q(\delay_counter_reg_n_0_[19] ));
  FDCE \delay_counter_reg[1] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[1]),
        .Q(\delay_counter_reg_n_0_[1] ));
  FDCE \delay_counter_reg[2] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[2]),
        .Q(\delay_counter_reg_n_0_[2] ));
  FDCE \delay_counter_reg[3] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[3]),
        .Q(\delay_counter_reg_n_0_[3] ));
  FDCE \delay_counter_reg[4] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[4]),
        .Q(\delay_counter_reg_n_0_[4] ));
  FDCE \delay_counter_reg[5] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[5]),
        .Q(\delay_counter_reg_n_0_[5] ));
  FDCE \delay_counter_reg[6] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[6]),
        .Q(\delay_counter_reg_n_0_[6] ));
  FDCE \delay_counter_reg[7] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[7]),
        .Q(\delay_counter_reg_n_0_[7] ));
  FDCE \delay_counter_reg[8] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[8]),
        .Q(\delay_counter_reg_n_0_[8] ));
  FDCE \delay_counter_reg[9] 
       (.C(clk),
        .CE(\delay_counter[19]_i_1_n_0 ),
        .CLR(counting_flag_i_2_n_0),
        .D(delay_counter[9]),
        .Q(\delay_counter_reg_n_0_[9] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry
       (.CI(\delay_counter_reg_n_0_[0] ),
        .CI_TOP(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3,plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:1]),
        .S({\delay_counter_reg_n_0_[8] ,\delay_counter_reg_n_0_[7] ,\delay_counter_reg_n_0_[6] ,\delay_counter_reg_n_0_[5] ,\delay_counter_reg_n_0_[4] ,\delay_counter_reg_n_0_[3] ,\delay_counter_reg_n_0_[2] ,\delay_counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CI_TOP(1'b0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3,plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:9]),
        .S({\delay_counter_reg_n_0_[16] ,\delay_counter_reg_n_0_[15] ,\delay_counter_reg_n_0_[14] ,\delay_counter_reg_n_0_[13] ,\delay_counter_reg_n_0_[12] ,\delay_counter_reg_n_0_[11] ,\delay_counter_reg_n_0_[10] ,\delay_counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp_carry__1_CO_UNCONNECTED[7:2],plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__1_O_UNCONNECTED[7:3],plusOp[19:17]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\delay_counter_reg_n_0_[19] ,\delay_counter_reg_n_0_[18] ,\delay_counter_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__1/i__carry 
       (.CI(\dac_counter_reg_n_0_[0] ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__1/i__carry_n_0 ,\plusOp_inferred__1/i__carry_n_1 ,\plusOp_inferred__1/i__carry_n_2 ,\plusOp_inferred__1/i__carry_n_3 ,\plusOp_inferred__1/i__carry_n_4 ,\plusOp_inferred__1/i__carry_n_5 ,\plusOp_inferred__1/i__carry_n_6 ,\plusOp_inferred__1/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in9[8:1]),
        .S({\dac_counter_reg_n_0_[8] ,\dac_counter_reg_n_0_[7] ,\dac_counter_reg_n_0_[6] ,\dac_counter_reg_n_0_[5] ,\dac_counter_reg_n_0_[4] ,\dac_counter_reg_n_0_[3] ,\dac_counter_reg_n_0_[2] ,\dac_counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__1/i__carry__0 
       (.CI(\plusOp_inferred__1/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__1/i__carry__0_n_0 ,\plusOp_inferred__1/i__carry__0_n_1 ,\plusOp_inferred__1/i__carry__0_n_2 ,\plusOp_inferred__1/i__carry__0_n_3 ,\plusOp_inferred__1/i__carry__0_n_4 ,\plusOp_inferred__1/i__carry__0_n_5 ,\plusOp_inferred__1/i__carry__0_n_6 ,\plusOp_inferred__1/i__carry__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in9[16:9]),
        .S({\dac_counter_reg_n_0_[16] ,\dac_counter_reg_n_0_[15] ,\dac_counter_reg_n_0_[14] ,\dac_counter_reg_n_0_[13] ,\dac_counter_reg_n_0_[12] ,\dac_counter_reg_n_0_[11] ,\dac_counter_reg_n_0_[10] ,\dac_counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__1/i__carry__1 
       (.CI(\plusOp_inferred__1/i__carry__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__1/i__carry__1_n_0 ,\plusOp_inferred__1/i__carry__1_n_1 ,\plusOp_inferred__1/i__carry__1_n_2 ,\plusOp_inferred__1/i__carry__1_n_3 ,\plusOp_inferred__1/i__carry__1_n_4 ,\plusOp_inferred__1/i__carry__1_n_5 ,\plusOp_inferred__1/i__carry__1_n_6 ,\plusOp_inferred__1/i__carry__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in9[24:17]),
        .S({\dac_counter_reg_n_0_[24] ,\dac_counter_reg_n_0_[23] ,\dac_counter_reg_n_0_[22] ,\dac_counter_reg_n_0_[21] ,\dac_counter_reg_n_0_[20] ,\dac_counter_reg_n_0_[19] ,\dac_counter_reg_n_0_[18] ,\dac_counter_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__1/i__carry__2 
       (.CI(\plusOp_inferred__1/i__carry__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_plusOp_inferred__1/i__carry__2_CO_UNCONNECTED [7:6],\plusOp_inferred__1/i__carry__2_n_2 ,\plusOp_inferred__1/i__carry__2_n_3 ,\plusOp_inferred__1/i__carry__2_n_4 ,\plusOp_inferred__1/i__carry__2_n_5 ,\plusOp_inferred__1/i__carry__2_n_6 ,\plusOp_inferred__1/i__carry__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__1/i__carry__2_O_UNCONNECTED [7],in9[31:25]}),
        .S({1'b0,\dac_counter_reg_n_0_[31] ,\dac_counter_reg_n_0_[30] ,\dac_counter_reg_n_0_[29] ,\dac_counter_reg_n_0_[28] ,\dac_counter_reg_n_0_[27] ,\dac_counter_reg_n_0_[26] ,\dac_counter_reg_n_0_[25] }));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    pulse_in_r1_i_4
       (.I0(pulse_in[3]),
        .I1(pulse_in[2]),
        .I2(control[5]),
        .I3(pulse_in[1]),
        .I4(control[4]),
        .I5(pulse_in[0]),
        .O(pulse_in_r1_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    pulse_in_r1_i_5
       (.I0(pulse_in[7]),
        .I1(pulse_in[6]),
        .I2(control[5]),
        .I3(pulse_in[5]),
        .I4(control[4]),
        .I5(pulse_in[4]),
        .O(pulse_in_r1_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    pulse_in_r1_i_6
       (.I0(pulse_in[11]),
        .I1(pulse_in[10]),
        .I2(control[5]),
        .I3(pulse_in[9]),
        .I4(control[4]),
        .I5(pulse_in[8]),
        .O(pulse_in_r1_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    pulse_in_r1_i_7
       (.I0(pulse_in[15]),
        .I1(pulse_in[14]),
        .I2(control[5]),
        .I3(pulse_in[13]),
        .I4(control[4]),
        .I5(pulse_in[12]),
        .O(pulse_in_r1_i_7_n_0));
  FDCE pulse_in_r1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(counting_flag_i_2_n_0),
        .D(dac_bit_i),
        .Q(pulse_in_r1));
  MUXF8 pulse_in_r1_reg_i_1
       (.I0(pulse_in_r1_reg_i_2_n_0),
        .I1(pulse_in_r1_reg_i_3_n_0),
        .O(dac_bit_i),
        .S(control[7]));
  MUXF7 pulse_in_r1_reg_i_2
       (.I0(pulse_in_r1_i_4_n_0),
        .I1(pulse_in_r1_i_5_n_0),
        .O(pulse_in_r1_reg_i_2_n_0),
        .S(control[6]));
  MUXF7 pulse_in_r1_reg_i_3
       (.I0(pulse_in_r1_i_6_n_0),
        .I1(pulse_in_r1_i_7_n_0),
        .O(pulse_in_r1_reg_i_3_n_0),
        .S(control[6]));
  FDCE pulse_in_r2_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(counting_flag_i_2_n_0),
        .D(pulse_in_r1),
        .Q(pulse_in_r2));
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

// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Sep 25 13:50:57 2025
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
    debug);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN adc_tech_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input sync_in;
  input pulse_in;
  input [31:0]control;
  output counting_flag;
  output [31:0]counter;
  output [2:0]debug;

  wire \<const0> ;
  wire clk;
  wire [31:0]control;
  wire [31:0]counter;
  wire [1:0]\^debug ;
  wire pulse_in;
  wire rst_n;
  wire sync_in;

  assign counting_flag = \^debug [1];
  assign debug[2] = \<const0> ;
  assign debug[1:0] = \^debug [1:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_cal U0
       (.clk(clk),
        .control(control),
        .counter(counter),
        .debug(\^debug ),
        .pulse_in(pulse_in),
        .rst_n(rst_n),
        .sync_in(sync_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_cal
   (debug,
    counter,
    control,
    pulse_in,
    clk,
    sync_in,
    rst_n);
  output [1:0]debug;
  output [31:0]counter;
  input [31:0]control;
  input pulse_in;
  input clk;
  input sync_in;
  input rst_n;

  wire clk;
  wire [31:0]control;
  wire [31:0]counter;
  wire \counter[31]_i_1_n_0 ;
  wire counting_flag_i_2_n_0;
  wire counting_flag_i_3_n_0;
  wire counting_flag_i_4_n_0;
  wire counting_flag_i_5_n_0;
  wire counting_flag_i_6_n_0;
  wire counting_flag_i_7_n_0;
  wire \dac_counter[0]_i_10_n_0 ;
  wire \dac_counter[0]_i_2_n_0 ;
  wire \dac_counter[0]_i_3_n_0 ;
  wire \dac_counter[0]_i_4_n_0 ;
  wire \dac_counter[0]_i_5_n_0 ;
  wire \dac_counter[0]_i_6_n_0 ;
  wire \dac_counter[0]_i_7_n_0 ;
  wire \dac_counter[0]_i_8_n_0 ;
  wire \dac_counter[0]_i_9_n_0 ;
  wire \dac_counter[16]_i_2_n_0 ;
  wire \dac_counter[16]_i_3_n_0 ;
  wire \dac_counter[16]_i_4_n_0 ;
  wire \dac_counter[16]_i_5_n_0 ;
  wire \dac_counter[16]_i_6_n_0 ;
  wire \dac_counter[16]_i_7_n_0 ;
  wire \dac_counter[16]_i_8_n_0 ;
  wire \dac_counter[16]_i_9_n_0 ;
  wire \dac_counter[24]_i_2_n_0 ;
  wire \dac_counter[24]_i_3_n_0 ;
  wire \dac_counter[24]_i_4_n_0 ;
  wire \dac_counter[24]_i_5_n_0 ;
  wire \dac_counter[24]_i_6_n_0 ;
  wire \dac_counter[24]_i_7_n_0 ;
  wire \dac_counter[24]_i_8_n_0 ;
  wire \dac_counter[24]_i_9_n_0 ;
  wire \dac_counter[8]_i_2_n_0 ;
  wire \dac_counter[8]_i_3_n_0 ;
  wire \dac_counter[8]_i_4_n_0 ;
  wire \dac_counter[8]_i_5_n_0 ;
  wire \dac_counter[8]_i_6_n_0 ;
  wire \dac_counter[8]_i_7_n_0 ;
  wire \dac_counter[8]_i_8_n_0 ;
  wire \dac_counter[8]_i_9_n_0 ;
  wire [31:0]dac_counter_reg;
  wire \dac_counter_reg[0]_i_1_n_0 ;
  wire \dac_counter_reg[0]_i_1_n_1 ;
  wire \dac_counter_reg[0]_i_1_n_10 ;
  wire \dac_counter_reg[0]_i_1_n_11 ;
  wire \dac_counter_reg[0]_i_1_n_12 ;
  wire \dac_counter_reg[0]_i_1_n_13 ;
  wire \dac_counter_reg[0]_i_1_n_14 ;
  wire \dac_counter_reg[0]_i_1_n_15 ;
  wire \dac_counter_reg[0]_i_1_n_2 ;
  wire \dac_counter_reg[0]_i_1_n_3 ;
  wire \dac_counter_reg[0]_i_1_n_4 ;
  wire \dac_counter_reg[0]_i_1_n_5 ;
  wire \dac_counter_reg[0]_i_1_n_6 ;
  wire \dac_counter_reg[0]_i_1_n_7 ;
  wire \dac_counter_reg[0]_i_1_n_8 ;
  wire \dac_counter_reg[0]_i_1_n_9 ;
  wire \dac_counter_reg[16]_i_1_n_0 ;
  wire \dac_counter_reg[16]_i_1_n_1 ;
  wire \dac_counter_reg[16]_i_1_n_10 ;
  wire \dac_counter_reg[16]_i_1_n_11 ;
  wire \dac_counter_reg[16]_i_1_n_12 ;
  wire \dac_counter_reg[16]_i_1_n_13 ;
  wire \dac_counter_reg[16]_i_1_n_14 ;
  wire \dac_counter_reg[16]_i_1_n_15 ;
  wire \dac_counter_reg[16]_i_1_n_2 ;
  wire \dac_counter_reg[16]_i_1_n_3 ;
  wire \dac_counter_reg[16]_i_1_n_4 ;
  wire \dac_counter_reg[16]_i_1_n_5 ;
  wire \dac_counter_reg[16]_i_1_n_6 ;
  wire \dac_counter_reg[16]_i_1_n_7 ;
  wire \dac_counter_reg[16]_i_1_n_8 ;
  wire \dac_counter_reg[16]_i_1_n_9 ;
  wire \dac_counter_reg[24]_i_1_n_1 ;
  wire \dac_counter_reg[24]_i_1_n_10 ;
  wire \dac_counter_reg[24]_i_1_n_11 ;
  wire \dac_counter_reg[24]_i_1_n_12 ;
  wire \dac_counter_reg[24]_i_1_n_13 ;
  wire \dac_counter_reg[24]_i_1_n_14 ;
  wire \dac_counter_reg[24]_i_1_n_15 ;
  wire \dac_counter_reg[24]_i_1_n_2 ;
  wire \dac_counter_reg[24]_i_1_n_3 ;
  wire \dac_counter_reg[24]_i_1_n_4 ;
  wire \dac_counter_reg[24]_i_1_n_5 ;
  wire \dac_counter_reg[24]_i_1_n_6 ;
  wire \dac_counter_reg[24]_i_1_n_7 ;
  wire \dac_counter_reg[24]_i_1_n_8 ;
  wire \dac_counter_reg[24]_i_1_n_9 ;
  wire \dac_counter_reg[8]_i_1_n_0 ;
  wire \dac_counter_reg[8]_i_1_n_1 ;
  wire \dac_counter_reg[8]_i_1_n_10 ;
  wire \dac_counter_reg[8]_i_1_n_11 ;
  wire \dac_counter_reg[8]_i_1_n_12 ;
  wire \dac_counter_reg[8]_i_1_n_13 ;
  wire \dac_counter_reg[8]_i_1_n_14 ;
  wire \dac_counter_reg[8]_i_1_n_15 ;
  wire \dac_counter_reg[8]_i_1_n_2 ;
  wire \dac_counter_reg[8]_i_1_n_3 ;
  wire \dac_counter_reg[8]_i_1_n_4 ;
  wire \dac_counter_reg[8]_i_1_n_5 ;
  wire \dac_counter_reg[8]_i_1_n_6 ;
  wire \dac_counter_reg[8]_i_1_n_7 ;
  wire \dac_counter_reg[8]_i_1_n_8 ;
  wire \dac_counter_reg[8]_i_1_n_9 ;
  wire dac_state;
  wire dac_state_i_1_n_0;
  wire [1:0]debug;
  wire \debug[0]_i_1_n_0 ;
  wire p_0_in;
  wire pulse_in;
  wire pulse_in_r1;
  wire pulse_in_r1_i_2_n_0;
  wire pulse_in_r1_i_3_n_0;
  wire pulse_in_r1_i_4_n_0;
  wire pulse_in_r1_i_5_n_0;
  wire pulse_in_r1_i_6_n_0;
  wire pulse_in_r2;
  wire rst_n;
  wire sync_in;
  wire sync_in_r1;
  wire sync_in_r10;
  wire sync_in_r2;
  wire [7:7]\NLW_dac_counter_reg[24]_i_1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h08)) 
    \counter[31]_i_1 
       (.I0(dac_state),
        .I1(pulse_in_r1),
        .I2(pulse_in_r2),
        .O(\counter[31]_i_1_n_0 ));
  FDCE \counter_reg[0] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[0]),
        .Q(counter[0]));
  FDCE \counter_reg[10] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[10]),
        .Q(counter[10]));
  FDCE \counter_reg[11] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[11]),
        .Q(counter[11]));
  FDCE \counter_reg[12] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[12]),
        .Q(counter[12]));
  FDCE \counter_reg[13] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[13]),
        .Q(counter[13]));
  FDCE \counter_reg[14] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[14]),
        .Q(counter[14]));
  FDCE \counter_reg[15] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[15]),
        .Q(counter[15]));
  FDCE \counter_reg[16] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[16]),
        .Q(counter[16]));
  FDCE \counter_reg[17] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[17]),
        .Q(counter[17]));
  FDCE \counter_reg[18] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[18]),
        .Q(counter[18]));
  FDCE \counter_reg[19] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[19]),
        .Q(counter[19]));
  FDCE \counter_reg[1] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[1]),
        .Q(counter[1]));
  FDCE \counter_reg[20] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[20]),
        .Q(counter[20]));
  FDCE \counter_reg[21] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[21]),
        .Q(counter[21]));
  FDCE \counter_reg[22] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[22]),
        .Q(counter[22]));
  FDCE \counter_reg[23] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[23]),
        .Q(counter[23]));
  FDCE \counter_reg[24] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[24]),
        .Q(counter[24]));
  FDCE \counter_reg[25] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[25]),
        .Q(counter[25]));
  FDCE \counter_reg[26] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[26]),
        .Q(counter[26]));
  FDCE \counter_reg[27] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[27]),
        .Q(counter[27]));
  FDCE \counter_reg[28] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[28]),
        .Q(counter[28]));
  FDCE \counter_reg[29] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[29]),
        .Q(counter[29]));
  FDCE \counter_reg[2] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[2]),
        .Q(counter[2]));
  FDCE \counter_reg[30] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[30]),
        .Q(counter[30]));
  FDCE \counter_reg[31] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[31]),
        .Q(counter[31]));
  FDCE \counter_reg[3] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[3]),
        .Q(counter[3]));
  FDCE \counter_reg[4] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[4]),
        .Q(counter[4]));
  FDCE \counter_reg[5] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[5]),
        .Q(counter[5]));
  FDCE \counter_reg[6] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[6]),
        .Q(counter[6]));
  FDCE \counter_reg[7] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[7]),
        .Q(counter[7]));
  FDCE \counter_reg[8] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[8]),
        .Q(counter[8]));
  FDCE \counter_reg[9] 
       (.C(clk),
        .CE(\counter[31]_i_1_n_0 ),
        .CLR(sync_in_r10),
        .D(dac_counter_reg[9]),
        .Q(counter[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    counting_flag_i_1
       (.I0(counting_flag_i_2_n_0),
        .I1(counting_flag_i_3_n_0),
        .I2(counting_flag_i_4_n_0),
        .I3(counting_flag_i_5_n_0),
        .I4(counting_flag_i_6_n_0),
        .I5(counting_flag_i_7_n_0),
        .O(sync_in_r10));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    counting_flag_i_2
       (.I0(control[22]),
        .I1(control[23]),
        .I2(control[20]),
        .I3(control[21]),
        .I4(control[25]),
        .I5(control[24]),
        .O(counting_flag_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    counting_flag_i_3
       (.I0(control[28]),
        .I1(control[29]),
        .I2(control[26]),
        .I3(control[27]),
        .I4(control[31]),
        .I5(control[30]),
        .O(counting_flag_i_3_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    counting_flag_i_4
       (.I0(control[1]),
        .I1(control[0]),
        .I2(rst_n),
        .O(counting_flag_i_4_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    counting_flag_i_5
       (.I0(control[4]),
        .I1(control[5]),
        .I2(control[2]),
        .I3(control[3]),
        .I4(control[7]),
        .I5(control[6]),
        .O(counting_flag_i_5_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    counting_flag_i_6
       (.I0(control[16]),
        .I1(control[17]),
        .I2(control[14]),
        .I3(control[15]),
        .I4(control[19]),
        .I5(control[18]),
        .O(counting_flag_i_6_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    counting_flag_i_7
       (.I0(control[10]),
        .I1(control[11]),
        .I2(control[8]),
        .I3(control[9]),
        .I4(control[13]),
        .I5(control[12]),
        .O(counting_flag_i_7_n_0));
  FDCE counting_flag_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(sync_in_r10),
        .D(dac_state),
        .Q(debug[1]));
  LUT3 #(
    .INIT(8'h51)) 
    \dac_counter[0]_i_10 
       (.I0(dac_counter_reg[0]),
        .I1(pulse_in_r1),
        .I2(pulse_in_r2),
        .O(\dac_counter[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dac_counter[0]_i_2 
       (.I0(pulse_in_r2),
        .I1(pulse_in_r1),
        .O(\dac_counter[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[0]_i_3 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[7]),
        .O(\dac_counter[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[0]_i_4 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[6]),
        .O(\dac_counter[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[0]_i_5 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[5]),
        .O(\dac_counter[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[0]_i_6 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[4]),
        .O(\dac_counter[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[0]_i_7 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[3]),
        .O(\dac_counter[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[0]_i_8 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[2]),
        .O(\dac_counter[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[0]_i_9 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[1]),
        .O(\dac_counter[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[16]_i_2 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[23]),
        .O(\dac_counter[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[16]_i_3 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[22]),
        .O(\dac_counter[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[16]_i_4 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[21]),
        .O(\dac_counter[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[16]_i_5 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[20]),
        .O(\dac_counter[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[16]_i_6 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[19]),
        .O(\dac_counter[16]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[16]_i_7 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[18]),
        .O(\dac_counter[16]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[16]_i_8 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[17]),
        .O(\dac_counter[16]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[16]_i_9 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[16]),
        .O(\dac_counter[16]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[24]_i_2 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[31]),
        .O(\dac_counter[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[24]_i_3 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[30]),
        .O(\dac_counter[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[24]_i_4 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[29]),
        .O(\dac_counter[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[24]_i_5 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[28]),
        .O(\dac_counter[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[24]_i_6 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[27]),
        .O(\dac_counter[24]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[24]_i_7 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[26]),
        .O(\dac_counter[24]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[24]_i_8 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[25]),
        .O(\dac_counter[24]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[24]_i_9 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[24]),
        .O(\dac_counter[24]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[8]_i_2 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[15]),
        .O(\dac_counter[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[8]_i_3 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[14]),
        .O(\dac_counter[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[8]_i_4 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[13]),
        .O(\dac_counter[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[8]_i_5 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[12]),
        .O(\dac_counter[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[8]_i_6 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[11]),
        .O(\dac_counter[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[8]_i_7 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[10]),
        .O(\dac_counter[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[8]_i_8 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[9]),
        .O(\dac_counter[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_counter[8]_i_9 
       (.I0(pulse_in_r1),
        .I1(pulse_in_r2),
        .I2(dac_counter_reg[8]),
        .O(\dac_counter[8]_i_9_n_0 ));
  FDCE \dac_counter_reg[0] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[0]_i_1_n_15 ),
        .Q(dac_counter_reg[0]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \dac_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\dac_counter_reg[0]_i_1_n_0 ,\dac_counter_reg[0]_i_1_n_1 ,\dac_counter_reg[0]_i_1_n_2 ,\dac_counter_reg[0]_i_1_n_3 ,\dac_counter_reg[0]_i_1_n_4 ,\dac_counter_reg[0]_i_1_n_5 ,\dac_counter_reg[0]_i_1_n_6 ,\dac_counter_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\dac_counter[0]_i_2_n_0 }),
        .O({\dac_counter_reg[0]_i_1_n_8 ,\dac_counter_reg[0]_i_1_n_9 ,\dac_counter_reg[0]_i_1_n_10 ,\dac_counter_reg[0]_i_1_n_11 ,\dac_counter_reg[0]_i_1_n_12 ,\dac_counter_reg[0]_i_1_n_13 ,\dac_counter_reg[0]_i_1_n_14 ,\dac_counter_reg[0]_i_1_n_15 }),
        .S({\dac_counter[0]_i_3_n_0 ,\dac_counter[0]_i_4_n_0 ,\dac_counter[0]_i_5_n_0 ,\dac_counter[0]_i_6_n_0 ,\dac_counter[0]_i_7_n_0 ,\dac_counter[0]_i_8_n_0 ,\dac_counter[0]_i_9_n_0 ,\dac_counter[0]_i_10_n_0 }));
  FDCE \dac_counter_reg[10] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[8]_i_1_n_13 ),
        .Q(dac_counter_reg[10]));
  FDCE \dac_counter_reg[11] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[8]_i_1_n_12 ),
        .Q(dac_counter_reg[11]));
  FDCE \dac_counter_reg[12] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[8]_i_1_n_11 ),
        .Q(dac_counter_reg[12]));
  FDCE \dac_counter_reg[13] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[8]_i_1_n_10 ),
        .Q(dac_counter_reg[13]));
  FDCE \dac_counter_reg[14] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[8]_i_1_n_9 ),
        .Q(dac_counter_reg[14]));
  FDCE \dac_counter_reg[15] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[8]_i_1_n_8 ),
        .Q(dac_counter_reg[15]));
  FDCE \dac_counter_reg[16] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[16]_i_1_n_15 ),
        .Q(dac_counter_reg[16]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \dac_counter_reg[16]_i_1 
       (.CI(\dac_counter_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\dac_counter_reg[16]_i_1_n_0 ,\dac_counter_reg[16]_i_1_n_1 ,\dac_counter_reg[16]_i_1_n_2 ,\dac_counter_reg[16]_i_1_n_3 ,\dac_counter_reg[16]_i_1_n_4 ,\dac_counter_reg[16]_i_1_n_5 ,\dac_counter_reg[16]_i_1_n_6 ,\dac_counter_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\dac_counter_reg[16]_i_1_n_8 ,\dac_counter_reg[16]_i_1_n_9 ,\dac_counter_reg[16]_i_1_n_10 ,\dac_counter_reg[16]_i_1_n_11 ,\dac_counter_reg[16]_i_1_n_12 ,\dac_counter_reg[16]_i_1_n_13 ,\dac_counter_reg[16]_i_1_n_14 ,\dac_counter_reg[16]_i_1_n_15 }),
        .S({\dac_counter[16]_i_2_n_0 ,\dac_counter[16]_i_3_n_0 ,\dac_counter[16]_i_4_n_0 ,\dac_counter[16]_i_5_n_0 ,\dac_counter[16]_i_6_n_0 ,\dac_counter[16]_i_7_n_0 ,\dac_counter[16]_i_8_n_0 ,\dac_counter[16]_i_9_n_0 }));
  FDCE \dac_counter_reg[17] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[16]_i_1_n_14 ),
        .Q(dac_counter_reg[17]));
  FDCE \dac_counter_reg[18] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[16]_i_1_n_13 ),
        .Q(dac_counter_reg[18]));
  FDCE \dac_counter_reg[19] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[16]_i_1_n_12 ),
        .Q(dac_counter_reg[19]));
  FDCE \dac_counter_reg[1] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[0]_i_1_n_14 ),
        .Q(dac_counter_reg[1]));
  FDCE \dac_counter_reg[20] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[16]_i_1_n_11 ),
        .Q(dac_counter_reg[20]));
  FDCE \dac_counter_reg[21] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[16]_i_1_n_10 ),
        .Q(dac_counter_reg[21]));
  FDCE \dac_counter_reg[22] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[16]_i_1_n_9 ),
        .Q(dac_counter_reg[22]));
  FDCE \dac_counter_reg[23] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[16]_i_1_n_8 ),
        .Q(dac_counter_reg[23]));
  FDCE \dac_counter_reg[24] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[24]_i_1_n_15 ),
        .Q(dac_counter_reg[24]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \dac_counter_reg[24]_i_1 
       (.CI(\dac_counter_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_dac_counter_reg[24]_i_1_CO_UNCONNECTED [7],\dac_counter_reg[24]_i_1_n_1 ,\dac_counter_reg[24]_i_1_n_2 ,\dac_counter_reg[24]_i_1_n_3 ,\dac_counter_reg[24]_i_1_n_4 ,\dac_counter_reg[24]_i_1_n_5 ,\dac_counter_reg[24]_i_1_n_6 ,\dac_counter_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\dac_counter_reg[24]_i_1_n_8 ,\dac_counter_reg[24]_i_1_n_9 ,\dac_counter_reg[24]_i_1_n_10 ,\dac_counter_reg[24]_i_1_n_11 ,\dac_counter_reg[24]_i_1_n_12 ,\dac_counter_reg[24]_i_1_n_13 ,\dac_counter_reg[24]_i_1_n_14 ,\dac_counter_reg[24]_i_1_n_15 }),
        .S({\dac_counter[24]_i_2_n_0 ,\dac_counter[24]_i_3_n_0 ,\dac_counter[24]_i_4_n_0 ,\dac_counter[24]_i_5_n_0 ,\dac_counter[24]_i_6_n_0 ,\dac_counter[24]_i_7_n_0 ,\dac_counter[24]_i_8_n_0 ,\dac_counter[24]_i_9_n_0 }));
  FDCE \dac_counter_reg[25] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[24]_i_1_n_14 ),
        .Q(dac_counter_reg[25]));
  FDCE \dac_counter_reg[26] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[24]_i_1_n_13 ),
        .Q(dac_counter_reg[26]));
  FDCE \dac_counter_reg[27] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[24]_i_1_n_12 ),
        .Q(dac_counter_reg[27]));
  FDCE \dac_counter_reg[28] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[24]_i_1_n_11 ),
        .Q(dac_counter_reg[28]));
  FDCE \dac_counter_reg[29] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[24]_i_1_n_10 ),
        .Q(dac_counter_reg[29]));
  FDCE \dac_counter_reg[2] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[0]_i_1_n_13 ),
        .Q(dac_counter_reg[2]));
  FDCE \dac_counter_reg[30] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[24]_i_1_n_9 ),
        .Q(dac_counter_reg[30]));
  FDCE \dac_counter_reg[31] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[24]_i_1_n_8 ),
        .Q(dac_counter_reg[31]));
  FDCE \dac_counter_reg[3] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[0]_i_1_n_12 ),
        .Q(dac_counter_reg[3]));
  FDCE \dac_counter_reg[4] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[0]_i_1_n_11 ),
        .Q(dac_counter_reg[4]));
  FDCE \dac_counter_reg[5] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[0]_i_1_n_10 ),
        .Q(dac_counter_reg[5]));
  FDCE \dac_counter_reg[6] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[0]_i_1_n_9 ),
        .Q(dac_counter_reg[6]));
  FDCE \dac_counter_reg[7] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[0]_i_1_n_8 ),
        .Q(dac_counter_reg[7]));
  FDCE \dac_counter_reg[8] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[8]_i_1_n_15 ),
        .Q(dac_counter_reg[8]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \dac_counter_reg[8]_i_1 
       (.CI(\dac_counter_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\dac_counter_reg[8]_i_1_n_0 ,\dac_counter_reg[8]_i_1_n_1 ,\dac_counter_reg[8]_i_1_n_2 ,\dac_counter_reg[8]_i_1_n_3 ,\dac_counter_reg[8]_i_1_n_4 ,\dac_counter_reg[8]_i_1_n_5 ,\dac_counter_reg[8]_i_1_n_6 ,\dac_counter_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\dac_counter_reg[8]_i_1_n_8 ,\dac_counter_reg[8]_i_1_n_9 ,\dac_counter_reg[8]_i_1_n_10 ,\dac_counter_reg[8]_i_1_n_11 ,\dac_counter_reg[8]_i_1_n_12 ,\dac_counter_reg[8]_i_1_n_13 ,\dac_counter_reg[8]_i_1_n_14 ,\dac_counter_reg[8]_i_1_n_15 }),
        .S({\dac_counter[8]_i_2_n_0 ,\dac_counter[8]_i_3_n_0 ,\dac_counter[8]_i_4_n_0 ,\dac_counter[8]_i_5_n_0 ,\dac_counter[8]_i_6_n_0 ,\dac_counter[8]_i_7_n_0 ,\dac_counter[8]_i_8_n_0 ,\dac_counter[8]_i_9_n_0 }));
  FDCE \dac_counter_reg[9] 
       (.C(clk),
        .CE(dac_state),
        .CLR(sync_in_r10),
        .D(\dac_counter_reg[8]_i_1_n_14 ),
        .Q(dac_counter_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF0F4444)) 
    dac_state_i_1
       (.I0(sync_in_r2),
        .I1(sync_in_r1),
        .I2(pulse_in_r1),
        .I3(pulse_in_r2),
        .I4(dac_state),
        .O(dac_state_i_1_n_0));
  FDCE dac_state_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(sync_in_r10),
        .D(dac_state_i_1_n_0),
        .Q(dac_state));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \debug[0]_i_1 
       (.I0(dac_state),
        .O(\debug[0]_i_1_n_0 ));
  FDCE \debug_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(sync_in_r10),
        .D(\debug[0]_i_1_n_0 ),
        .Q(debug[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    pulse_in_r1_i_1
       (.I0(pulse_in_r1_i_2_n_0),
        .I1(pulse_in_r1_i_3_n_0),
        .I2(pulse_in_r1_i_4_n_0),
        .I3(pulse_in_r1_i_5_n_0),
        .I4(counting_flag_i_4_n_0),
        .I5(pulse_in_r1_i_6_n_0),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    pulse_in_r1_i_2
       (.I0(control[12]),
        .I1(control[13]),
        .I2(control[10]),
        .I3(control[11]),
        .I4(control[9]),
        .I5(control[8]),
        .O(pulse_in_r1_i_2_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    pulse_in_r1_i_3
       (.I0(control[6]),
        .I1(control[7]),
        .I2(control[4]),
        .I3(control[5]),
        .I4(control[3]),
        .I5(control[2]),
        .O(pulse_in_r1_i_3_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    pulse_in_r1_i_4
       (.I0(control[24]),
        .I1(control[25]),
        .I2(control[22]),
        .I3(control[23]),
        .I4(control[21]),
        .I5(control[20]),
        .O(pulse_in_r1_i_4_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    pulse_in_r1_i_5
       (.I0(control[30]),
        .I1(control[31]),
        .I2(control[28]),
        .I3(control[29]),
        .I4(control[27]),
        .I5(control[26]),
        .O(pulse_in_r1_i_5_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    pulse_in_r1_i_6
       (.I0(control[18]),
        .I1(control[19]),
        .I2(control[16]),
        .I3(control[17]),
        .I4(control[15]),
        .I5(control[14]),
        .O(pulse_in_r1_i_6_n_0));
  FDRE pulse_in_r1_reg
       (.C(clk),
        .CE(p_0_in),
        .D(pulse_in),
        .Q(pulse_in_r1),
        .R(1'b0));
  FDRE pulse_in_r2_reg
       (.C(clk),
        .CE(p_0_in),
        .D(pulse_in_r1),
        .Q(pulse_in_r2),
        .R(1'b0));
  FDCE sync_in_r1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(sync_in_r10),
        .D(sync_in),
        .Q(sync_in_r1));
  FDCE sync_in_r2_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(sync_in_r10),
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

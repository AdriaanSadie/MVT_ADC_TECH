// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Sep 30 08:50:32 2025
// Host        : ZA-WASADIE1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/work/Technology/Vivado/MVT_ADC_TECH/adc_tech/adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_bram_writer_0_1/adc_tech_bram_writer_0_1_sim_netlist.v
// Design      : adc_tech_bram_writer_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adc_tech_bram_writer_0_1,bram_writer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "bram_writer,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module adc_tech_bram_writer_0_1
   (clk,
    reset_n,
    start,
    addra,
    dia,
    wea,
    done);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN adc_tech_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input start;
  output [12:0]addra;
  output [31:0]dia;
  output wea;
  output done;

  wire \<const0> ;
  wire [12:2]\^addra ;
  wire clk;
  wire [31:0]dia;
  wire done;
  wire reset_n;
  wire start;
  wire wea;

  assign addra[12:2] = \^addra [12:2];
  assign addra[1] = \<const0> ;
  assign addra[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  adc_tech_bram_writer_0_1_bram_writer U0
       (.Q(\^addra ),
        .clk(clk),
        .dia(dia),
        .done(done),
        .reset_n(reset_n),
        .start(start),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "bram_writer" *) 
module adc_tech_bram_writer_0_1_bram_writer
   (Q,
    dia,
    done,
    wea,
    clk,
    reset_n,
    start);
  output [10:0]Q;
  output [31:0]dia;
  output done;
  output wea;
  input clk;
  input reset_n;
  input start;

  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire [10:0]Q;
  wire \addr_cnt[0]_i_1_n_0 ;
  wire \addr_cnt[10]_i_1_n_0 ;
  wire \addr_cnt[10]_i_2_n_0 ;
  wire \addr_cnt[10]_i_3_n_0 ;
  wire \addr_cnt[10]_i_4_n_0 ;
  wire \addr_cnt[11]_i_1_n_0 ;
  wire \addr_cnt[12]_i_1_n_0 ;
  wire \addr_cnt[1]_i_1_n_0 ;
  wire \addr_cnt[2]_i_1_n_0 ;
  wire \addr_cnt[3]_i_1_n_0 ;
  wire \addr_cnt[4]_i_1_n_0 ;
  wire \addr_cnt[5]_i_1_n_0 ;
  wire \addr_cnt[5]_i_2_n_0 ;
  wire \addr_cnt[6]_i_1_n_0 ;
  wire \addr_cnt[7]_i_1_n_0 ;
  wire \addr_cnt[8]_i_1_n_0 ;
  wire \addr_cnt[9]_i_1_n_0 ;
  wire \addr_cnt[9]_i_2_n_0 ;
  wire \addr_cnt_reg_n_0_[11] ;
  wire \addr_cnt_reg_n_0_[12] ;
  wire clk;
  wire \data_cnt[0]_i_1_n_0 ;
  wire \data_cnt[10]_i_1_n_0 ;
  wire \data_cnt[11]_i_1_n_0 ;
  wire \data_cnt[12]_i_1_n_0 ;
  wire \data_cnt[13]_i_1_n_0 ;
  wire \data_cnt[14]_i_1_n_0 ;
  wire \data_cnt[15]_i_1_n_0 ;
  wire \data_cnt[16]_i_1_n_0 ;
  wire \data_cnt[17]_i_1_n_0 ;
  wire \data_cnt[18]_i_1_n_0 ;
  wire \data_cnt[19]_i_1_n_0 ;
  wire \data_cnt[1]_i_1_n_0 ;
  wire \data_cnt[20]_i_1_n_0 ;
  wire \data_cnt[21]_i_1_n_0 ;
  wire \data_cnt[22]_i_1_n_0 ;
  wire \data_cnt[23]_i_1_n_0 ;
  wire \data_cnt[24]_i_1_n_0 ;
  wire \data_cnt[25]_i_1_n_0 ;
  wire \data_cnt[26]_i_1_n_0 ;
  wire \data_cnt[27]_i_1_n_0 ;
  wire \data_cnt[28]_i_1_n_0 ;
  wire \data_cnt[29]_i_1_n_0 ;
  wire \data_cnt[2]_i_1_n_0 ;
  wire \data_cnt[30]_i_1_n_0 ;
  wire \data_cnt[31]_i_1_n_0 ;
  wire \data_cnt[3]_i_1_n_0 ;
  wire \data_cnt[4]_i_1_n_0 ;
  wire \data_cnt[5]_i_1_n_0 ;
  wire \data_cnt[6]_i_1_n_0 ;
  wire \data_cnt[7]_i_1_n_0 ;
  wire \data_cnt[8]_i_1_n_0 ;
  wire \data_cnt[9]_i_1_n_0 ;
  wire [31:0]dia;
  wire done;
  wire [31:1]in4;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__1_n_4;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__2_n_4;
  wire plusOp_carry__2_n_5;
  wire plusOp_carry__2_n_6;
  wire plusOp_carry__2_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire reset_n;
  wire start;
  wire start_r1;
  wire start_r2;
  wire wea;
  wire [7:6]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_plusOp_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\addr_cnt[10]_i_4_n_0 ),
        .I1(\addr_cnt_reg_n_0_[11] ),
        .I2(Q[10]),
        .I3(\addr_cnt_reg_n_0_[12] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start_r1),
        .I2(start_r2),
        .I3(done),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,write:010,finished:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(done),
        .PRE(\addr_cnt[10]_i_3_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "idle:001,write:010,finished:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "idle:001,write:010,finished:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(Q[0]),
        .O(\addr_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBAAA)) 
    \addr_cnt[10]_i_1 
       (.I0(done),
        .I1(start_r2),
        .I2(start_r1),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \addr_cnt[10]_i_2 
       (.I0(Q[10]),
        .I1(\addr_cnt[10]_i_4_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[10]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cnt[10]_i_3 
       (.I0(reset_n),
        .O(\addr_cnt[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \addr_cnt[10]_i_4 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(\addr_cnt[9]_i_2_n_0 ),
        .I3(Q[7]),
        .I4(Q[9]),
        .O(\addr_cnt[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \addr_cnt[11]_i_1 
       (.I0(\addr_cnt_reg_n_0_[11] ),
        .I1(\addr_cnt[10]_i_4_n_0 ),
        .I2(Q[10]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \addr_cnt[12]_i_1 
       (.I0(\addr_cnt_reg_n_0_[12] ),
        .I1(\addr_cnt_reg_n_0_[11] ),
        .I2(Q[10]),
        .I3(\addr_cnt[10]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \addr_cnt[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \addr_cnt[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \addr_cnt[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \addr_cnt[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \addr_cnt[5]_i_1 
       (.I0(Q[5]),
        .I1(\addr_cnt[5]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \addr_cnt[5]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\addr_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \addr_cnt[6]_i_1 
       (.I0(Q[6]),
        .I1(\addr_cnt[9]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \addr_cnt[7]_i_1 
       (.I0(Q[7]),
        .I1(\addr_cnt[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \addr_cnt[8]_i_1 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(\addr_cnt[9]_i_2_n_0 ),
        .I3(Q[7]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \addr_cnt[9]_i_1 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\addr_cnt[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \addr_cnt[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\addr_cnt[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[0] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[10] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[10]_i_2_n_0 ),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[11] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[11]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[12] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[12]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[1] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[2] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[3] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[4] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[5] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[6] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[6]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[7] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[7]_i_1_n_0 ),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[8] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[8]_i_1_n_0 ),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[9] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[9]_i_1_n_0 ),
        .Q(Q[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dia[0]),
        .O(\data_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[10]_i_1 
       (.I0(in4[10]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\data_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[11]_i_1 
       (.I0(in4[11]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\data_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[12]_i_1 
       (.I0(in4[12]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\data_cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[13]),
        .O(\data_cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[14]),
        .O(\data_cnt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[15]),
        .O(\data_cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[16]),
        .O(\data_cnt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[17]),
        .O(\data_cnt[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[18]),
        .O(\data_cnt[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[19]),
        .O(\data_cnt[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[1]_i_1 
       (.I0(in4[1]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\data_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[20]),
        .O(\data_cnt[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[21]),
        .O(\data_cnt[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[22]),
        .O(\data_cnt[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[23]),
        .O(\data_cnt[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[24]),
        .O(\data_cnt[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[25]),
        .O(\data_cnt[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[26]),
        .O(\data_cnt[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[27]),
        .O(\data_cnt[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[28]),
        .O(\data_cnt[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[29]),
        .O(\data_cnt[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[2]_i_1 
       (.I0(in4[2]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\data_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[30]),
        .O(\data_cnt[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[31]),
        .O(\data_cnt[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[3]_i_1 
       (.I0(in4[3]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\data_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[4]_i_1 
       (.I0(in4[4]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\data_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[5]_i_1 
       (.I0(in4[5]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\data_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[6]_i_1 
       (.I0(in4[6]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\data_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[7]_i_1 
       (.I0(in4[7]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\data_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[8]_i_1 
       (.I0(in4[8]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\data_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[9]_i_1 
       (.I0(in4[9]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\data_cnt[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[0] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[0]_i_1_n_0 ),
        .Q(dia[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[10] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[10]_i_1_n_0 ),
        .Q(dia[10]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[11] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[11]_i_1_n_0 ),
        .Q(dia[11]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[12] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[12]_i_1_n_0 ),
        .Q(dia[12]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[13] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[13]_i_1_n_0 ),
        .Q(dia[13]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[14] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[14]_i_1_n_0 ),
        .Q(dia[14]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[15] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[15]_i_1_n_0 ),
        .Q(dia[15]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[16] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[16]_i_1_n_0 ),
        .Q(dia[16]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[17] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[17]_i_1_n_0 ),
        .Q(dia[17]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[18] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[18]_i_1_n_0 ),
        .Q(dia[18]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[19] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[19]_i_1_n_0 ),
        .Q(dia[19]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[1] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[1]_i_1_n_0 ),
        .Q(dia[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[20] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[20]_i_1_n_0 ),
        .Q(dia[20]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[21] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[21]_i_1_n_0 ),
        .Q(dia[21]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[22] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[22]_i_1_n_0 ),
        .Q(dia[22]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[23] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[23]_i_1_n_0 ),
        .Q(dia[23]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[24] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[24]_i_1_n_0 ),
        .Q(dia[24]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[25] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[25]_i_1_n_0 ),
        .Q(dia[25]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[26] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[26]_i_1_n_0 ),
        .Q(dia[26]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[27] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[27]_i_1_n_0 ),
        .Q(dia[27]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[28] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[28]_i_1_n_0 ),
        .Q(dia[28]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[29] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[29]_i_1_n_0 ),
        .Q(dia[29]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[2] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[2]_i_1_n_0 ),
        .Q(dia[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[30] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[30]_i_1_n_0 ),
        .Q(dia[30]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[31] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[31]_i_1_n_0 ),
        .Q(dia[31]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[3] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[3]_i_1_n_0 ),
        .Q(dia[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[4] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[4]_i_1_n_0 ),
        .Q(dia[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[5] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[5]_i_1_n_0 ),
        .Q(dia[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[6] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[6]_i_1_n_0 ),
        .Q(dia[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[7] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[7]_i_1_n_0 ),
        .Q(dia[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[8] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[8]_i_1_n_0 ),
        .Q(dia[8]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[9] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[9]_i_1_n_0 ),
        .Q(dia[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry
       (.CI(dia[0]),
        .CI_TOP(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3,plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in4[8:1]),
        .S(dia[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CI_TOP(1'b0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3,plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in4[16:9]),
        .S(dia[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3,plusOp_carry__1_n_4,plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in4[24:17]),
        .S(dia[24:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp_carry__2_CO_UNCONNECTED[7:6],plusOp_carry__2_n_2,plusOp_carry__2_n_3,plusOp_carry__2_n_4,plusOp_carry__2_n_5,plusOp_carry__2_n_6,plusOp_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__2_O_UNCONNECTED[7],in4[31:25]}),
        .S({1'b0,dia[31:25]}));
  FDRE start_r1_reg
       (.C(clk),
        .CE(reset_n),
        .D(start),
        .Q(start_r1),
        .R(1'b0));
  FDRE start_r2_reg
       (.C(clk),
        .CE(reset_n),
        .D(start_r1),
        .Q(start_r2),
        .R(1'b0));
  FDRE wea_reg
       (.C(clk),
        .CE(reset_n),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(wea),
        .R(1'b0));
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

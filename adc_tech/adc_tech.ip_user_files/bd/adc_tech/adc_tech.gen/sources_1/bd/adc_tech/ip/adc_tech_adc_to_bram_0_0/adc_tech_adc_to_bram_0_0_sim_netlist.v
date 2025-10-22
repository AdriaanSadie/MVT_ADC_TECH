// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct 22 10:23:16 2025
// Host        : ZA-WASADIE1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/work/Technology/Vivado/MVT_ADC_TECH/adc_tech/adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_adc_to_bram_0_0/adc_tech_adc_to_bram_0_0_sim_netlist.v
// Design      : adc_tech_adc_to_bram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adc_tech_adc_to_bram_0_0,adc_to_bram,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "adc_to_bram,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module adc_tech_adc_to_bram_0_0
   (clk,
    rst_n,
    axi_gpio_in,
    adc_in,
    bram_data,
    bram_addr,
    bram_we,
    bram_done);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN adc_tech_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [31:0]axi_gpio_in;
  input [3:0]adc_in;
  output [31:0]bram_data;
  output [15:0]bram_addr;
  output bram_we;
  output bram_done;

  wire \<const0> ;
  wire [3:0]adc_in;
  wire [31:0]axi_gpio_in;
  wire [9:2]\^bram_addr ;
  wire [31:0]bram_data;
  wire bram_done;
  wire bram_we;
  wire clk;
  wire rst_n;

  assign bram_addr[15] = \<const0> ;
  assign bram_addr[14] = \<const0> ;
  assign bram_addr[13] = \<const0> ;
  assign bram_addr[12] = \<const0> ;
  assign bram_addr[11] = \<const0> ;
  assign bram_addr[10] = \<const0> ;
  assign bram_addr[9:2] = \^bram_addr [9:2];
  assign bram_addr[1] = \<const0> ;
  assign bram_addr[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  adc_tech_adc_to_bram_0_0_adc_to_bram U0
       (.adc_in(adc_in),
        .axi_gpio_in(axi_gpio_in[31]),
        .bram_addr(\^bram_addr ),
        .bram_data(bram_data),
        .bram_done(bram_done),
        .bram_we(bram_we),
        .clk(clk),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "adc_to_bram" *) 
module adc_tech_adc_to_bram_0_0_adc_to_bram
   (bram_data,
    bram_addr,
    bram_we,
    bram_done,
    clk,
    axi_gpio_in,
    rst_n,
    adc_in);
  output [31:0]bram_data;
  output [7:0]bram_addr;
  output bram_we;
  output bram_done;
  input clk;
  input [0:0]axi_gpio_in;
  input rst_n;
  input [3:0]adc_in;

  wire acq_state;
  wire acq_state_i_1_n_0;
  wire [3:0]adc_in;
  wire [1:0]adc_state;
  wire \adc_state_reg_n_0_[0] ;
  wire \adc_state_reg_n_0_[1] ;
  wire \addr_count[7]_i_2_n_0 ;
  wire [9:2]addr_count_4;
  wire addr_count_4_0;
  wire [0:0]axi_gpio_in;
  wire [31:31]axi_gpio_in_r1;
  wire [31:31]axi_gpio_in_r2;
  wire [7:0]bram_addr;
  wire [31:0]bram_data;
  wire [31:0]bram_data_i;
  wire [31:0]bram_data_i1;
  wire \bram_data_i1[31]_i_1_n_0 ;
  wire \bram_data_i[11]_i_1_n_0 ;
  wire \bram_data_i[15]_i_1_n_0 ;
  wire \bram_data_i[19]_i_1_n_0 ;
  wire \bram_data_i[23]_i_1_n_0 ;
  wire \bram_data_i[27]_i_1_n_0 ;
  wire \bram_data_i[31]_i_1_n_0 ;
  wire \bram_data_i[3]_i_1_n_0 ;
  wire \bram_data_i[7]_i_1_n_0 ;
  wire bram_done;
  wire bram_done_i_1_n_0;
  wire bram_we;
  wire bram_we_i_1_n_0;
  wire clk;
  wire load_bram;
  wire load_bram_i_1_n_0;
  wire load_bram_r1;
  wire load_bram_r2;
  wire [3:0]nibble_counter;
  wire \nibble_counter[0]_i_1_n_0 ;
  wire \nibble_counter[1]_i_1_n_0 ;
  wire \nibble_counter[2]_i_1_n_0 ;
  wire \nibble_counter[3]_i_1_n_0 ;
  wire p_0_in;
  wire [9:2]p_1_in;
  wire [7:0]plusOp;
  wire rst_n;

  LUT3 #(
    .INIT(8'hBA)) 
    acq_state_i_1
       (.I0(acq_state),
        .I1(axi_gpio_in_r2),
        .I2(axi_gpio_in_r1),
        .O(acq_state_i_1_n_0));
  FDCE acq_state_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(acq_state_i_1_n_0),
        .Q(acq_state));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \adc_state[0]_i_1 
       (.I0(load_bram_r2),
        .I1(load_bram_r1),
        .I2(\adc_state_reg_n_0_[0] ),
        .I3(\adc_state_reg_n_0_[1] ),
        .O(adc_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \adc_state[1]_i_1 
       (.I0(\adc_state_reg_n_0_[0] ),
        .I1(p_1_in[9]),
        .O(adc_state[1]));
  FDCE \adc_state_reg[0] 
       (.C(clk),
        .CE(bram_we_i_1_n_0),
        .CLR(p_0_in),
        .D(adc_state[0]),
        .Q(\adc_state_reg_n_0_[0] ));
  FDCE \adc_state_reg[1] 
       (.C(clk),
        .CE(bram_we_i_1_n_0),
        .CLR(p_0_in),
        .D(adc_state[1]),
        .Q(\adc_state_reg_n_0_[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_count[0]_i_1 
       (.I0(p_1_in[2]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr_count[1]_i_1 
       (.I0(p_1_in[2]),
        .I1(p_1_in[3]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \addr_count[2]_i_1 
       (.I0(p_1_in[2]),
        .I1(p_1_in[3]),
        .I2(p_1_in[4]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \addr_count[3]_i_1 
       (.I0(p_1_in[3]),
        .I1(p_1_in[2]),
        .I2(p_1_in[4]),
        .I3(p_1_in[5]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_count[4]_i_1 
       (.I0(p_1_in[4]),
        .I1(p_1_in[2]),
        .I2(p_1_in[3]),
        .I3(p_1_in[5]),
        .I4(p_1_in[6]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \addr_count[5]_i_1 
       (.I0(p_1_in[5]),
        .I1(p_1_in[3]),
        .I2(p_1_in[2]),
        .I3(p_1_in[4]),
        .I4(p_1_in[6]),
        .I5(p_1_in[7]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr_count[6]_i_1 
       (.I0(\addr_count[7]_i_2_n_0 ),
        .I1(p_1_in[8]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_count[7]_i_1 
       (.I0(\addr_count[7]_i_2_n_0 ),
        .I1(p_1_in[8]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \addr_count[7]_i_2 
       (.I0(p_1_in[7]),
        .I1(p_1_in[5]),
        .I2(p_1_in[3]),
        .I3(p_1_in[2]),
        .I4(p_1_in[4]),
        .I5(p_1_in[6]),
        .O(\addr_count[7]_i_2_n_0 ));
  FDCE \addr_count_4_reg[2] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(p_1_in[2]),
        .Q(addr_count_4[2]));
  FDCE \addr_count_4_reg[3] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(p_1_in[3]),
        .Q(addr_count_4[3]));
  FDCE \addr_count_4_reg[4] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(p_1_in[4]),
        .Q(addr_count_4[4]));
  FDCE \addr_count_4_reg[5] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(p_1_in[5]),
        .Q(addr_count_4[5]));
  FDCE \addr_count_4_reg[6] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(p_1_in[6]),
        .Q(addr_count_4[6]));
  FDCE \addr_count_4_reg[7] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(p_1_in[7]),
        .Q(addr_count_4[7]));
  FDCE \addr_count_4_reg[8] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(p_1_in[8]),
        .Q(addr_count_4[8]));
  FDCE \addr_count_4_reg[9] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(p_1_in[9]),
        .Q(addr_count_4[9]));
  FDCE \addr_count_reg[0] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(plusOp[0]),
        .Q(p_1_in[2]));
  FDCE \addr_count_reg[1] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(plusOp[1]),
        .Q(p_1_in[3]));
  FDCE \addr_count_reg[2] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(plusOp[2]),
        .Q(p_1_in[4]));
  FDCE \addr_count_reg[3] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(plusOp[3]),
        .Q(p_1_in[5]));
  FDCE \addr_count_reg[4] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(plusOp[4]),
        .Q(p_1_in[6]));
  FDCE \addr_count_reg[5] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(plusOp[5]),
        .Q(p_1_in[7]));
  FDCE \addr_count_reg[6] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(plusOp[6]),
        .Q(p_1_in[8]));
  FDCE \addr_count_reg[7] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(plusOp[7]),
        .Q(p_1_in[9]));
  FDCE \axi_gpio_in_r1_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(axi_gpio_in),
        .Q(axi_gpio_in_r1));
  FDCE \axi_gpio_in_r2_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(axi_gpio_in_r1),
        .Q(axi_gpio_in_r2));
  FDCE \bram_addr_reg[2] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(addr_count_4[2]),
        .Q(bram_addr[0]));
  FDCE \bram_addr_reg[3] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(addr_count_4[3]),
        .Q(bram_addr[1]));
  FDCE \bram_addr_reg[4] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(addr_count_4[4]),
        .Q(bram_addr[2]));
  FDCE \bram_addr_reg[5] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(addr_count_4[5]),
        .Q(bram_addr[3]));
  FDCE \bram_addr_reg[6] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(addr_count_4[6]),
        .Q(bram_addr[4]));
  FDCE \bram_addr_reg[7] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(addr_count_4[7]),
        .Q(bram_addr[5]));
  FDCE \bram_addr_reg[8] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(addr_count_4[8]),
        .Q(bram_addr[6]));
  FDCE \bram_addr_reg[9] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(addr_count_4[9]),
        .Q(bram_addr[7]));
  LUT3 #(
    .INIT(8'h04)) 
    \bram_data[31]_i_1 
       (.I0(\adc_state_reg_n_0_[1] ),
        .I1(\adc_state_reg_n_0_[0] ),
        .I2(p_1_in[9]),
        .O(addr_count_4_0));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_data[31]_i_2 
       (.I0(rst_n),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bram_data_i1[31]_i_1 
       (.I0(acq_state),
        .I1(nibble_counter[0]),
        .I2(nibble_counter[1]),
        .I3(nibble_counter[3]),
        .I4(nibble_counter[2]),
        .O(\bram_data_i1[31]_i_1_n_0 ));
  FDCE \bram_data_i1_reg[0] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[0]),
        .Q(bram_data_i1[0]));
  FDCE \bram_data_i1_reg[10] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[10]),
        .Q(bram_data_i1[10]));
  FDCE \bram_data_i1_reg[11] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[11]),
        .Q(bram_data_i1[11]));
  FDCE \bram_data_i1_reg[12] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[12]),
        .Q(bram_data_i1[12]));
  FDCE \bram_data_i1_reg[13] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[13]),
        .Q(bram_data_i1[13]));
  FDCE \bram_data_i1_reg[14] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[14]),
        .Q(bram_data_i1[14]));
  FDCE \bram_data_i1_reg[15] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[15]),
        .Q(bram_data_i1[15]));
  FDCE \bram_data_i1_reg[16] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[16]),
        .Q(bram_data_i1[16]));
  FDCE \bram_data_i1_reg[17] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[17]),
        .Q(bram_data_i1[17]));
  FDCE \bram_data_i1_reg[18] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[18]),
        .Q(bram_data_i1[18]));
  FDCE \bram_data_i1_reg[19] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[19]),
        .Q(bram_data_i1[19]));
  FDCE \bram_data_i1_reg[1] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[1]),
        .Q(bram_data_i1[1]));
  FDCE \bram_data_i1_reg[20] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[20]),
        .Q(bram_data_i1[20]));
  FDCE \bram_data_i1_reg[21] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[21]),
        .Q(bram_data_i1[21]));
  FDCE \bram_data_i1_reg[22] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[22]),
        .Q(bram_data_i1[22]));
  FDCE \bram_data_i1_reg[23] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[23]),
        .Q(bram_data_i1[23]));
  FDCE \bram_data_i1_reg[24] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[24]),
        .Q(bram_data_i1[24]));
  FDCE \bram_data_i1_reg[25] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[25]),
        .Q(bram_data_i1[25]));
  FDCE \bram_data_i1_reg[26] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[26]),
        .Q(bram_data_i1[26]));
  FDCE \bram_data_i1_reg[27] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[27]),
        .Q(bram_data_i1[27]));
  FDCE \bram_data_i1_reg[28] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[28]),
        .Q(bram_data_i1[28]));
  FDCE \bram_data_i1_reg[29] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[29]),
        .Q(bram_data_i1[29]));
  FDCE \bram_data_i1_reg[2] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[2]),
        .Q(bram_data_i1[2]));
  FDCE \bram_data_i1_reg[30] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[30]),
        .Q(bram_data_i1[30]));
  FDCE \bram_data_i1_reg[31] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[31]),
        .Q(bram_data_i1[31]));
  FDCE \bram_data_i1_reg[3] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[3]),
        .Q(bram_data_i1[3]));
  FDCE \bram_data_i1_reg[4] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[4]),
        .Q(bram_data_i1[4]));
  FDCE \bram_data_i1_reg[5] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[5]),
        .Q(bram_data_i1[5]));
  FDCE \bram_data_i1_reg[6] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[6]),
        .Q(bram_data_i1[6]));
  FDCE \bram_data_i1_reg[7] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[7]),
        .Q(bram_data_i1[7]));
  FDCE \bram_data_i1_reg[8] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[8]),
        .Q(bram_data_i1[8]));
  FDCE \bram_data_i1_reg[9] 
       (.C(clk),
        .CE(\bram_data_i1[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(bram_data_i[9]),
        .Q(bram_data_i1[9]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \bram_data_i[11]_i_1 
       (.I0(acq_state),
        .I1(nibble_counter[2]),
        .I2(nibble_counter[1]),
        .I3(nibble_counter[0]),
        .I4(nibble_counter[3]),
        .O(\bram_data_i[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \bram_data_i[15]_i_1 
       (.I0(acq_state),
        .I1(nibble_counter[2]),
        .I2(nibble_counter[1]),
        .I3(nibble_counter[3]),
        .I4(nibble_counter[0]),
        .O(\bram_data_i[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bram_data_i[19]_i_1 
       (.I0(acq_state),
        .I1(nibble_counter[0]),
        .I2(nibble_counter[3]),
        .I3(nibble_counter[1]),
        .I4(nibble_counter[2]),
        .O(\bram_data_i[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \bram_data_i[23]_i_1 
       (.I0(acq_state),
        .I1(nibble_counter[3]),
        .I2(nibble_counter[0]),
        .I3(nibble_counter[1]),
        .I4(nibble_counter[2]),
        .O(\bram_data_i[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \bram_data_i[27]_i_1 
       (.I0(acq_state),
        .I1(nibble_counter[1]),
        .I2(nibble_counter[0]),
        .I3(nibble_counter[3]),
        .I4(nibble_counter[2]),
        .O(\bram_data_i[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \bram_data_i[31]_i_1 
       (.I0(acq_state),
        .I1(nibble_counter[1]),
        .I2(nibble_counter[3]),
        .I3(nibble_counter[0]),
        .I4(nibble_counter[2]),
        .O(\bram_data_i[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bram_data_i[3]_i_1 
       (.I0(acq_state),
        .I1(nibble_counter[2]),
        .I2(nibble_counter[0]),
        .I3(nibble_counter[3]),
        .I4(nibble_counter[1]),
        .O(\bram_data_i[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \bram_data_i[7]_i_1 
       (.I0(acq_state),
        .I1(nibble_counter[2]),
        .I2(nibble_counter[3]),
        .I3(nibble_counter[0]),
        .I4(nibble_counter[1]),
        .O(\bram_data_i[7]_i_1_n_0 ));
  FDCE \bram_data_i_reg[0] 
       (.C(clk),
        .CE(\bram_data_i[3]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[0]),
        .Q(bram_data_i[0]));
  FDCE \bram_data_i_reg[10] 
       (.C(clk),
        .CE(\bram_data_i[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[2]),
        .Q(bram_data_i[10]));
  FDCE \bram_data_i_reg[11] 
       (.C(clk),
        .CE(\bram_data_i[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[3]),
        .Q(bram_data_i[11]));
  FDCE \bram_data_i_reg[12] 
       (.C(clk),
        .CE(\bram_data_i[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[0]),
        .Q(bram_data_i[12]));
  FDCE \bram_data_i_reg[13] 
       (.C(clk),
        .CE(\bram_data_i[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[1]),
        .Q(bram_data_i[13]));
  FDCE \bram_data_i_reg[14] 
       (.C(clk),
        .CE(\bram_data_i[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[2]),
        .Q(bram_data_i[14]));
  FDCE \bram_data_i_reg[15] 
       (.C(clk),
        .CE(\bram_data_i[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[3]),
        .Q(bram_data_i[15]));
  FDCE \bram_data_i_reg[16] 
       (.C(clk),
        .CE(\bram_data_i[19]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[0]),
        .Q(bram_data_i[16]));
  FDCE \bram_data_i_reg[17] 
       (.C(clk),
        .CE(\bram_data_i[19]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[1]),
        .Q(bram_data_i[17]));
  FDCE \bram_data_i_reg[18] 
       (.C(clk),
        .CE(\bram_data_i[19]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[2]),
        .Q(bram_data_i[18]));
  FDCE \bram_data_i_reg[19] 
       (.C(clk),
        .CE(\bram_data_i[19]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[3]),
        .Q(bram_data_i[19]));
  FDCE \bram_data_i_reg[1] 
       (.C(clk),
        .CE(\bram_data_i[3]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[1]),
        .Q(bram_data_i[1]));
  FDCE \bram_data_i_reg[20] 
       (.C(clk),
        .CE(\bram_data_i[23]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[0]),
        .Q(bram_data_i[20]));
  FDCE \bram_data_i_reg[21] 
       (.C(clk),
        .CE(\bram_data_i[23]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[1]),
        .Q(bram_data_i[21]));
  FDCE \bram_data_i_reg[22] 
       (.C(clk),
        .CE(\bram_data_i[23]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[2]),
        .Q(bram_data_i[22]));
  FDCE \bram_data_i_reg[23] 
       (.C(clk),
        .CE(\bram_data_i[23]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[3]),
        .Q(bram_data_i[23]));
  FDCE \bram_data_i_reg[24] 
       (.C(clk),
        .CE(\bram_data_i[27]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[0]),
        .Q(bram_data_i[24]));
  FDCE \bram_data_i_reg[25] 
       (.C(clk),
        .CE(\bram_data_i[27]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[1]),
        .Q(bram_data_i[25]));
  FDCE \bram_data_i_reg[26] 
       (.C(clk),
        .CE(\bram_data_i[27]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[2]),
        .Q(bram_data_i[26]));
  FDCE \bram_data_i_reg[27] 
       (.C(clk),
        .CE(\bram_data_i[27]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[3]),
        .Q(bram_data_i[27]));
  FDCE \bram_data_i_reg[28] 
       (.C(clk),
        .CE(\bram_data_i[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[0]),
        .Q(bram_data_i[28]));
  FDCE \bram_data_i_reg[29] 
       (.C(clk),
        .CE(\bram_data_i[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[1]),
        .Q(bram_data_i[29]));
  FDCE \bram_data_i_reg[2] 
       (.C(clk),
        .CE(\bram_data_i[3]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[2]),
        .Q(bram_data_i[2]));
  FDCE \bram_data_i_reg[30] 
       (.C(clk),
        .CE(\bram_data_i[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[2]),
        .Q(bram_data_i[30]));
  FDCE \bram_data_i_reg[31] 
       (.C(clk),
        .CE(\bram_data_i[31]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[3]),
        .Q(bram_data_i[31]));
  FDCE \bram_data_i_reg[3] 
       (.C(clk),
        .CE(\bram_data_i[3]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[3]),
        .Q(bram_data_i[3]));
  FDCE \bram_data_i_reg[4] 
       (.C(clk),
        .CE(\bram_data_i[7]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[0]),
        .Q(bram_data_i[4]));
  FDCE \bram_data_i_reg[5] 
       (.C(clk),
        .CE(\bram_data_i[7]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[1]),
        .Q(bram_data_i[5]));
  FDCE \bram_data_i_reg[6] 
       (.C(clk),
        .CE(\bram_data_i[7]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[2]),
        .Q(bram_data_i[6]));
  FDCE \bram_data_i_reg[7] 
       (.C(clk),
        .CE(\bram_data_i[7]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[3]),
        .Q(bram_data_i[7]));
  FDCE \bram_data_i_reg[8] 
       (.C(clk),
        .CE(\bram_data_i[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[0]),
        .Q(bram_data_i[8]));
  FDCE \bram_data_i_reg[9] 
       (.C(clk),
        .CE(\bram_data_i[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(adc_in[1]),
        .Q(bram_data_i[9]));
  FDCE \bram_data_reg[0] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[0]),
        .Q(bram_data[0]));
  FDCE \bram_data_reg[10] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[10]),
        .Q(bram_data[10]));
  FDCE \bram_data_reg[11] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[11]),
        .Q(bram_data[11]));
  FDCE \bram_data_reg[12] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[12]),
        .Q(bram_data[12]));
  FDCE \bram_data_reg[13] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[13]),
        .Q(bram_data[13]));
  FDCE \bram_data_reg[14] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[14]),
        .Q(bram_data[14]));
  FDCE \bram_data_reg[15] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[15]),
        .Q(bram_data[15]));
  FDCE \bram_data_reg[16] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[16]),
        .Q(bram_data[16]));
  FDCE \bram_data_reg[17] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[17]),
        .Q(bram_data[17]));
  FDCE \bram_data_reg[18] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[18]),
        .Q(bram_data[18]));
  FDCE \bram_data_reg[19] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[19]),
        .Q(bram_data[19]));
  FDCE \bram_data_reg[1] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[1]),
        .Q(bram_data[1]));
  FDCE \bram_data_reg[20] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[20]),
        .Q(bram_data[20]));
  FDCE \bram_data_reg[21] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[21]),
        .Q(bram_data[21]));
  FDCE \bram_data_reg[22] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[22]),
        .Q(bram_data[22]));
  FDCE \bram_data_reg[23] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[23]),
        .Q(bram_data[23]));
  FDCE \bram_data_reg[24] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[24]),
        .Q(bram_data[24]));
  FDCE \bram_data_reg[25] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[25]),
        .Q(bram_data[25]));
  FDCE \bram_data_reg[26] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[26]),
        .Q(bram_data[26]));
  FDCE \bram_data_reg[27] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[27]),
        .Q(bram_data[27]));
  FDCE \bram_data_reg[28] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[28]),
        .Q(bram_data[28]));
  FDCE \bram_data_reg[29] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[29]),
        .Q(bram_data[29]));
  FDCE \bram_data_reg[2] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[2]),
        .Q(bram_data[2]));
  FDCE \bram_data_reg[30] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[30]),
        .Q(bram_data[30]));
  FDCE \bram_data_reg[31] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[31]),
        .Q(bram_data[31]));
  FDCE \bram_data_reg[3] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[3]),
        .Q(bram_data[3]));
  FDCE \bram_data_reg[4] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[4]),
        .Q(bram_data[4]));
  FDCE \bram_data_reg[5] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[5]),
        .Q(bram_data[5]));
  FDCE \bram_data_reg[6] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[6]),
        .Q(bram_data[6]));
  FDCE \bram_data_reg[7] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[7]),
        .Q(bram_data[7]));
  FDCE \bram_data_reg[8] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[8]),
        .Q(bram_data[8]));
  FDCE \bram_data_reg[9] 
       (.C(clk),
        .CE(addr_count_4_0),
        .CLR(p_0_in),
        .D(bram_data_i1[9]),
        .Q(bram_data[9]));
  LUT4 #(
    .INIT(16'hFF08)) 
    bram_done_i_1
       (.I0(p_1_in[9]),
        .I1(\adc_state_reg_n_0_[0] ),
        .I2(\adc_state_reg_n_0_[1] ),
        .I3(bram_done),
        .O(bram_done_i_1_n_0));
  FDCE bram_done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(bram_done_i_1_n_0),
        .Q(bram_done));
  LUT2 #(
    .INIT(4'h7)) 
    bram_we_i_1
       (.I0(\adc_state_reg_n_0_[0] ),
        .I1(\adc_state_reg_n_0_[1] ),
        .O(bram_we_i_1_n_0));
  FDCE bram_we_reg
       (.C(clk),
        .CE(bram_we_i_1_n_0),
        .CLR(p_0_in),
        .D(\adc_state_reg_n_0_[1] ),
        .Q(bram_we));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    load_bram_i_1
       (.I0(nibble_counter[2]),
        .I1(nibble_counter[3]),
        .I2(nibble_counter[1]),
        .I3(nibble_counter[0]),
        .I4(acq_state),
        .I5(load_bram),
        .O(load_bram_i_1_n_0));
  FDRE load_bram_r1_reg
       (.C(clk),
        .CE(rst_n),
        .D(load_bram),
        .Q(load_bram_r1),
        .R(1'b0));
  FDRE load_bram_r2_reg
       (.C(clk),
        .CE(rst_n),
        .D(load_bram_r1),
        .Q(load_bram_r2),
        .R(1'b0));
  FDCE load_bram_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(load_bram_i_1_n_0),
        .Q(load_bram));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \nibble_counter[0]_i_1 
       (.I0(acq_state),
        .I1(nibble_counter[0]),
        .O(\nibble_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \nibble_counter[1]_i_1 
       (.I0(acq_state),
        .I1(nibble_counter[0]),
        .I2(nibble_counter[1]),
        .O(\nibble_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h28A0)) 
    \nibble_counter[2]_i_1 
       (.I0(acq_state),
        .I1(nibble_counter[0]),
        .I2(nibble_counter[2]),
        .I3(nibble_counter[1]),
        .O(\nibble_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA0000)) 
    \nibble_counter[3]_i_1 
       (.I0(acq_state),
        .I1(nibble_counter[0]),
        .I2(nibble_counter[2]),
        .I3(nibble_counter[1]),
        .I4(nibble_counter[3]),
        .O(\nibble_counter[3]_i_1_n_0 ));
  FDCE \nibble_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\nibble_counter[0]_i_1_n_0 ),
        .Q(nibble_counter[0]));
  FDCE \nibble_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\nibble_counter[1]_i_1_n_0 ),
        .Q(nibble_counter[1]));
  FDCE \nibble_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\nibble_counter[2]_i_1_n_0 ),
        .Q(nibble_counter[2]));
  FDCE \nibble_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\nibble_counter[3]_i_1_n_0 ),
        .Q(nibble_counter[3]));
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

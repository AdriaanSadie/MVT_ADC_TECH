// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct 22 10:23:16 2025
// Host        : ZA-WASADIE1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adc_tech_data_acquitision_0_0_sim_netlist.v
// Design      : adc_tech_data_acquitision_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adc_tech_data_acquitision_0_0,data_acquitision,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "data_acquitision,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    adc_frontend,
    adc_encoded);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN adc_tech_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [15:0]adc_frontend;
  output [3:0]adc_encoded;

  wire [3:0]adc_encoded;
  wire [15:0]adc_frontend;
  wire clk;
  wire rst_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_acquitision U0
       (.adc_encoded(adc_encoded),
        .adc_frontend(adc_frontend),
        .clk(clk),
        .rst_n(rst_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_acquitision
   (adc_encoded,
    adc_frontend,
    clk,
    rst_n);
  output [3:0]adc_encoded;
  input [15:0]adc_frontend;
  input clk;
  input rst_n;

  wire [3:0]adc_encoded;
  wire \adc_encoded[0]_i_1_n_0 ;
  wire \adc_encoded[0]_i_2_n_0 ;
  wire \adc_encoded[0]_i_3_n_0 ;
  wire \adc_encoded[0]_i_4_n_0 ;
  wire \adc_encoded[0]_i_5_n_0 ;
  wire \adc_encoded[0]_i_6_n_0 ;
  wire \adc_encoded[1]_i_1_n_0 ;
  wire \adc_encoded[1]_i_2_n_0 ;
  wire \adc_encoded[2]_i_1_n_0 ;
  wire \adc_encoded[3]_i_2_n_0 ;
  wire \adc_encoded[3]_i_3_n_0 ;
  wire \adc_encoded[3]_i_4_n_0 ;
  wire \adc_encoded[3]_i_5_n_0 ;
  wire \adc_encoded[3]_i_6_n_0 ;
  wire adc_encoded_0;
  wire [15:0]adc_frontend;
  wire clk;
  wire rst_n;

  LUT6 #(
    .INIT(64'h1111111111110001)) 
    \adc_encoded[0]_i_1 
       (.I0(\adc_encoded[0]_i_2_n_0 ),
        .I1(\adc_encoded[0]_i_3_n_0 ),
        .I2(\adc_encoded[0]_i_4_n_0 ),
        .I3(adc_frontend[11]),
        .I4(\adc_encoded[0]_i_5_n_0 ),
        .I5(\adc_encoded[0]_i_6_n_0 ),
        .O(\adc_encoded[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222F222)) 
    \adc_encoded[0]_i_2 
       (.I0(adc_frontend[1]),
        .I1(adc_frontend[2]),
        .I2(adc_frontend[5]),
        .I3(adc_frontend[3]),
        .I4(adc_frontend[6]),
        .O(\adc_encoded[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \adc_encoded[0]_i_3 
       (.I0(adc_frontend[0]),
        .I1(adc_frontend[3]),
        .I2(adc_frontend[4]),
        .O(\adc_encoded[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \adc_encoded[0]_i_4 
       (.I0(adc_frontend[8]),
        .I1(adc_frontend[9]),
        .I2(adc_frontend[10]),
        .O(\adc_encoded[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8088000080888088)) 
    \adc_encoded[0]_i_5 
       (.I0(adc_frontend[8]),
        .I1(adc_frontend[12]),
        .I2(adc_frontend[14]),
        .I3(adc_frontend[13]),
        .I4(adc_frontend[10]),
        .I5(adc_frontend[9]),
        .O(\adc_encoded[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h7F7FFF7F)) 
    \adc_encoded[0]_i_6 
       (.I0(adc_frontend[5]),
        .I1(adc_frontend[3]),
        .I2(adc_frontend[7]),
        .I3(adc_frontend[8]),
        .I4(adc_frontend[9]),
        .O(\adc_encoded[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hB000)) 
    \adc_encoded[1]_i_1 
       (.I0(adc_frontend[5]),
        .I1(adc_frontend[3]),
        .I2(adc_frontend[1]),
        .I3(\adc_encoded[1]_i_2_n_0 ),
        .O(\adc_encoded[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB0FFFFFF)) 
    \adc_encoded[1]_i_2 
       (.I0(adc_frontend[13]),
        .I1(adc_frontend[11]),
        .I2(adc_frontend[9]),
        .I3(adc_frontend[3]),
        .I4(adc_frontend[7]),
        .O(\adc_encoded[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hA2)) 
    \adc_encoded[2]_i_1 
       (.I0(adc_frontend[3]),
        .I1(adc_frontend[7]),
        .I2(adc_frontend[11]),
        .O(\adc_encoded[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \adc_encoded[3]_i_1 
       (.I0(\adc_encoded[3]_i_3_n_0 ),
        .I1(\adc_encoded[3]_i_4_n_0 ),
        .I2(\adc_encoded[3]_i_5_n_0 ),
        .I3(\adc_encoded[3]_i_6_n_0 ),
        .O(adc_encoded_0));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_encoded[3]_i_2 
       (.I0(rst_n),
        .O(\adc_encoded[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2EFEFFFE)) 
    \adc_encoded[3]_i_3 
       (.I0(adc_frontend[12]),
        .I1(adc_frontend[11]),
        .I2(adc_frontend[10]),
        .I3(adc_frontend[9]),
        .I4(adc_frontend[8]),
        .O(\adc_encoded[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2EFE)) 
    \adc_encoded[3]_i_4 
       (.I0(adc_frontend[15]),
        .I1(adc_frontend[14]),
        .I2(adc_frontend[13]),
        .I3(adc_frontend[12]),
        .O(\adc_encoded[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2EFEFFFE)) 
    \adc_encoded[3]_i_5 
       (.I0(adc_frontend[4]),
        .I1(adc_frontend[3]),
        .I2(adc_frontend[2]),
        .I3(adc_frontend[1]),
        .I4(adc_frontend[0]),
        .O(\adc_encoded[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h2EFEFFFE)) 
    \adc_encoded[3]_i_6 
       (.I0(adc_frontend[8]),
        .I1(adc_frontend[7]),
        .I2(adc_frontend[6]),
        .I3(adc_frontend[5]),
        .I4(adc_frontend[4]),
        .O(\adc_encoded[3]_i_6_n_0 ));
  FDCE \adc_encoded_reg[0] 
       (.C(clk),
        .CE(adc_encoded_0),
        .CLR(\adc_encoded[3]_i_2_n_0 ),
        .D(\adc_encoded[0]_i_1_n_0 ),
        .Q(adc_encoded[0]));
  FDCE \adc_encoded_reg[1] 
       (.C(clk),
        .CE(adc_encoded_0),
        .CLR(\adc_encoded[3]_i_2_n_0 ),
        .D(\adc_encoded[1]_i_1_n_0 ),
        .Q(adc_encoded[1]));
  FDCE \adc_encoded_reg[2] 
       (.C(clk),
        .CE(adc_encoded_0),
        .CLR(\adc_encoded[3]_i_2_n_0 ),
        .D(\adc_encoded[2]_i_1_n_0 ),
        .Q(adc_encoded[2]));
  FDCE \adc_encoded_reg[3] 
       (.C(clk),
        .CE(adc_encoded_0),
        .CLR(\adc_encoded[3]_i_2_n_0 ),
        .D(adc_frontend[7]),
        .Q(adc_encoded[3]));
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

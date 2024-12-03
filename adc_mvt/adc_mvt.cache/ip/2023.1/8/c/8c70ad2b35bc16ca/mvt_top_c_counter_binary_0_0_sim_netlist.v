// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jun 18 07:32:22 2024
// Host        : ZA-WASADIE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mvt_top_c_counter_binary_0_0_sim_netlist.v
// Design      : mvt_top_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mvt_top_c_counter_binary_0_0,c_counter_binary_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_16,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN mvt_top_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 32}" *) output [31:0]Q;

  wire CLK;
  wire [31:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_16 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
nEluQH6zbAqCbx0un3ty7CjKmzIb6EE6u9eMzKEB04v4MBOVFM+Tahu9b35foYTx0ihB8y9vIi1u
WozDAbVIl41ubtYHe98pHqHDDaCjTtGiBRDyfCBDrGxTGZ4brq0UvFaDSbdlQl3n5JemF3KnHqfg
wMYrkU7wFFHkJLVMcTk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nW/9GT0jwg0cGJXOm2WNy5LCgMgb0iaGjzfae0GthFaapA92trGlBPZ8CO9WKXJmM5uTS80UB9rD
PuKl8kfF+MG342ST68iI7DEW8s5TwjZk16znEVWSr2bA2Kn0PBosSg+Xmq22Tj/wcxxQcTijzHNd
O60FvXr2XSMC89T28ONefeTtZc6WwvwyL9H5+IkmdoTJ5mAKgqeYLihv1mxycnq+uM8fyoR79tlA
S3p9q+0Y0k6mCABleE1Ze6a4b5wxmpGtGTvbzc3RGTwstzb4UZPpiyAgnW9A4DQCUBY93aPziiKT
c7MisqRYeGnScSQ1FOFsbD6hotYBh+P8LwGGCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KDiNIUMtatDrhphzmTBFbPhLQnuq6phc0PrJ1hiogLQb7IUEt6plouP9tjwt7I0ZIWDhaRnf5MCk
Gd5vI6wDka/OMxNVtptdLxiIJkVcQbbLuHt+0LQQEt9l+z52R0xVETrazwDGWj83+vCsrNlljbUl
fMz4KSBOf9kOPE6MbqM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
k3Hey9AcH0q64Q+fl481nMcvpHNQ6Af06OnUlq2GSyZHZ3t2v9ryStnHIvSi1l/SQIJMgrZCgME9
lown5XX21YqIMVQoEyGMSpNBNwfTJGTI61QOeUpcU3LzuNlRl4w47st6eceWqPKVrD6oTR3sXq9T
ctrBzMTMaGg9YZmYGJ7Ot/ADRu8vcaT+f6OfgECwuoGk0UOAQaKF/ADVY9WpFWZ5qlC0Cd8wDuXC
jLLq0Fbcps0ea5PDonxV2Z1kh/nXuE2aSrCoEg703Iy1Vimiwe/kvCqZHRWzwoyrK1sXDJdkt7ni
uGVcdxaCDSuAQBAY+DvKCaHxy8HVe23B9nIm7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JgKK/t7ZhsrBmIhtzEHF7fMq/kVx5rC3SDMpxvFJyxvxWyGHc1knzwHpNUZlhxl2+QiWII15PkPH
tRsPxzKmKRUfoUn98Iz+DDEv/t53oxteaulFll9kYXLae5Kr3Z0dSjzo6RhFlK3srBeNbOBQ5kLM
GmLMJXqAg+QCR1zI3uySLoZKPvoArxl0nQXNl+LyCj3NSV6UZbat9kspBEf8Ajes+X3D3fFv6x7R
QFcujdR2uP3rtU2X+kjUyKS68fWQyxeNVQRRtK0+pYzwAjslKl9X2yuZLP8sbivJF+KMMGIR6mDJ
Evvk6N3D/2t3QMFH/QwpvnMzM7FWwR1+A2XB+A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l1upFntc7IVck7RcCXkYErX39AcroU+a5uEQXMYfQhip8WAsHSLdZlUa+Pekqto4E2g8SgecRBRu
QrTkaI7ASczWH6LcnIz//dsEIf29ekkxATEsJgnRku8WWT0qoHAHSHdh5/QBxPMMciAaoZZn7Oao
iMi43cgsYOKLrxaRVA1CADZ/GqPdF85TfjeFZM6SbwE9mPf1OSJvOTiaz9xmgcqX6v1Z9g8EnoxJ
6I829suxYY7M6LZ0d0EjjUyaavZjV5HDiB1fssOvW/djjXtxFJRNs2Gjhme3uFqkpCEPEmN552yh
8Dh9ZD+svzOa4souKCgpp+Me8Fjk7DseJZFS+w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l7Jl6pHBA954sGX8lOxgRbkjqIY8qsUwlO/a8pzc9ccc3J6g7NH7JFDFJo/lP4EGu33DhHMaekKk
D4zrS/BeJYsvT4iIAxDLg04OtrvXSJldjg34BLszQLhqUGfb3q06Oj0fXD2iEyLNSR/dM1elF9xE
hKaV329dq6ZrzVp7pI0Kl4Phi/0xqfaA4pxpvDmn6jz/v6My3nmy28BMd5KJpLTeEVwRfwf1KaSP
Kbi19ZYAimO73Cj9C1mrQdmzLERkopxYs+N+PKEg/uJ33h3AIIXYALv1dtvCi/kY33mMor2YzciC
cOvpgm0rOl8N+wluwGldTr51jmMU3UgRXnpIcA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
sDLt9yC+aGCruo0Pc7rNmFvG2ac6bXjKm57sR9Rc7vhL9yi9iuJX/dei64d6laIYpv7rKof457yt
dHM3kNbfEvjncjiGOY7W6JH9B9crujUlJSAtPxDBpA1ViiJACab8Tkr/b8aim+gsfCRULaYQf7Em
PZgRR/YsxeTPzLR6+g6rtTiWVwHOSHeRFwlXDUwOHC9ojrEk758fcOul3bUMy5jBkbIrnMckcYNJ
UTIM/NeQ2Z/19PGsmo1DzokYwWzLO/zziA3yzHUXNK/w69M9ML2Iuta7bZVscwAupPOW9l6jLkCf
ml/TslOBHqpc17ZtvXijJ69O/LsO1U2gWTdgP/LZuz80gMWMCxCrdGVp/uSa/4xGr4H3vIXkdIx0
Sg4fr4eszK3MgUcF10OTIa2Q1kSgpDI+mwH+yvUepsWPGRNbJ26keoVN9FUem6TOAoMBjMIrwjVL
ew9v9xzan9X7FYCU+yrylMvdNWv0ozAy2lW5sx96wNHOJF5NyPNMrrgu

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G1e/ZtUXcVEpkIPuRVXcxOiovL5iPfoV4SVmgSb0Q/5PbZ5mJDGQX9Sp80Mjta07Bt/3DCSMp0KJ
TCu25lkbgnZpMU/VZ0Q5fpryTT0QlNvXapuLZpwz2mB71FqiOCtJCUJgTkh27JBiAtqXVPo5BzA7
9FlPrsD6aZeAnLU1VNhug43fOPpbojbhxh5A3rYZfHTf2ybdNunH1OhuZxXW6dssnmEmaIhaYP/U
tSLQxjYWOD87MQ4xPqXgJim9qdjCyeahZxxq1nIffw2rSxV1NEvmZCAxL36YKl0GAW3YS4F4uFS8
x1YSENfQJ73Udn5tHSJeGSFENuCPYsx9hzSkZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BiTYvPlTHdFkZYRhJtrnL3Q4dsjcwEntddpR+S6302/JE2efmAijBAcJ9NFVmSWIOskZ3j6wyb4R
zx/zyRtk7mXxXqqWE+pJriyalpGB0jkEfv7RgctL9ecRvyMX2oVrgfaEPiE+9xA1pZsDG0n/meHB
k/5J4W9tosxbDTX5Rvlcr864+OjdXNt4i8/ENDAjPfarp8PZDjcdCWW0MaW9UcKdD50/syOGKUv7
uX5VjcUnmuOz5MitG/v12XyB9RqX8Xd0jpFU6uKoe24Rum6u3ZBNulXNEeeydLNgvNqWi/EKGZyq
fBxFHYewr1Mthm+n4JJrRbuK2Bbmle8JCmlk5w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B72x+G3JpRiSi/tEIdjaMcSmbRWotBVxzChQjW/Juzg6fn6UnnU0xR7cBopxI+M5nFvNEzHih15n
LtbzqF/N7TL3NbCNPRvgDZo/o7xv7uBRJUX3DX4aCT4wI8qTLjBZ3sPLcEyBkcQt8Lm4ZYcsK9+j
79mQdfD6edNFXZSUWz6v7CRYeaBdcML0hNyBz5KyoMEQEYkJ7kCsriNjphnFEcYe1lQMn6I4/Vdd
oANc8acFZ8KQWIcoIVIQf2LaW2EgvH5lDzQFIqC4rQyECJtjjbSrWFlBzaPMQp6WPRWR2yfgZXwW
qQDWroDJiCazAARJOWa46wyaD5NT+h/6PQP+Qg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18816)
`pragma protect data_block
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
0oD+db1P
`pragma protect end_protected
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

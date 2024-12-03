// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jun 18 07:32:22 2024
// Host        : ZA-WASADIE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mvt_top_c_counter_binary_0_1 -prefix
//               mvt_top_c_counter_binary_0_1_ mvt_top_c_counter_binary_0_0_sim_netlist.v
// Design      : mvt_top_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mvt_top_c_counter_binary_0_0,c_counter_binary_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_16,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module mvt_top_c_counter_binary_0_1
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
  mvt_top_c_counter_binary_0_1_c_counter_binary_v12_0_16 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18640)
`pragma protect data_block
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
uQ==
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

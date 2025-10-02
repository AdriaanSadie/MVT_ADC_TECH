











set_property IOSTANDARD LVCMOS18 [get_ports {pl_led0[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports pl_led1]
set_property IOSTANDARD LVCMOS18 [get_ports pl_led2]
set_property IOSTANDARD LVCMOS18 [get_ports pl_led3]

set_property PACKAGE_PIN F17 [get_ports {pl_led0[0]}]
set_property PACKAGE_PIN F16 [get_ports pl_led1]
set_property PACKAGE_PIN H18 [get_ports pl_led2]
set_property PACKAGE_PIN H17 [get_ports pl_led3]

set_property PACKAGE_PIN H9 [get_ports pl_clk_p]
set_property IOSTANDARD LVDS [get_ports pl_clk_p]


set_property PACKAGE_PIN A13 [get_ports i2c_scl]
set_property PACKAGE_PIN A12 [get_ports i2c_sda]
set_property IOSTANDARD LVCMOS18 [get_ports i2c_scl]
set_property IOSTANDARD LVCMOS18 [get_ports i2c_sda]

set_property BITSTREAM.STARTUP.LCK_CYCLE 3 [current_design]

set_property PACKAGE_PIN G18 [get_ports my_i2c_scl]
set_property PACKAGE_PIN F18 [get_ports my_i2c_sda]
set_property IOSTANDARD LVCMOS18 [get_ports my_i2c_scl]
set_property IOSTANDARD LVCMOS18 [get_ports my_i2c_sda]

set_property DIFF_TERM_ADV TERM_NONE [get_ports pl_clk_p]

set_property PACKAGE_PIN L20 [get_ports counting_flag]
set_property IOSTANDARD LVCMOS18 [get_ports counting_flag]
set_property PACKAGE_PIN K18 [get_ports pulse_in]
set_property IOSTANDARD LVCMOS18 [get_ports pulse_in]
set_property IOSTANDARD LVCMOS18 [get_ports sync_in]

set_property PACKAGE_PIN K19 [get_ports pulse_in_p]
set_property IOSTANDARD LVDS [get_ports pulse_in_p]
set_property IOSTANDARD LVDS [get_ports pulse_in_n]
set_property DIFF_TERM_ADV TERM_NONE [get_ports pulse_in_p]
set_property DIFF_TERM_ADV TERM_NONE [get_ports pulse_in_n]
set_property PACKAGE_PIN K20 [get_ports sync_in]

set_property IOSTANDARD LVCMOS18 [get_ports {debug0[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {debug1[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {debug2[0]}]

connect_debug_port u_ila_0/probe0 [get_nets [list {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[0]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[1]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[2]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[3]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[4]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[5]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[6]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[7]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[8]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[9]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[10]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[11]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[12]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[13]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[14]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[15]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[16]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[17]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[18]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[19]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[20]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[21]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[22]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[23]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[24]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[25]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[26]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[27]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[28]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[29]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[30]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_DOUT[31]}]]
connect_debug_port u_ila_0/probe1 [get_nets [list {adc_tech_i/bram_writer_0_addra[0]} {adc_tech_i/bram_writer_0_addra[1]} {adc_tech_i/bram_writer_0_addra[2]} {adc_tech_i/bram_writer_0_addra[3]} {adc_tech_i/bram_writer_0_addra[4]} {adc_tech_i/bram_writer_0_addra[5]} {adc_tech_i/bram_writer_0_addra[6]} {adc_tech_i/bram_writer_0_addra[7]} {adc_tech_i/bram_writer_0_addra[8]} {adc_tech_i/bram_writer_0_addra[9]} {adc_tech_i/bram_writer_0_addra[10]} {adc_tech_i/bram_writer_0_addra[11]} {adc_tech_i/bram_writer_0_addra[12]}]]
connect_debug_port u_ila_0/probe2 [get_nets [list {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_ADDR[0]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_ADDR[1]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_ADDR[2]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_ADDR[3]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_ADDR[4]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_ADDR[5]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_ADDR[6]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_ADDR[7]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_ADDR[8]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_ADDR[9]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_ADDR[10]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_ADDR[11]} {adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_ADDR[12]}]]
connect_debug_port u_ila_0/probe3 [get_nets [list {adc_tech_i/bram_writer_0_dia[0]} {adc_tech_i/bram_writer_0_dia[1]} {adc_tech_i/bram_writer_0_dia[2]} {adc_tech_i/bram_writer_0_dia[3]} {adc_tech_i/bram_writer_0_dia[4]} {adc_tech_i/bram_writer_0_dia[5]} {adc_tech_i/bram_writer_0_dia[6]} {adc_tech_i/bram_writer_0_dia[7]} {adc_tech_i/bram_writer_0_dia[8]} {adc_tech_i/bram_writer_0_dia[9]} {adc_tech_i/bram_writer_0_dia[10]} {adc_tech_i/bram_writer_0_dia[11]} {adc_tech_i/bram_writer_0_dia[12]} {adc_tech_i/bram_writer_0_dia[13]} {adc_tech_i/bram_writer_0_dia[14]} {adc_tech_i/bram_writer_0_dia[15]} {adc_tech_i/bram_writer_0_dia[16]} {adc_tech_i/bram_writer_0_dia[17]} {adc_tech_i/bram_writer_0_dia[18]} {adc_tech_i/bram_writer_0_dia[19]} {adc_tech_i/bram_writer_0_dia[20]} {adc_tech_i/bram_writer_0_dia[21]} {adc_tech_i/bram_writer_0_dia[22]} {adc_tech_i/bram_writer_0_dia[23]} {adc_tech_i/bram_writer_0_dia[24]} {adc_tech_i/bram_writer_0_dia[25]} {adc_tech_i/bram_writer_0_dia[26]} {adc_tech_i/bram_writer_0_dia[27]} {adc_tech_i/bram_writer_0_dia[28]} {adc_tech_i/bram_writer_0_dia[29]} {adc_tech_i/bram_writer_0_dia[30]} {adc_tech_i/bram_writer_0_dia[31]}]]
connect_debug_port u_ila_0/probe4 [get_nets [list adc_tech_i/axi_bram_ctrl_0_BRAM_PORTA_CLK]]
connect_debug_port u_ila_0/probe5 [get_nets [list adc_tech_i/bram_writer_0_wea]]
connect_debug_port u_ila_0/probe6 [get_nets [list adc_tech_i/xlslice_4_Dout]]

set_property PACKAGE_PIN K19 [get_ports pulse_in_p0]
set_property IOSTANDARD LVDS [get_ports pulse_in_p0]
set_property IOSTANDARD LVDS [get_ports pulse_in_n0]
set_property PACKAGE_PIN L17 [get_ports pulse_in_p1]
set_property IOSTANDARD LVDS [get_ports pulse_in_p1]
set_property IOSTANDARD LVDS [get_ports pulse_in_n1]
set_property PACKAGE_PIN K17 [get_ports pulse_in_p2]
set_property IOSTANDARD LVDS [get_ports pulse_in_p2]
set_property IOSTANDARD LVDS [get_ports pulse_in_n2]
set_property PACKAGE_PIN H19 [get_ports pulse_in_p3]
set_property IOSTANDARD LVDS [get_ports pulse_in_p3]
set_property IOSTANDARD LVDS [get_ports pulse_in_n3]
set_property PACKAGE_PIN G15 [get_ports {debug0[0]}]
set_property PACKAGE_PIN F15 [get_ports {debug1[0]}]
set_property PACKAGE_PIN C13 [get_ports {debug2[0]}]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 2 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 32768 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list adc_tech_i/Processing_Subsystem/clk_wiz_0/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[0]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[1]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[2]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[3]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[4]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[5]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[6]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[7]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[8]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[9]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[10]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[11]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[12]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[13]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[14]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[15]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[16]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[17]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[18]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[19]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[20]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[21]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[22]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[23]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[24]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[25]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[26]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[27]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[28]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[29]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[30]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_DOUT[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 13 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_ADDR[0]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_ADDR[1]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_ADDR[2]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_ADDR[3]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_ADDR[4]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_ADDR[5]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_ADDR[6]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_ADDR[7]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_ADDR[8]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_ADDR[9]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_ADDR[10]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_ADDR[11]} {adc_tech_i/bram_tester/axi_bram_ctrl_0_BRAM_PORTA_ADDR[12]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 32 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {adc_tech_i/bram_tester/bram_writer_0_dia[0]} {adc_tech_i/bram_tester/bram_writer_0_dia[1]} {adc_tech_i/bram_tester/bram_writer_0_dia[2]} {adc_tech_i/bram_tester/bram_writer_0_dia[3]} {adc_tech_i/bram_tester/bram_writer_0_dia[4]} {adc_tech_i/bram_tester/bram_writer_0_dia[5]} {adc_tech_i/bram_tester/bram_writer_0_dia[6]} {adc_tech_i/bram_tester/bram_writer_0_dia[7]} {adc_tech_i/bram_tester/bram_writer_0_dia[8]} {adc_tech_i/bram_tester/bram_writer_0_dia[9]} {adc_tech_i/bram_tester/bram_writer_0_dia[10]} {adc_tech_i/bram_tester/bram_writer_0_dia[11]} {adc_tech_i/bram_tester/bram_writer_0_dia[12]} {adc_tech_i/bram_tester/bram_writer_0_dia[13]} {adc_tech_i/bram_tester/bram_writer_0_dia[14]} {adc_tech_i/bram_tester/bram_writer_0_dia[15]} {adc_tech_i/bram_tester/bram_writer_0_dia[16]} {adc_tech_i/bram_tester/bram_writer_0_dia[17]} {adc_tech_i/bram_tester/bram_writer_0_dia[18]} {adc_tech_i/bram_tester/bram_writer_0_dia[19]} {adc_tech_i/bram_tester/bram_writer_0_dia[20]} {adc_tech_i/bram_tester/bram_writer_0_dia[21]} {adc_tech_i/bram_tester/bram_writer_0_dia[22]} {adc_tech_i/bram_tester/bram_writer_0_dia[23]} {adc_tech_i/bram_tester/bram_writer_0_dia[24]} {adc_tech_i/bram_tester/bram_writer_0_dia[25]} {adc_tech_i/bram_tester/bram_writer_0_dia[26]} {adc_tech_i/bram_tester/bram_writer_0_dia[27]} {adc_tech_i/bram_tester/bram_writer_0_dia[28]} {adc_tech_i/bram_tester/bram_writer_0_dia[29]} {adc_tech_i/bram_tester/bram_writer_0_dia[30]} {adc_tech_i/bram_tester/bram_writer_0_dia[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 13 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {adc_tech_i/bram_tester/bram_writer_0_addra[0]} {adc_tech_i/bram_tester/bram_writer_0_addra[1]} {adc_tech_i/bram_tester/bram_writer_0_addra[2]} {adc_tech_i/bram_tester/bram_writer_0_addra[3]} {adc_tech_i/bram_tester/bram_writer_0_addra[4]} {adc_tech_i/bram_tester/bram_writer_0_addra[5]} {adc_tech_i/bram_tester/bram_writer_0_addra[6]} {adc_tech_i/bram_tester/bram_writer_0_addra[7]} {adc_tech_i/bram_tester/bram_writer_0_addra[8]} {adc_tech_i/bram_tester/bram_writer_0_addra[9]} {adc_tech_i/bram_tester/bram_writer_0_addra[10]} {adc_tech_i/bram_tester/bram_writer_0_addra[11]} {adc_tech_i/bram_tester/bram_writer_0_addra[12]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list adc_tech_i/bram_tester/bram_writer_0_wea]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list adc_tech_i/bram_tester/xlslice_4_Dout]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]

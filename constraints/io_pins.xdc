











set_property IOSTANDARD LVCMOS18 [get_ports pl_led0]
set_property IOSTANDARD LVCMOS18 [get_ports pl_led1]
set_property IOSTANDARD LVCMOS18 [get_ports pl_led2]
set_property IOSTANDARD LVCMOS18 [get_ports pl_led3]

set_property PACKAGE_PIN F17 [get_ports pl_led0]
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
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]

create_hw_axi_txn wr_zeros [get_hw_axis hw_axi_1] -address 80020000 -data 00000000 -type write

create_hw_axi_txn wr_enable [get_hw_axis hw_axi_1] -address 80020000 -data 804f0000 -type write

create_hw_axi_txn wr_ref [get_hw_axis hw_axi_1] -address 80020000 -data 80800001 -type write

create_hw_axi_txn wr_ext_ref [get_hw_axis hw_axi_1] -address 80020000 -data 80800000 -type write

create_hw_axi_txn wr_dac_chA [get_hw_axis hw_axi_1] -address 80020000 -data 803024dd -type write
create_hw_axi_txn wr_dac_chB [get_hw_axis hw_axi_1] -address 80020000 -data 803149ba -type write
create_hw_axi_txn wr_dac_chC [get_hw_axis hw_axi_1] -address 80020000 -data 80326e97 -type write
create_hw_axi_txn wr_dac_chD [get_hw_axis hw_axi_1] -address 80020000 -data 80339374 -type write


# Setup:
run_hw_axi wr_zeros
after 10

run_hw_axi wr_enable
after 10

run_hw_axi wr_zeros
after 10

run_hw_axi wr_ref
after 10


# Set DAC values:
run_hw_axi wr_zeros
after 10

run_hw_axi wr_dac_chA
after 10

run_hw_axi wr_zeros
after 10

run_hw_axi wr_dac_chB
after 10

run_hw_axi wr_zeros
after 10

run_hw_axi wr_dac_chC
after 10

run_hw_axi wr_zeros
after 10

run_hw_axi wr_dac_chD
after 10
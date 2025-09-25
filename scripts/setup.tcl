create_hw_axi_txn wr_zeros [get_hw_axis hw_axi_1] -address 80020000 -data 00000000 -type write

create_hw_axi_txn wr_enable [get_hw_axis hw_axi_1] -address 80020000 -data 814f0000 -type write

create_hw_axi_txn wr_dac_chA_1V [get_hw_axis hw_axi_1] -address 80020000 -data 81308e39 -type write

# Setup:
run_hw_axi wr_zeros
after 10

run_hw_axi wr_enable
after 10

# Set DAC values:
run_hw_axi wr_zeros
after 10

run_hw_axi wr_dac_chA_1V
after 10
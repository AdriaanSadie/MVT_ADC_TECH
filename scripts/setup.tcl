create_hw_axi_txn wr_zeros [get_hw_axis hw_axi_1] -address 80020000 -data 00000000 -type write

create_hw_axi_txn wr_enable [get_hw_axis hw_axi_1] -address 80020000 -data 814f0000 -type write



create_hw_axi_txn wr_dac_chA_0V1 [get_hw_axis hw_axi_1] -address 80020000 -data 81300e39 -type write
# create_hw_axi_txn wr_dac_chA_0V2 [get_hw_axis hw_axi_1] -address 80020000 -data 81301c72 -type write
# create_hw_axi_txn wr_dac_chA_0V3 [get_hw_axis hw_axi_1] -address 80020000 -data 81302aab -type write
# create_hw_axi_txn wr_dac_chA_0V4 [get_hw_axis hw_axi_1] -address 80020000 -data 813038e4 -type write
# create_hw_axi_txn wr_dac_chA_0V5 [get_hw_axis hw_axi_1] -address 80020000 -data 8130471C -type write
# create_hw_axi_txn wr_dac_chA_0V6 [get_hw_axis hw_axi_1] -address 80020000 -data 81305555 -type write
# create_hw_axi_txn wr_dac_chA_0V7 [get_hw_axis hw_axi_1] -address 80020000 -data 8130638e -type write
# create_hw_axi_txn wr_dac_chA_0V8 [get_hw_axis hw_axi_1] -address 80020000 -data 813071c7 -type write
# create_hw_axi_txn wr_dac_chA_0V9 [get_hw_axis hw_axi_1] -address 80020000 -data 81308000 -type write
# create_hw_axi_txn wr_dac_chA_1V0 [get_hw_axis hw_axi_1] -address 80020000 -data 81308e39 -type write
# create_hw_axi_txn wr_dac_chA_1V1 [get_hw_axis hw_axi_1] -address 80020000 -data 81309c72 -type write
# create_hw_axi_txn wr_dac_chA_1V2 [get_hw_axis hw_axi_1] -address 80020000 -data 8130aaab -type write
# create_hw_axi_txn wr_dac_chA_1V3 [get_hw_axis hw_axi_1] -address 80020000 -data 8130b8e4 -type write
# create_hw_axi_txn wr_dac_chA_1V4 [get_hw_axis hw_axi_1] -address 80020000 -data 8130c71c -type write
# create_hw_axi_txn wr_dac_chA_1V5 [get_hw_axis hw_axi_1] -address 80020000 -data 8130D555 -type write
# create_hw_axi_txn wr_dac_chA_1V6 [get_hw_axis hw_axi_1] -address 80020000 -data 8130e38e -type write
# create_hw_axi_txn wr_dac_chA_1V7 [get_hw_axis hw_axi_1] -address 80020000 -data 8130f1c7 -type write


# Setup:
run_hw_axi wr_zeros
after 10

run_hw_axi wr_enable
after 10

# Set DAC values:
run_hw_axi wr_zeros
after 10

run_hw_axi wr_dac_chA_0V1
# run_hw_axi wr_dac_chA_0V2
# run_hw_axi wr_dac_chA_0V3
# run_hw_axi wr_dac_chA_0V4
# run_hw_axi wr_dac_chA_0V5
# run_hw_axi wr_dac_chA_0V6
# run_hw_axi wr_dac_chA_0V7
# run_hw_axi wr_dac_chA_0V8
# run_hw_axi wr_dac_chA_0V9
# run_hw_axi wr_dac_chA_1V0
# run_hw_axi wr_dac_chA_1V1
# run_hw_axi wr_dac_chA_1V2
# run_hw_axi wr_dac_chA_1V3
# run_hw_axi wr_dac_chA_1V4
# run_hw_axi wr_dac_chA_1V5
# run_hw_axi wr_dac_chA_1V6
# run_hw_axi wr_dac_chA_1V7

after 10


# Start counter process:
create_hw_axi_txn wr_bram_f [get_hw_axis hw_axi_1] -address 80030000 -data ffffffff -type write
run_hw_axi wr_bram_f

after 10

# BRAM DAC 
create_hw_axi_txn rd_dac_bram [get_hw_axis hw_axi_1] -address 84000000 -type read -len 128
run_hw_axi rd_dac_bram
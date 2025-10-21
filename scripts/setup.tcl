# Prime the axi GPIO with zeros:

create_hw_axi_txn wr_zeros [get_hw_axis hw_axi_1] -address 80020000 -data 00000000 -type write
run_hw_axi wr_zeros
after 100


# Setup both DACs:
# ----------------------------------------------------------------------------------------------------------
# DAC 1:

create_hw_axi_txn wr_enable_1 [get_hw_axis hw_axi_1] -address 80020000 -data 804f0000 -type write
run_hw_axi wr_enable_1
after 100
run_hw_axi wr_zeros
after 100

# DAC 2:
create_hw_axi_txn wr_enable_2 [get_hw_axis hw_axi_1] -address 80020000 -data 814f0000 -type write
run_hw_axi wr_enable_2
after 100
run_hw_axi wr_zeros
after 100
# ----------------------------------------------------------------------------------------------------------


# Setup 16 channels with 0.1V steps
# ----------------------------------------------------------------------------------------------------------

create_hw_axi_txn wr_dac1_chA_0V1 [get_hw_axis hw_axi_1] -address 80020000 -data 80300E39 -type write
run_hw_axi wr_dac1_chA_0V1
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac1_chB_0V2 [get_hw_axis hw_axi_1] -address 80020000 -data 80311C72 -type write
run_hw_axi wr_dac1_chB_0V2
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac1_chC_0V3 [get_hw_axis hw_axi_1] -address 80020000 -data 80322AAB -type write
run_hw_axi wr_dac1_chC_0V3
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac1_chD_0V4 [get_hw_axis hw_axi_1] -address 80020000 -data 803338E4 -type write
run_hw_axi wr_dac1_chD_0V4
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac1_chE_0V5 [get_hw_axis hw_axi_1] -address 80020000 -data 8034471C -type write
run_hw_axi wr_dac1_chE_0V5
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac1_chF_0V6 [get_hw_axis hw_axi_1] -address 80020000 -data 80355555 -type write
run_hw_axi wr_dac1_chF_0V6
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac1_chG_0V7 [get_hw_axis hw_axi_1] -address 80020000 -data 8036638E -type write
run_hw_axi wr_dac1_chG_0V7
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac1_chH_0V8 [get_hw_axis hw_axi_1] -address 80020000 -data 803771C7 -type write
run_hw_axi wr_dac1_chH_0V8
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac2_chA_0V9 [get_hw_axis hw_axi_1] -address 80020000 -data 81308000 -type write
run_hw_axi wr_dac2_chA_0V9
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac2_chB_1V0 [get_hw_axis hw_axi_1] -address 80020000 -data 81318E39 -type write
run_hw_axi wr_dac2_chB_1V0
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac2_chC_1V1 [get_hw_axis hw_axi_1] -address 80020000 -data 81329C72 -type write
run_hw_axi wr_dac2_chC_1V1
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac2_chD_1V2 [get_hw_axis hw_axi_1] -address 80020000 -data 8133AAAB -type write
run_hw_axi wr_dac2_chD_1V2
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac2_chE_1V3 [get_hw_axis hw_axi_1] -address 80020000 -data 8134B8E4 -type write
run_hw_axi wr_dac2_chE_1V3
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac2_chF_1V4 [get_hw_axis hw_axi_1] -address 80020000 -data 8135C71C -type write
run_hw_axi wr_dac2_chF_1V4
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac2_chG_1V5 [get_hw_axis hw_axi_1] -address 80020000 -data 8136D555 -type write
run_hw_axi wr_dac2_chG_1V5
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac2_chH_1V6 [get_hw_axis hw_axi_1] -address 80020000 -data 8137E38E -type write
run_hw_axi wr_dac2_chH_1V6
after 100
run_hw_axi wr_zeros
after 100
# ----------------------------------------------------------------------------------------------------------



# Counter Processes Control:
# ----------------------------------------------------------------------------------------------------------

# Start counter process (Rising edge counter):
# create_hw_axi_txn wr_bram_f [get_hw_axis hw_axi_1] -address 80030000 -data 0000000A -type write
# run_hw_axi wr_bram_f

# Start counter process (Falling edge counter):
#create_hw_axi_txn wr_bram_f [get_hw_axis hw_axi_1] -address 80030000 -data 0000000f -type write
#run_hw_axi wr_bram_f

after 100

# BRAM DAC 
# create_hw_axi_txn rd_dac_bram [get_hw_axis hw_axi_1] -address 84000000 -type read -len 128
# run_hw_axi rd_dac_bram
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


# Set one of the test voltages for DAC 0, Channel A (Bit 0):
# ----------------------------------------------------------------------------------------------------------

# create_hw_axi_txn wr_dac0_chA_0V4 [get_hw_axis hw_axi_1] -address 80020000 -data 803038E4 -type write
# # create_hw_axi_txn wr_dac0_chA_0V9 [get_hw_axis hw_axi_1] -address 80020000 -data 80308000 -type write
# # create_hw_axi_txn wr_dac0_chA_1V4 [get_hw_axis hw_axi_1] -address 80020000 -data 8030C71C -type write
# run_hw_axi wr_dac0_chA_0V4
# # run_hw_axi wr_dac0_chA_0V9
# # run_hw_axi wr_dac0_chA_1V4
# after 100
# run_hw_axi wr_zeros
# after 100

# ----------------------------------------------------------------------------------------------------------


# Set one of the test voltages for DAC 0, Channel E (Bit 5):
# ----------------------------------------------------------------------------------------------------------

# create_hw_axi_txn wr_dac0_chE_0V4 [get_hw_axis hw_axi_1] -address 80020000 -data 803438E4 -type write
# # create_hw_axi_txn wr_dac0_chE_0V9 [get_hw_axis hw_axi_1] -address 80020000 -data 80348000 -type write
# # create_hw_axi_txn wr_dac0_chE_1V4 [get_hw_axis hw_axi_1] -address 80020000 -data 8034C71C -type write
# run_hw_axi wr_dac0_chE_0V4
# # run_hw_axi wr_dac0_chE_0V9
# # run_hw_axi wr_dac0_chE_1V4
# after 100
# run_hw_axi wr_zeros
# after 100

# ----------------------------------------------------------------------------------------------------------


# Set one of the test voltages for DAC 1, Channel C (Bit 10):
# ----------------------------------------------------------------------------------------------------------

# # create_hw_axi_txn wr_dac1_chC_0V4 [get_hw_axis hw_axi_1] -address 80020000 -data 813238E4 -type write
# # create_hw_axi_txn wr_dac1_chC_0V9 [get_hw_axis hw_axi_1] -address 80020000 -data 81328000 -type write
# create_hw_axi_txn wr_dac1_chC_1V4 [get_hw_axis hw_axi_1] -address 80020000 -data 8132C71C -type write
# # run_hw_axi wr_dac1_chC_0V4
# # run_hw_axi wr_dac1_chC_0V9
# run_hw_axi wr_dac1_chC_1V4
# after 100
# run_hw_axi wr_zeros
# after 100

# ----------------------------------------------------------------------------------------------------------



# Compensation. Look at Bit 0, 5 and 10, only at 0.9V each, but compensated values:
# ----------------------------------------------------------------------------------------------------------

# create_hw_axi_txn wr_dac0_chA_0V9 [get_hw_axis hw_axi_1] -address 80020000 -data 80308411 -type write
# create_hw_axi_txn wr_dac0_chE_0V9 [get_hw_axis hw_axi_1] -address 80020000 -data 80348275 -type write
create_hw_axi_txn wr_dac1_chC_0V9 [get_hw_axis hw_axi_1] -address 80020000 -data 813282F3 -type write
# run_hw_axi wr_dac0_chA_0V9
# run_hw_axi wr_dac0_chE_0V9
run_hw_axi wr_dac1_chC_0V9
after 100
run_hw_axi wr_zeros
after 100

# ----------------------------------------------------------------------------------------------------------






# Counter Processes Control:
# ----------------------------------------------------------------------------------------------------------

# Start counter process (Rising edge counter):
create_hw_axi_txn wr_bram_f [get_hw_axis hw_axi_1] -address 80030000 -data 0000000A -type write 
# create_hw_axi_txn wr_bram_f [get_hw_axis hw_axi_1] -address 80030000 -data 0004000A -type write
# create_hw_axi_txn wr_bram_f [get_hw_axis hw_axi_1] -address 80030000 -data 000A000A -type write
run_hw_axi wr_bram_f

# Start counter process (Falling edge counter):
# create_hw_axi_txn wr_bram_f [get_hw_axis hw_axi_1] -address 80030000 -data 0000000f -type write
#create_hw_axi_txn wr_bram_f [get_hw_axis hw_axi_1] -address 80030000 -data 0004000f -type write
# create_hw_axi_txn wr_bram_f [get_hw_axis hw_axi_1] -address 80030000 -data 000A000f -type write
# run_hw_axi wr_bram_f

after 32000

# BRAM DAC 
create_hw_axi_txn rd_dac_bram [get_hw_axis hw_axi_1] -address 84000000 -type read -len 128
run_hw_axi rd_dac_bram
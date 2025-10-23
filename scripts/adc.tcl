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

create_hw_axi_txn wr_dac1_chA_0V1 [get_hw_axis hw_axi_1] -address 80020000 -data 80300F61 -type write
run_hw_axi wr_dac1_chA_0V1
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac1_chB_0V2 [get_hw_axis hw_axi_1] -address 80020000 -data 80311EC1 -type write
run_hw_axi wr_dac1_chB_0V2
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac1_chC_0V3 [get_hw_axis hw_axi_1] -address 80020000 -data 80322E22 -type write
run_hw_axi wr_dac1_chC_0V3
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac1_chD_0V4 [get_hw_axis hw_axi_1] -address 80020000 -data 80333D83 -type write
run_hw_axi wr_dac1_chD_0V4
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac1_chE_0V5 [get_hw_axis hw_axi_1] -address 80020000 -data 80344CE4 -type write
run_hw_axi wr_dac1_chE_0V5
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac1_chF_0V6 [get_hw_axis hw_axi_1] -address 80020000 -data 80355C44 -type write
run_hw_axi wr_dac1_chF_0V6
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac1_chG_0V7 [get_hw_axis hw_axi_1] -address 80020000 -data 80366BA5 -type write
run_hw_axi wr_dac1_chG_0V7
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac1_chH_0V8 [get_hw_axis hw_axi_1] -address 80020000 -data 80377B06 -type write
run_hw_axi wr_dac1_chH_0V8
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac2_chA_0V9 [get_hw_axis hw_axi_1] -address 80020000 -data 81308A66 -type write
run_hw_axi wr_dac2_chA_0V9
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac2_chB_1V0 [get_hw_axis hw_axi_1] -address 80020000 -data 813199C7 -type write
run_hw_axi wr_dac2_chB_1V0
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac2_chC_1V1 [get_hw_axis hw_axi_1] -address 80020000 -data 8132A928 -type write
run_hw_axi wr_dac2_chC_1V1
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac2_chD_1V2 [get_hw_axis hw_axi_1] -address 80020000 -data 8133B889 -type write
run_hw_axi wr_dac2_chD_1V2
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac2_chE_1V3 [get_hw_axis hw_axi_1] -address 80020000 -data 8134C7E9 -type write
run_hw_axi wr_dac2_chE_1V3
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac2_chF_1V4 [get_hw_axis hw_axi_1] -address 80020000 -data 8135D74A -type write
run_hw_axi wr_dac2_chF_1V4
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac2_chG_1V5 [get_hw_axis hw_axi_1] -address 80020000 -data 8136E6AB -type write
run_hw_axi wr_dac2_chG_1V5
after 100
run_hw_axi wr_zeros
after 100
create_hw_axi_txn wr_dac2_chH_1V6 [get_hw_axis hw_axi_1] -address 80020000 -data 8137F60B -type write
run_hw_axi wr_dac2_chH_1V6
after 100
run_hw_axi wr_zeros
after 100
# ----------------------------------------------------------------------------------------------------------



# Read ADC from BRAM:
# ----------------------------------------------------------------------------------------------------------

# Enable the ADC acquisition blocks to start capturing data:
create_hw_axi_txn wr_adc_bram_en [get_hw_axis hw_axi_1] -address 80010000 -data ffffffff -type write
run_hw_axi wr_adc_bram_en

after 100

# Read data from the ADC BRAM: 
create_hw_axi_txn rd_adc_bram [get_hw_axis hw_axi_1] -address 86000000 -type read -len 128
run_hw_axi rd_adc_bram
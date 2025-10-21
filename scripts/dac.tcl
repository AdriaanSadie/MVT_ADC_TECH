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

#Channel A 0.1V
#create_hw_axi_txn wr_dac_chA [get_hw_axis hw_axi_1] -address 80020000 -data 80300E39 -type write

#Channel B 0.2V
#create_hw_axi_txn wr_dac_chB [get_hw_axis hw_axi_1] -address 80020000 -data 80311C72 -type write

#Channel C 0.3V
#create_hw_axi_txn wr_dac_chC [get_hw_axis hw_axi_1] -address 80020000 -data 80322AAB -type write

#Channel D 0.4V
#create_hw_axi_txn wr_dac_chD [get_hw_axis hw_axi_1] -address 80020000 -data 803338E4 -type write

#LEDs
#create_hw_axi_txn wr_leds_f [get_hw_axis hw_axi_1] -address 80000000 -data ffffffff -type write
#create_hw_axi_txn wr_leds_0 [get_hw_axis hw_axi_1] -address 80000000 -data 00000000 -type write

create_hw_axi_txn wr_dac_chA1 [get_hw_axis hw_axi_1] -address 80020000 -data 81300E39 -type write
create_hw_axi_txn wr_dac_chA2 [get_hw_axis hw_axi_1] -address 80020000 -data 81301C72 -type write
create_hw_axi_txn wr_dac_chA3 [get_hw_axis hw_axi_1] -address 80020000 -data 81302AAB -type write
create_hw_axi_txn wr_dac_chA4 [get_hw_axis hw_axi_1] -address 80020000 -data 813038E4 -type write
create_hw_axi_txn wr_dac_chA5 [get_hw_axis hw_axi_1] -address 80020000 -data 8130471C -type write
create_hw_axi_txn wr_dac_chA6 [get_hw_axis hw_axi_1] -address 80020000 -data 81305555 -type write
create_hw_axi_txn wr_dac_chA7 [get_hw_axis hw_axi_1] -address 80020000 -data 8130638E -type write
create_hw_axi_txn wr_dac_chA8 [get_hw_axis hw_axi_1] -address 80020000 -data 813071C7 -type write
create_hw_axi_txn wr_dac_chA9 [get_hw_axis hw_axi_1] -address 80020000 -data 81308000 -type write
create_hw_axi_txn wr_dac_chA10 [get_hw_axis hw_axi_1] -address 80020000 -data 81308E39 -type write
create_hw_axi_txn wr_dac_chA11 [get_hw_axis hw_axi_1] -address 80020000 -data 81309C72 -type write
create_hw_axi_txn wr_dac_chA12 [get_hw_axis hw_axi_1] -address 80020000 -data 8130AAAB -type write
create_hw_axi_txn wr_dac_chA13 [get_hw_axis hw_axi_1] -address 80020000 -data 8130B8E4 -type write
create_hw_axi_txn wr_dac_chA14 [get_hw_axis hw_axi_1] -address 80020000 -data 8130C71C -type write
create_hw_axi_txn wr_dac_chA15 [get_hw_axis hw_axi_1] -address 80020000 -data 8130D555 -type write
create_hw_axi_txn wr_dac_chA16 [get_hw_axis hw_axi_1] -address 80020000 -data 8130E38E -type write
create_hw_axi_txn wr_dac_chA17 [get_hw_axis hw_axi_1] -address 80020000 -data 8130F1C7 -type write
create_hw_axi_txn wr_dac_chA18 [get_hw_axis hw_axi_1] -address 80020000 -data 8130FFFF -type write




#Reading the calibration counter:
create_hw_axi_txn rd_dac_count [get_hw_axis hw_axi_1] -address 80040000 -type read

create_hw_axi_txn rd_dac_control [get_hw_axis hw_axi_1] -address 80030000 -type read



# BRAM tcl

create_hw_axi_txn wr_bram_f [get_hw_axis hw_axi_1] -address 80050000 -data ffffffff -type write
create_hw_axi_txn wr_bram_0 [get_hw_axis hw_axi_1] -address 80050000 -data 00000000 -type write


create_hw_axi_txn rd_bram_control [get_hw_axis hw_axi_1] -address 0x82000000 -type read -len 4
run_hw_axi rd_bram_control
set data_list [get_property DATA rd_bram_control]
set dec_list {}
foreach val $data_list {
    set dec_val [expr 0x$val]
    lappend dec_list $dec_val
}
puts $dec_list
set fp [open "bram_dump.csv" w]
foreach val $data_list {
    set dec_val [expr 0x$val]
    puts $fp $dec_val
}
close $fp

run_hw_axi wr_bram_f
run_hw_axi rd_bram_control






# BRAM DAC 

create_hw_axi_txn rd_dac_bram [get_hw_axis hw_axi_1] -address 84000000 -type read -len 128
















# BACKUP:::




# Prime the axi GPIO with zeros:

create_hw_axi_txn wr_zeros [get_hw_axis hw_axi_1] -address 80020000 -data 00000000 -type write
run_hw_axi wr_zeros
after 10


# Setup both DACs:
# ----------------------------------------------------------------------------------------------------------
# DAC 1:

create_hw_axi_txn wr_enable_1 [get_hw_axis hw_axi_1] -address 80020000 -data 814f0000 -type write
run_hw_axi wr_enable_1
after 10
run_hw_axi wr_zeros
after 10

# DAC 2:
create_hw_axi_txn wr_enable_2 [get_hw_axis hw_axi_1] -address 80020000 -data 804f0000 -type write
run_hw_axi wr_enable_2
after 10
run_hw_axi wr_zeros
after 10
# ----------------------------------------------------------------------------------------------------------


# Setup 16 channels with 0.1V steps
# ----------------------------------------------------------------------------------------------------------

create_hw_axi_txn wr_dac1_chA_0V1 [get_hw_axis hw_axi_1] -address 80020000 -data 80300E39 -type write
run_hw_axi wr_dac1_chA_0V1
after 10
run_hw_axi wr_zeros
after 10
create_hw_axi_txn wr_dac1_chB_0V2 [get_hw_axis hw_axi_1] -address 80020000 -data 80311C72 -type write
run_hw_axi wr_dac1_chB_0V2
after 10
run_hw_axi wr_zeros
after 10
create_hw_axi_txn wr_dac1_chC_0V3 [get_hw_axis hw_axi_1] -address 80020000 -data 80322AAB -type write
run_hw_axi wr_dac1_chC_0V3
after 10
run_hw_axi wr_zeros
after 10
create_hw_axi_txn wr_dac1_chD_0V4 [get_hw_axis hw_axi_1] -address 80020000 -data 803338E4 -type write
run_hw_axi wr_dac1_chD_0V4
after 10
run_hw_axi wr_zeros
after 10
create_hw_axi_txn wr_dac1_chE_0V5 [get_hw_axis hw_axi_1] -address 80020000 -data 8034471C -type write
run_hw_axi wr_dac1_chE_0V5
after 10
run_hw_axi wr_zeros
after 10
create_hw_axi_txn wr_dac1_chF_0V6 [get_hw_axis hw_axi_1] -address 80020000 -data 80355555 -type write
run_hw_axi wr_dac1_chF_0V6
after 10
run_hw_axi wr_zeros
after 10
create_hw_axi_txn wr_dac1_chG_0V7 [get_hw_axis hw_axi_1] -address 80020000 -data 8036638E -type write
run_hw_axi wr_dac1_chG_0V7
after 10
run_hw_axi wr_zeros
after 10
create_hw_axi_txn wr_dac1_chH_0V8 [get_hw_axis hw_axi_1] -address 80020000 -data 803771C7 -type write
run_hw_axi wr_dac1_chH_0V8
after 10
run_hw_axi wr_zeros
after 10
create_hw_axi_txn wr_dac2_chA_0V9 [get_hw_axis hw_axi_1] -address 80020000 -data 81308000 -type write
run_hw_axi wr_dac2_chA_0V9
after 10
run_hw_axi wr_zeros
after 10
create_hw_axi_txn wr_dac2_chB_1V0 [get_hw_axis hw_axi_1] -address 80020000 -data 81318E39 -type write
run_hw_axi wr_dac2_chB_1V0
after 10
run_hw_axi wr_zeros
after 10
create_hw_axi_txn wr_dac2_chC_1V1 [get_hw_axis hw_axi_1] -address 80020000 -data 81329C72 -type write
run_hw_axi wr_dac2_chC_1V1
after 10
run_hw_axi wr_zeros
after 10
create_hw_axi_txn wr_dac2_chD_1V2 [get_hw_axis hw_axi_1] -address 80020000 -data 8133AAAB -type write
run_hw_axi wr_dac2_chD_1V2
after 10
run_hw_axi wr_zeros
after 10
create_hw_axi_txn wr_dac2_chE_1V3 [get_hw_axis hw_axi_1] -address 80020000 -data 8134B8E4 -type write
run_hw_axi wr_dac2_chE_1V3
after 10
run_hw_axi wr_zeros
after 10
create_hw_axi_txn wr_dac2_chF_1V4 [get_hw_axis hw_axi_1] -address 80020000 -data 8135C71C -type write
run_hw_axi wr_dac2_chF_1V4
after 10
run_hw_axi wr_zeros
after 10
create_hw_axi_txn wr_dac2_chG_1V5 [get_hw_axis hw_axi_1] -address 80020000 -data 8136D555 -type write
run_hw_axi wr_dac2_chG_1V5
after 10
run_hw_axi wr_zeros
after 10
create_hw_axi_txn wr_dac2_chH_1V6 [get_hw_axis hw_axi_1] -address 80020000 -data 8137E38E -type write
run_hw_axi wr_dac2_chH_1V6
after 10
run_hw_axi wr_zeros
after 10
# ----------------------------------------------------------------------------------------------------------



# Counter Processes Control:
# ----------------------------------------------------------------------------------------------------------

# Start counter process (Rising edge counter):
create_hw_axi_txn wr_bram_f [get_hw_axis hw_axi_1] -address 80030000 -data 0000000A -type write
run_hw_axi wr_bram_f

# Start counter process (Falling edge counter):
#create_hw_axi_txn wr_bram_f [get_hw_axis hw_axi_1] -address 80030000 -data 0000000f -type write
#run_hw_axi wr_bram_f

after 10

# BRAM DAC 
create_hw_axi_txn rd_dac_bram [get_hw_axis hw_axi_1] -address 84000000 -type read -len 128
run_hw_axi rd_dac_bram


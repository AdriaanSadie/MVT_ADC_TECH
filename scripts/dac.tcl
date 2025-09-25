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















# AXI IIC Core tcl script
#
# Base address: 80010000
#
# Register Space:
#
# Control Register : 0x100
# Status Register : 0x104
# Transmit Fifo : 0x108
#-------------------------------------------------------------


# Reset TX FIFO:
create_hw_axi_txn wr_tx_fifo_reset [get_hw_axis hw_axi_1] -address 80010100 -data 00000002 -type write

# Enable AXI IIC, Enable Transmit, De-assert TX fifo reset:
create_hw_axi_txn wr_iic_enable [get_hw_axis hw_axi_1] -address 80010100 -data 00000009 -type write

# Create start condition:
# Bit 8 - Start condition
# Bits 7:1 - device address
# Bit 0 - Write access
create_hw_axi_txn wr_start [get_hw_axis hw_axi_1] -address 80010108 -data 000001A8 -type write

# Write the command:
create_hw_axi_txn wr_cmd [get_hw_axis hw_axi_1] -address 80010108 -data 0000004F -type write

# Write some data:
create_hw_axi_txn wr_data1 [get_hw_axis hw_axi_1] -address 80010108 -data 00000065 -type write

# Write some data (and stop bit):
create_hw_axi_txn wr_data2 [get_hw_axis hw_axi_1] -address 80010108 -data 00000243 -type write

# Write some data:
#create_hw_axi_txn wr_data4 [get_hw_axis hw_axi_1] -address 80010108 -data 00000021 -type write

# Create stop condition:
#create_hw_axi_txn wr_stop [get_hw_axis hw_axi_1] -address 80010108 -data 00000200 -type write

# run commands:

run_hw_axi wr_tx_fifo_reset wr_iic_enable wr_start wr_cmd wr_data1 wr_data2 -queue
# run_hw_axi wr_iic_enable wr_start -queue







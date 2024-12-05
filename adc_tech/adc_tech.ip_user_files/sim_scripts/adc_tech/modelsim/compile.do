vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_8
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_8
vlib modelsim_lib/msim/jtag_axi
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_24
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_22
vlib modelsim_lib/msim/fifo_generator_v13_2_5
vlib modelsim_lib/msim/axi_data_fifo_v2_1_21
vlib modelsim_lib/msim/axi_crossbar_v2_1_23
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_22

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 modelsim_lib/msim/axi_vip_v1_1_8
vmap zynq_ultra_ps_e_vip_v1_0_8 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_8
vmap jtag_axi modelsim_lib/msim/jtag_axi
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_24 modelsim_lib/msim/axi_gpio_v2_0_24
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_22 modelsim_lib/msim/axi_register_slice_v2_1_22
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_21 modelsim_lib/msim/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 modelsim_lib/msim/axi_crossbar_v2_1_23
vmap axi_protocol_converter_v2_1_22 modelsim_lib/msim/axi_protocol_converter_v2_1_22

vlog -work xilinx_vip  -incr -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vitis/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vitis/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vitis/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_proc_sys_reset_0_0/sim/adc_tech_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_clk_wiz_0_0/adc_tech_clk_wiz_0_0_clk_wiz.v" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_clk_wiz_0_0/adc_tech_clk_wiz_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -incr "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -incr -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_8  -incr -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_zynq_ultra_ps_e_0_0/sim/adc_tech_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work jtag_axi  -incr "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/a8d1/hdl/jtag_axi_v1_2_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_jtag_axi_0_0/sim/adc_tech_jtag_axi_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_24  -93 \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_axi_gpio_0_0/sim/adc_tech_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_data_splitter_0_0/sim/adc_tech_data_splitter_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_util_ds_buf_0_2/util_ds_buf.vhd" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_util_ds_buf_0_2/sim/adc_tech_util_ds_buf_0_2.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -incr "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -incr "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -incr "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -incr "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  -incr "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_xbar_0/sim/adc_tech_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_22  -incr "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/d0f7" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/1b7e/hdl/verilog" "+incdir+../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_auto_pc_0/sim/adc_tech_auto_pc_0.v" \
"../../../../adc_tech.gen/sources_1/bd/adc_tech/sim/adc_tech.v" \

vlog -work xil_defaultlib \
"glbl.v"


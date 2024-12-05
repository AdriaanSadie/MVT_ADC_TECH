-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vitis/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vitis/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vitis/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vitis/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_proc_sys_reset_0_0/sim/adc_tech_proc_sys_reset_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_clk_wiz_0_0/adc_tech_clk_wiz_0_0_clk_wiz.v" \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_clk_wiz_0_0/adc_tech_clk_wiz_0_0.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_8 -sv \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/zynq_ultra_ps_e_vip_v1_0_8 -sv \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/da1e/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_zynq_ultra_ps_e_0_0/sim/adc_tech_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
-endlib
-makelib ies_lib/jtag_axi \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/a8d1/hdl/jtag_axi_v1_2_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_jtag_axi_0_0/sim/adc_tech_jtag_axi_0_0.v" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_24 \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_axi_gpio_0_0/sim/adc_tech_axi_gpio_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_data_splitter_0_0/sim/adc_tech_data_splitter_0_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_util_ds_buf_0_2/util_ds_buf.vhd" \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_util_ds_buf_0_2/sim/adc_tech_util_ds_buf_0_2.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_22 \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_21 \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_23 \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_xbar_0/sim/adc_tech_xbar_0.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_22 \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/ip/adc_tech_auto_pc_0/sim/adc_tech_auto_pc_0.v" \
  "../../../../adc_tech.gen/sources_1/bd/adc_tech/sim/adc_tech.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


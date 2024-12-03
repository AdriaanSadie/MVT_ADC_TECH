transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/work/Technology/Vivado/adc_mvt/adc_mvt.cache/compile_simlib/activehdl}
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_14
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_14
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/xlconcat_v2_1_4
vlib activehdl/xlconstant_v1_1_7
vlib activehdl/xlslice_v1_0_2
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/c_reg_fd_v12_0_6
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_dsp48_addsub_v3_0_6
vlib activehdl/xbip_addsub_v3_0_6
vlib activehdl/c_addsub_v12_0_15
vlib activehdl/c_gate_bit_v12_0_6
vlib activehdl/xbip_counter_v3_0_6
vlib activehdl/c_counter_binary_v12_0_16

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 -l xlslice_v1_0_2 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l c_gate_bit_v12_0_6 -l xbip_counter_v3_0_6 -l c_counter_binary_v12_0_16 \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/ec67/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/f805/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 -l xlslice_v1_0_2 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l c_gate_bit_v12_0_6 -l xbip_counter_v3_0_6 -l c_counter_binary_v12_0_16 \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/ec67/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/f805/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 -l xlslice_v1_0_2 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l c_gate_bit_v12_0_6 -l xbip_counter_v3_0_6 -l c_counter_binary_v12_0_16 \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_14  -sv2k12 "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/ec67/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/f805/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 -l xlslice_v1_0_2 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l c_gate_bit_v12_0_6 -l xbip_counter_v3_0_6 -l c_counter_binary_v12_0_16 \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_14  -sv2k12 "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/ec67/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/f805/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 -l xlslice_v1_0_2 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l c_gate_bit_v12_0_6 -l xbip_counter_v3_0_6 -l c_counter_binary_v12_0_16 \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/f805/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/ec67/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/f805/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 -l xlslice_v1_0_2 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l c_gate_bit_v12_0_6 -l xbip_counter_v3_0_6 -l c_counter_binary_v12_0_16 \
"../../../bd/mvt_top/ip/mvt_top_zynq_ultra_ps_e_0_0/sim/mvt_top_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/mvt_top/ip/mvt_top_clk_wiz_0_0/mvt_top_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/mvt_top/ip/mvt_top_clk_wiz_0_0/mvt_top_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/mvt_top/ip/mvt_top_proc_sys_reset_0_0/sim/mvt_top_proc_sys_reset_0_0.vhd" \
"../../../bd/mvt_top/ip/mvt_top_util_ds_buf_0_0/util_ds_buf.vhd" \
"../../../bd/mvt_top/ip/mvt_top_util_ds_buf_0_0/sim/mvt_top_util_ds_buf_0_0.vhd" \
"../../../bd/mvt_top/ip/mvt_top_util_ds_buf_0_1/sim/mvt_top_util_ds_buf_0_1.vhd" \
"../../../bd/mvt_top/ip/mvt_top_util_ds_buf_0_2/sim/mvt_top_util_ds_buf_0_2.vhd" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/ec67/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/f805/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 -l xlslice_v1_0_2 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l c_gate_bit_v12_0_6 -l xbip_counter_v3_0_6 -l c_counter_binary_v12_0_16 \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/ec67/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/f805/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 -l xlslice_v1_0_2 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l c_gate_bit_v12_0_6 -l xbip_counter_v3_0_6 -l c_counter_binary_v12_0_16 \
"../../../bd/mvt_top/ip/mvt_top_xlconcat_0_0/sim/mvt_top_xlconcat_0_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/ec67/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/f805/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 -l xlslice_v1_0_2 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l c_gate_bit_v12_0_6 -l xbip_counter_v3_0_6 -l c_counter_binary_v12_0_16 \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/ec67/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/f805/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 -l xlslice_v1_0_2 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l c_gate_bit_v12_0_6 -l xbip_counter_v3_0_6 -l c_counter_binary_v12_0_16 \
"../../../bd/mvt_top/ip/mvt_top_xlconstant_0_0/sim/mvt_top_xlconstant_0_0.v" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/ec67/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/f805/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 -l xlslice_v1_0_2 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l c_gate_bit_v12_0_6 -l xbip_counter_v3_0_6 -l c_counter_binary_v12_0_16 \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/ec67/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/f805/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 -l xlslice_v1_0_2 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l c_gate_bit_v12_0_6 -l xbip_counter_v3_0_6 -l c_counter_binary_v12_0_16 \
"../../../bd/mvt_top/ip/mvt_top_xlslice_0_1/sim/mvt_top_xlslice_0_1.v" \

vcom -work xbip_utils_v3_0_10 -93  \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -93  \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93  \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/5a54/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -93  \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_15 -93  \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/6b20/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_6 -93  \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/7161/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_6 -93  \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/9ac8/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_16 -93  \
"../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/5421/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/mvt_top/ip/mvt_top_c_counter_binary_0_1/sim/mvt_top_c_counter_binary_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/ec67/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/f805/hdl" "+incdir+../../../../adc_mvt.gen/sources_1/bd/mvt_top/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 -l xlslice_v1_0_2 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l c_gate_bit_v12_0_6 -l xbip_counter_v3_0_6 -l c_counter_binary_v12_0_16 \
"../../../bd/mvt_top/ip/mvt_top_xlslice_0_2/sim/mvt_top_xlslice_0_2.v" \
"../../../bd/mvt_top/ip/mvt_top_xlslice_1_0/sim/mvt_top_xlslice_1_0.v" \
"../../../bd/mvt_top/ip/mvt_top_xlslice_1_1/sim/mvt_top_xlslice_1_1.v" \
"../../../bd/mvt_top/sim/mvt_top.v" \

vlog -work xil_defaultlib \
"glbl.v"


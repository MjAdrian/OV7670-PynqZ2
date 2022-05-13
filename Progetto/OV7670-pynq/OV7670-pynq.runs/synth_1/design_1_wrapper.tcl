# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.cache/wt [current_project]
set_property parent.project_path C:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part tul.com.tw:pynq-z2:part0:1.0 [current_project]
set_property ip_repo_paths {
  c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/vivado-library-master
  c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/HLS
} [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
add_files C:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_rst_ps7_0_100M_0/design_1_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_rst_ps7_0_100M_0/design_1_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_rst_ps7_0_100M_0/design_1_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_v_tc_0_0/design_1_v_tc_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/design_1_v_axi4s_vid_out_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_rgb2dvi_0_0/src/rgb2dvi.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_rgb2dvi_0_0/src/rgb2dvi_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_rgb2dvi_0_0/src/rgb2dvi_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_scaleImage_0_1/constraints/scaleImage_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_gray2rgb_0_0_1/constraints/gray2rgb_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_axistream2axivideo_0_0/constraints/axistream2axivideo_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_convolution_filter_0_2/constraints/convolution_filter_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_0_0/design_1_axi_vdma_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_0_0/design_1_axi_vdma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_0_0/design_1_axi_vdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_1/bd_48ac_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_1/bd_48ac_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_2/bd_48ac_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_3/bd_48ac_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_4/bd_48ac_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_5/bd_48ac_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_6/bd_48ac_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_10/bd_48ac_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_11/bd_48ac_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_12/bd_48ac_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_16/bd_48ac_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_17/bd_48ac_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_18/bd_48ac_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_19/bd_48ac_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_20/bd_48ac_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_21/bd_48ac_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_22/bd_48ac_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_23/bd_48ac_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_24/bd_48ac_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_25/bd_48ac_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_axi_iic_0_0/design_1_axi_iic_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_axi_iic_0_0/design_1_axi_iic_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_axi_intc_0_0/design_1_axi_intc_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_axi_intc_0_0/design_1_axi_intc_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_axi_intc_0_0/design_1_axi_intc_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_ov7670_interface_0_0/constraints/ov7670_interface_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_LF_valid_to_AXIS_0_0/constraints/LF_valid_to_AXIS_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_ov7670_LUMA_CHROMA_0_0/constraints/ov7670_LUMA_CHROMA_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_c_counter_binary_0_0/design_1_c_counter_binary_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_0_0/design_1_axis_data_fifo_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_1/design_1_proc_sys_reset_0_1_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_1/design_1_proc_sys_reset_0_1.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_1/design_1_proc_sys_reset_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/sources_1/bd/design_1/design_1_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/constrs_1/new/io.xdc
set_property used_in_implementation false [get_files C:/Users/mazzo/Desktop/Sistemi-Digitali-M/Progetto/OV7670-pynq/OV7670-pynq.srcs/constrs_1/new/io.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top design_1_wrapper -part xc7z020clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef design_1_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]

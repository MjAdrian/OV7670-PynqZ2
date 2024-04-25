// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Apr 18 11:11:24 2024
// Host        : adrian running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/adrian/github_repos/OV7670-PynqZ2/Progetto/OV7670-pynq/OV7670-pynq.gen/sources_1/bd/design_1/ip/design_1_LF_valid_to_AXIS_0_0/design_1_LF_valid_to_AXIS_0_0_stub.v
// Design      : design_1_LF_valid_to_AXIS_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "LF_valid_to_AXIS,Vivado 2023.2" *)
module design_1_LF_valid_to_AXIS_0_0(ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, 
  ap_ready, data_in_V, frame_valid, line_valid, outputStream_V_V_TVALID, 
  outputStream_V_V_TREADY, outputStream_V_V_TDATA)
/* synthesis syn_black_box black_box_pad_pin="ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,data_in_V[7:0],frame_valid,line_valid,outputStream_V_V_TVALID,outputStream_V_V_TREADY,outputStream_V_V_TDATA[7:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [7:0]data_in_V;
  input frame_valid;
  input line_valid;
  output outputStream_V_V_TVALID;
  input outputStream_V_V_TREADY;
  output [7:0]outputStream_V_V_TDATA;
endmodule

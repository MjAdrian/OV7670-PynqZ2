// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Apr 18 11:14:25 2024
// Host        : adrian running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/adrian/github_repos/OV7670-PynqZ2/Progetto/OV7670-pynq/OV7670-pynq.gen/sources_1/bd/design_1/ip/design_1_ov7670_LUMA_CHROMA_0_0/design_1_ov7670_LUMA_CHROMA_0_0_stub.v
// Design      : design_1_ov7670_LUMA_CHROMA_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ov7670_LUMA_CHROMA,Vivado 2023.2" *)
module design_1_ov7670_LUMA_CHROMA_0_0(ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, 
  ap_ready, inStream_V_V_TVALID, inStream_V_V_TREADY, inStream_V_V_TDATA, 
  outStream_grayscale_V_V_TVALID, outStream_grayscale_V_V_TREADY, 
  outStream_grayscale_V_V_TDATA, enable_raw_stream, outStream_LUMA_V_V_TVALID, 
  outStream_LUMA_V_V_TREADY, outStream_LUMA_V_V_TDATA, outStream_CHROMA_V_V_TVALID, 
  outStream_CHROMA_V_V_TREADY, outStream_CHROMA_V_V_TDATA)
/* synthesis syn_black_box black_box_pad_pin="ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,inStream_V_V_TVALID,inStream_V_V_TREADY,inStream_V_V_TDATA[7:0],outStream_grayscale_V_V_TVALID,outStream_grayscale_V_V_TREADY,outStream_grayscale_V_V_TDATA[7:0],enable_raw_stream,outStream_LUMA_V_V_TVALID,outStream_LUMA_V_V_TREADY,outStream_LUMA_V_V_TDATA[7:0],outStream_CHROMA_V_V_TVALID,outStream_CHROMA_V_V_TREADY,outStream_CHROMA_V_V_TDATA[7:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input inStream_V_V_TVALID;
  output inStream_V_V_TREADY;
  input [7:0]inStream_V_V_TDATA;
  output outStream_grayscale_V_V_TVALID;
  input outStream_grayscale_V_V_TREADY;
  output [7:0]outStream_grayscale_V_V_TDATA;
  input enable_raw_stream;
  output outStream_LUMA_V_V_TVALID;
  input outStream_LUMA_V_V_TREADY;
  output [7:0]outStream_LUMA_V_V_TDATA;
  output outStream_CHROMA_V_V_TVALID;
  input outStream_CHROMA_V_V_TREADY;
  output [7:0]outStream_CHROMA_V_V_TDATA;
endmodule

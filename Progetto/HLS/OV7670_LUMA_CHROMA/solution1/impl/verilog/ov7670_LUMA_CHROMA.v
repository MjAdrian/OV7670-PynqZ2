// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="ov7670_LUMA_CHROMA,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=25.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.978000,HLS_SYN_LAT=2,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=94,HLS_SYN_LUT=225,HLS_VERSION=2019_1}" *)

module ov7670_LUMA_CHROMA (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        inStream_V_V_TDATA,
        inStream_V_V_TVALID,
        inStream_V_V_TREADY,
        outStream_grayscale_V_V_TDATA,
        outStream_grayscale_V_V_TVALID,
        outStream_grayscale_V_V_TREADY,
        enable_raw_stream,
        outStream_LUMA_V_V_TDATA,
        outStream_LUMA_V_V_TVALID,
        outStream_LUMA_V_V_TREADY,
        outStream_CHROMA_V_V_TDATA,
        outStream_CHROMA_V_V_TVALID,
        outStream_CHROMA_V_V_TREADY
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] inStream_V_V_TDATA;
input   inStream_V_V_TVALID;
output   inStream_V_V_TREADY;
output  [7:0] outStream_grayscale_V_V_TDATA;
output   outStream_grayscale_V_V_TVALID;
input   outStream_grayscale_V_V_TREADY;
input   enable_raw_stream;
output  [7:0] outStream_LUMA_V_V_TDATA;
output   outStream_LUMA_V_V_TVALID;
input   outStream_LUMA_V_V_TREADY;
output  [7:0] outStream_CHROMA_V_V_TDATA;
output   outStream_CHROMA_V_V_TVALID;
input   outStream_CHROMA_V_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] inStream_V_V_0_data_out;
wire    inStream_V_V_0_vld_in;
wire    inStream_V_V_0_vld_out;
wire    inStream_V_V_0_ack_in;
reg    inStream_V_V_0_ack_out;
reg   [7:0] inStream_V_V_0_payload_A;
reg   [7:0] inStream_V_V_0_payload_B;
reg    inStream_V_V_0_sel_rd;
reg    inStream_V_V_0_sel_wr;
wire    inStream_V_V_0_sel;
wire    inStream_V_V_0_load_A;
wire    inStream_V_V_0_load_B;
reg   [1:0] inStream_V_V_0_state;
wire    inStream_V_V_0_state_cmp_full;
reg   [7:0] outStream_grayscale_V_V_1_data_out;
reg    outStream_grayscale_V_V_1_vld_in;
wire    outStream_grayscale_V_V_1_vld_out;
wire    outStream_grayscale_V_V_1_ack_in;
wire    outStream_grayscale_V_V_1_ack_out;
reg   [7:0] outStream_grayscale_V_V_1_payload_A;
reg   [7:0] outStream_grayscale_V_V_1_payload_B;
reg    outStream_grayscale_V_V_1_sel_rd;
reg    outStream_grayscale_V_V_1_sel_wr;
wire    outStream_grayscale_V_V_1_sel;
wire    outStream_grayscale_V_V_1_load_A;
wire    outStream_grayscale_V_V_1_load_B;
reg   [1:0] outStream_grayscale_V_V_1_state;
wire    outStream_grayscale_V_V_1_state_cmp_full;
reg   [7:0] outStream_LUMA_V_V_1_data_out;
reg    outStream_LUMA_V_V_1_vld_in;
wire    outStream_LUMA_V_V_1_vld_out;
wire    outStream_LUMA_V_V_1_ack_in;
wire    outStream_LUMA_V_V_1_ack_out;
reg   [7:0] outStream_LUMA_V_V_1_payload_A;
reg   [7:0] outStream_LUMA_V_V_1_payload_B;
reg    outStream_LUMA_V_V_1_sel_rd;
reg    outStream_LUMA_V_V_1_sel_wr;
wire    outStream_LUMA_V_V_1_sel;
wire    outStream_LUMA_V_V_1_load_A;
wire    outStream_LUMA_V_V_1_load_B;
reg   [1:0] outStream_LUMA_V_V_1_state;
wire    outStream_LUMA_V_V_1_state_cmp_full;
reg   [7:0] outStream_CHROMA_V_V_1_data_out;
reg    outStream_CHROMA_V_V_1_vld_in;
wire    outStream_CHROMA_V_V_1_vld_out;
wire    outStream_CHROMA_V_V_1_ack_in;
wire    outStream_CHROMA_V_V_1_ack_out;
reg   [7:0] outStream_CHROMA_V_V_1_payload_A;
reg   [7:0] outStream_CHROMA_V_V_1_payload_B;
reg    outStream_CHROMA_V_V_1_sel_rd;
reg    outStream_CHROMA_V_V_1_sel_wr;
wire    outStream_CHROMA_V_V_1_sel;
wire    outStream_CHROMA_V_V_1_load_A;
wire    outStream_CHROMA_V_V_1_load_B;
reg   [1:0] outStream_CHROMA_V_V_1_state;
wire    outStream_CHROMA_V_V_1_state_cmp_full;
reg   [0:0] grayscale_valid;
reg    inStream_V_V_TDATA_blk_n;
reg    outStream_grayscale_V_V_TDATA_blk_n;
wire    ap_CS_fsm_state3;
reg    outStream_LUMA_V_V_TDATA_blk_n;
wire   [0:0] enable_raw_stream_re_read_fu_42_p2;
wire    ap_CS_fsm_state4;
reg   [0:0] grayscale_valid_load_reg_103;
reg    outStream_CHROMA_V_V_TDATA_blk_n;
wire    ap_CS_fsm_state2;
reg    ap_block_state1;
reg    ap_predicate_op22_write_state1;
reg    ap_block_state1_io;
reg   [7:0] tmp_V_reg_96;
wire   [0:0] xor_ln30_fu_81_p2;
reg    ap_block_state4;
reg    ap_predicate_op30_write_state4;
reg    ap_block_state4_io;
reg    ap_block_state3_io;
reg   [3:0] ap_NS_fsm;
reg    ap_block_state2_io;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 inStream_V_V_0_sel_rd = 1'b0;
#0 inStream_V_V_0_sel_wr = 1'b0;
#0 inStream_V_V_0_state = 2'd0;
#0 outStream_grayscale_V_V_1_sel_rd = 1'b0;
#0 outStream_grayscale_V_V_1_sel_wr = 1'b0;
#0 outStream_grayscale_V_V_1_state = 2'd0;
#0 outStream_LUMA_V_V_1_sel_rd = 1'b0;
#0 outStream_LUMA_V_V_1_sel_wr = 1'b0;
#0 outStream_LUMA_V_V_1_state = 2'd0;
#0 outStream_CHROMA_V_V_1_sel_rd = 1'b0;
#0 outStream_CHROMA_V_V_1_sel_wr = 1'b0;
#0 outStream_CHROMA_V_V_1_state = 2'd0;
#0 grayscale_valid = 1'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grayscale_valid <= 1'd0;
    end else begin
        if ((~((outStream_CHROMA_V_V_1_state == 2'd1) | (outStream_LUMA_V_V_1_state == 2'd1) | (outStream_grayscale_V_V_1_state == 2'd1) | (1'b1 == ap_block_state4_io) | ((outStream_CHROMA_V_V_1_state == 2'd3) & (outStream_CHROMA_V_V_TREADY == 1'b0)) | ((outStream_LUMA_V_V_1_state == 2'd3) & (outStream_LUMA_V_V_TREADY == 1'b0)) | ((outStream_grayscale_V_V_1_state == 2'd3) & (outStream_grayscale_V_V_TREADY == 1'b0))) & (1'b1 == ap_CS_fsm_state4))) begin
            grayscale_valid <= xor_ln30_fu_81_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        inStream_V_V_0_sel_rd <= 1'b0;
    end else begin
        if (((inStream_V_V_0_ack_out == 1'b1) & (inStream_V_V_0_vld_out == 1'b1))) begin
            inStream_V_V_0_sel_rd <= ~inStream_V_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        inStream_V_V_0_sel_wr <= 1'b0;
    end else begin
        if (((inStream_V_V_0_ack_in == 1'b1) & (inStream_V_V_0_vld_in == 1'b1))) begin
            inStream_V_V_0_sel_wr <= ~inStream_V_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        inStream_V_V_0_state <= 2'd0;
    end else begin
        if ((((inStream_V_V_0_state == 2'd2) & (inStream_V_V_0_vld_in == 1'b0)) | ((inStream_V_V_0_state == 2'd3) & (inStream_V_V_0_vld_in == 1'b0) & (inStream_V_V_0_ack_out == 1'b1)))) begin
            inStream_V_V_0_state <= 2'd2;
        end else if ((((inStream_V_V_0_state == 2'd1) & (inStream_V_V_0_ack_out == 1'b0)) | ((inStream_V_V_0_state == 2'd3) & (inStream_V_V_0_ack_out == 1'b0) & (inStream_V_V_0_vld_in == 1'b1)))) begin
            inStream_V_V_0_state <= 2'd1;
        end else if (((~((inStream_V_V_0_vld_in == 1'b0) & (inStream_V_V_0_ack_out == 1'b1)) & ~((inStream_V_V_0_ack_out == 1'b0) & (inStream_V_V_0_vld_in == 1'b1)) & (inStream_V_V_0_state == 2'd3)) | ((inStream_V_V_0_state == 2'd1) & (inStream_V_V_0_ack_out == 1'b1)) | ((inStream_V_V_0_state == 2'd2) & (inStream_V_V_0_vld_in == 1'b1)))) begin
            inStream_V_V_0_state <= 2'd3;
        end else begin
            inStream_V_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        outStream_CHROMA_V_V_1_sel_rd <= 1'b0;
    end else begin
        if (((outStream_CHROMA_V_V_1_ack_out == 1'b1) & (outStream_CHROMA_V_V_1_vld_out == 1'b1))) begin
            outStream_CHROMA_V_V_1_sel_rd <= ~outStream_CHROMA_V_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        outStream_CHROMA_V_V_1_sel_wr <= 1'b0;
    end else begin
        if (((outStream_CHROMA_V_V_1_ack_in == 1'b1) & (outStream_CHROMA_V_V_1_vld_in == 1'b1))) begin
            outStream_CHROMA_V_V_1_sel_wr <= ~outStream_CHROMA_V_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        outStream_CHROMA_V_V_1_state <= 2'd0;
    end else begin
        if ((((outStream_CHROMA_V_V_1_state == 2'd2) & (outStream_CHROMA_V_V_1_vld_in == 1'b0)) | ((outStream_CHROMA_V_V_1_state == 2'd3) & (outStream_CHROMA_V_V_1_vld_in == 1'b0) & (outStream_CHROMA_V_V_1_ack_out == 1'b1)))) begin
            outStream_CHROMA_V_V_1_state <= 2'd2;
        end else if ((((outStream_CHROMA_V_V_1_state == 2'd1) & (outStream_CHROMA_V_V_TREADY == 1'b0)) | ((outStream_CHROMA_V_V_1_state == 2'd3) & (outStream_CHROMA_V_V_TREADY == 1'b0) & (outStream_CHROMA_V_V_1_vld_in == 1'b1)))) begin
            outStream_CHROMA_V_V_1_state <= 2'd1;
        end else if (((~((outStream_CHROMA_V_V_1_vld_in == 1'b0) & (outStream_CHROMA_V_V_1_ack_out == 1'b1)) & ~((outStream_CHROMA_V_V_TREADY == 1'b0) & (outStream_CHROMA_V_V_1_vld_in == 1'b1)) & (outStream_CHROMA_V_V_1_state == 2'd3)) | ((outStream_CHROMA_V_V_1_state == 2'd1) & (outStream_CHROMA_V_V_1_ack_out == 1'b1)) | ((outStream_CHROMA_V_V_1_state == 2'd2) & (outStream_CHROMA_V_V_1_vld_in == 1'b1)))) begin
            outStream_CHROMA_V_V_1_state <= 2'd3;
        end else begin
            outStream_CHROMA_V_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        outStream_LUMA_V_V_1_sel_rd <= 1'b0;
    end else begin
        if (((outStream_LUMA_V_V_1_ack_out == 1'b1) & (outStream_LUMA_V_V_1_vld_out == 1'b1))) begin
            outStream_LUMA_V_V_1_sel_rd <= ~outStream_LUMA_V_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        outStream_LUMA_V_V_1_sel_wr <= 1'b0;
    end else begin
        if (((outStream_LUMA_V_V_1_ack_in == 1'b1) & (outStream_LUMA_V_V_1_vld_in == 1'b1))) begin
            outStream_LUMA_V_V_1_sel_wr <= ~outStream_LUMA_V_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        outStream_LUMA_V_V_1_state <= 2'd0;
    end else begin
        if ((((outStream_LUMA_V_V_1_state == 2'd2) & (outStream_LUMA_V_V_1_vld_in == 1'b0)) | ((outStream_LUMA_V_V_1_state == 2'd3) & (outStream_LUMA_V_V_1_vld_in == 1'b0) & (outStream_LUMA_V_V_1_ack_out == 1'b1)))) begin
            outStream_LUMA_V_V_1_state <= 2'd2;
        end else if ((((outStream_LUMA_V_V_1_state == 2'd1) & (outStream_LUMA_V_V_TREADY == 1'b0)) | ((outStream_LUMA_V_V_1_state == 2'd3) & (outStream_LUMA_V_V_TREADY == 1'b0) & (outStream_LUMA_V_V_1_vld_in == 1'b1)))) begin
            outStream_LUMA_V_V_1_state <= 2'd1;
        end else if (((~((outStream_LUMA_V_V_1_vld_in == 1'b0) & (outStream_LUMA_V_V_1_ack_out == 1'b1)) & ~((outStream_LUMA_V_V_TREADY == 1'b0) & (outStream_LUMA_V_V_1_vld_in == 1'b1)) & (outStream_LUMA_V_V_1_state == 2'd3)) | ((outStream_LUMA_V_V_1_state == 2'd1) & (outStream_LUMA_V_V_1_ack_out == 1'b1)) | ((outStream_LUMA_V_V_1_state == 2'd2) & (outStream_LUMA_V_V_1_vld_in == 1'b1)))) begin
            outStream_LUMA_V_V_1_state <= 2'd3;
        end else begin
            outStream_LUMA_V_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        outStream_grayscale_V_V_1_sel_rd <= 1'b0;
    end else begin
        if (((outStream_grayscale_V_V_1_ack_out == 1'b1) & (outStream_grayscale_V_V_1_vld_out == 1'b1))) begin
            outStream_grayscale_V_V_1_sel_rd <= ~outStream_grayscale_V_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        outStream_grayscale_V_V_1_sel_wr <= 1'b0;
    end else begin
        if (((outStream_grayscale_V_V_1_vld_in == 1'b1) & (outStream_grayscale_V_V_1_ack_in == 1'b1))) begin
            outStream_grayscale_V_V_1_sel_wr <= ~outStream_grayscale_V_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        outStream_grayscale_V_V_1_state <= 2'd0;
    end else begin
        if ((((outStream_grayscale_V_V_1_state == 2'd2) & (outStream_grayscale_V_V_1_vld_in == 1'b0)) | ((outStream_grayscale_V_V_1_state == 2'd3) & (outStream_grayscale_V_V_1_vld_in == 1'b0) & (outStream_grayscale_V_V_1_ack_out == 1'b1)))) begin
            outStream_grayscale_V_V_1_state <= 2'd2;
        end else if ((((outStream_grayscale_V_V_1_state == 2'd1) & (outStream_grayscale_V_V_TREADY == 1'b0)) | ((outStream_grayscale_V_V_1_state == 2'd3) & (outStream_grayscale_V_V_TREADY == 1'b0) & (outStream_grayscale_V_V_1_vld_in == 1'b1)))) begin
            outStream_grayscale_V_V_1_state <= 2'd1;
        end else if (((~((outStream_grayscale_V_V_1_vld_in == 1'b0) & (outStream_grayscale_V_V_1_ack_out == 1'b1)) & ~((outStream_grayscale_V_V_TREADY == 1'b0) & (outStream_grayscale_V_V_1_vld_in == 1'b1)) & (outStream_grayscale_V_V_1_state == 2'd3)) | ((outStream_grayscale_V_V_1_state == 2'd1) & (outStream_grayscale_V_V_1_ack_out == 1'b1)) | ((outStream_grayscale_V_V_1_state == 2'd2) & (outStream_grayscale_V_V_1_vld_in == 1'b1)))) begin
            outStream_grayscale_V_V_1_state <= 2'd3;
        end else begin
            outStream_grayscale_V_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((inStream_V_V_0_vld_out == 1'b0) | (ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (1'b1 == ap_CS_fsm_state1))) begin
        grayscale_valid_load_reg_103 <= grayscale_valid;
        tmp_V_reg_96 <= inStream_V_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if ((inStream_V_V_0_load_A == 1'b1)) begin
        inStream_V_V_0_payload_A <= inStream_V_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((inStream_V_V_0_load_B == 1'b1)) begin
        inStream_V_V_0_payload_B <= inStream_V_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((outStream_CHROMA_V_V_1_load_A == 1'b1)) begin
        outStream_CHROMA_V_V_1_payload_A <= inStream_V_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if ((outStream_CHROMA_V_V_1_load_B == 1'b1)) begin
        outStream_CHROMA_V_V_1_payload_B <= inStream_V_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if ((outStream_LUMA_V_V_1_load_A == 1'b1)) begin
        outStream_LUMA_V_V_1_payload_A <= tmp_V_reg_96;
    end
end

always @ (posedge ap_clk) begin
    if ((outStream_LUMA_V_V_1_load_B == 1'b1)) begin
        outStream_LUMA_V_V_1_payload_B <= tmp_V_reg_96;
    end
end

always @ (posedge ap_clk) begin
    if ((outStream_grayscale_V_V_1_load_A == 1'b1)) begin
        outStream_grayscale_V_V_1_payload_A <= inStream_V_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if ((outStream_grayscale_V_V_1_load_B == 1'b1)) begin
        outStream_grayscale_V_V_1_payload_B <= inStream_V_V_0_data_out;
    end
end

always @ (*) begin
    if ((~((outStream_CHROMA_V_V_1_state == 2'd1) | (outStream_LUMA_V_V_1_state == 2'd1) | (outStream_grayscale_V_V_1_state == 2'd1) | (1'b1 == ap_block_state4_io) | ((outStream_CHROMA_V_V_1_state == 2'd3) & (outStream_CHROMA_V_V_TREADY == 1'b0)) | ((outStream_LUMA_V_V_1_state == 2'd3) & (outStream_LUMA_V_V_TREADY == 1'b0)) | ((outStream_grayscale_V_V_1_state == 2'd3) & (outStream_grayscale_V_V_TREADY == 1'b0))) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((outStream_CHROMA_V_V_1_state == 2'd1) | (outStream_LUMA_V_V_1_state == 2'd1) | (outStream_grayscale_V_V_1_state == 2'd1) | (1'b1 == ap_block_state4_io) | ((outStream_CHROMA_V_V_1_state == 2'd3) & (outStream_CHROMA_V_V_TREADY == 1'b0)) | ((outStream_LUMA_V_V_1_state == 2'd3) & (outStream_LUMA_V_V_TREADY == 1'b0)) | ((outStream_grayscale_V_V_1_state == 2'd3) & (outStream_grayscale_V_V_TREADY == 1'b0))) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((inStream_V_V_0_vld_out == 1'b0) | (ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (1'b1 == ap_CS_fsm_state1))) begin
        inStream_V_V_0_ack_out = 1'b1;
    end else begin
        inStream_V_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((inStream_V_V_0_sel == 1'b1)) begin
        inStream_V_V_0_data_out = inStream_V_V_0_payload_B;
    end else begin
        inStream_V_V_0_data_out = inStream_V_V_0_payload_A;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        inStream_V_V_TDATA_blk_n = inStream_V_V_0_state[1'd0];
    end else begin
        inStream_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((outStream_CHROMA_V_V_1_sel == 1'b1)) begin
        outStream_CHROMA_V_V_1_data_out = outStream_CHROMA_V_V_1_payload_B;
    end else begin
        outStream_CHROMA_V_V_1_data_out = outStream_CHROMA_V_V_1_payload_A;
    end
end

always @ (*) begin
    if ((~((inStream_V_V_0_vld_out == 1'b0) | (ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (ap_predicate_op22_write_state1 == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        outStream_CHROMA_V_V_1_vld_in = 1'b1;
    end else begin
        outStream_CHROMA_V_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((((enable_raw_stream_re_read_fu_42_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((enable_raw_stream_re_read_fu_42_p2 == 1'd1) & (grayscale_valid == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        outStream_CHROMA_V_V_TDATA_blk_n = outStream_CHROMA_V_V_1_state[1'd1];
    end else begin
        outStream_CHROMA_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((outStream_LUMA_V_V_1_sel == 1'b1)) begin
        outStream_LUMA_V_V_1_data_out = outStream_LUMA_V_V_1_payload_B;
    end else begin
        outStream_LUMA_V_V_1_data_out = outStream_LUMA_V_V_1_payload_A;
    end
end

always @ (*) begin
    if (((enable_raw_stream_re_read_fu_42_p2 == 1'd1) & (1'b0 == ap_block_state3_io) & (1'b1 == ap_CS_fsm_state3))) begin
        outStream_LUMA_V_V_1_vld_in = 1'b1;
    end else begin
        outStream_LUMA_V_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((((grayscale_valid_load_reg_103 == 1'd1) & (enable_raw_stream_re_read_fu_42_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((enable_raw_stream_re_read_fu_42_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
        outStream_LUMA_V_V_TDATA_blk_n = outStream_LUMA_V_V_1_state[1'd1];
    end else begin
        outStream_LUMA_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((outStream_grayscale_V_V_1_sel == 1'b1)) begin
        outStream_grayscale_V_V_1_data_out = outStream_grayscale_V_V_1_payload_B;
    end else begin
        outStream_grayscale_V_V_1_data_out = outStream_grayscale_V_V_1_payload_A;
    end
end

always @ (*) begin
    if ((~((inStream_V_V_0_vld_out == 1'b0) | (ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (grayscale_valid == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        outStream_grayscale_V_V_1_vld_in = 1'b1;
    end else begin
        outStream_grayscale_V_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((grayscale_valid == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        outStream_grayscale_V_V_TDATA_blk_n = outStream_grayscale_V_V_1_state[1'd1];
    end else begin
        outStream_grayscale_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((inStream_V_V_0_vld_out == 1'b0) | (ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (grayscale_valid == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if ((~((inStream_V_V_0_vld_out == 1'b0) | (ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (grayscale_valid == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2_io) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b0 == ap_block_state3_io) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if ((~((outStream_CHROMA_V_V_1_state == 2'd1) | (outStream_LUMA_V_V_1_state == 2'd1) | (outStream_grayscale_V_V_1_state == 2'd1) | (1'b1 == ap_block_state4_io) | ((outStream_CHROMA_V_V_1_state == 2'd3) & (outStream_CHROMA_V_V_TREADY == 1'b0)) | ((outStream_LUMA_V_V_1_state == 2'd3) & (outStream_LUMA_V_V_TREADY == 1'b0)) | ((outStream_grayscale_V_V_1_state == 2'd3) & (outStream_grayscale_V_V_TREADY == 1'b0))) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((inStream_V_V_0_vld_out == 1'b0) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state1_io = (((outStream_CHROMA_V_V_1_ack_in == 1'b0) & (ap_predicate_op22_write_state1 == 1'b1)) | ((grayscale_valid == 1'd1) & (outStream_grayscale_V_V_1_ack_in == 1'b0)));
end

always @ (*) begin
    ap_block_state2_io = ((enable_raw_stream_re_read_fu_42_p2 == 1'd1) & (outStream_CHROMA_V_V_1_ack_in == 1'b0));
end

always @ (*) begin
    ap_block_state3_io = ((outStream_grayscale_V_V_1_ack_in == 1'b0) | ((enable_raw_stream_re_read_fu_42_p2 == 1'd1) & (outStream_LUMA_V_V_1_ack_in == 1'b0)));
end

always @ (*) begin
    ap_block_state4 = ((outStream_CHROMA_V_V_1_state == 2'd1) | (outStream_LUMA_V_V_1_state == 2'd1) | (outStream_grayscale_V_V_1_state == 2'd1) | ((outStream_CHROMA_V_V_1_state == 2'd3) & (outStream_CHROMA_V_V_TREADY == 1'b0)) | ((outStream_LUMA_V_V_1_state == 2'd3) & (outStream_LUMA_V_V_TREADY == 1'b0)) | ((outStream_grayscale_V_V_1_state == 2'd3) & (outStream_grayscale_V_V_TREADY == 1'b0)));
end

always @ (*) begin
    ap_block_state4_io = ((outStream_LUMA_V_V_1_ack_in == 1'b0) & (ap_predicate_op30_write_state4 == 1'b1));
end

always @ (*) begin
    ap_predicate_op22_write_state1 = ((enable_raw_stream_re_read_fu_42_p2 == 1'd1) & (grayscale_valid == 1'd0));
end

always @ (*) begin
    ap_predicate_op30_write_state4 = ((grayscale_valid_load_reg_103 == 1'd1) & (enable_raw_stream_re_read_fu_42_p2 == 1'd1));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign enable_raw_stream_re_read_fu_42_p2 = enable_raw_stream;

assign inStream_V_V_0_ack_in = inStream_V_V_0_state[1'd1];

assign inStream_V_V_0_load_A = (inStream_V_V_0_state_cmp_full & ~inStream_V_V_0_sel_wr);

assign inStream_V_V_0_load_B = (inStream_V_V_0_state_cmp_full & inStream_V_V_0_sel_wr);

assign inStream_V_V_0_sel = inStream_V_V_0_sel_rd;

assign inStream_V_V_0_state_cmp_full = ((inStream_V_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign inStream_V_V_0_vld_in = inStream_V_V_TVALID;

assign inStream_V_V_0_vld_out = inStream_V_V_0_state[1'd0];

assign inStream_V_V_TREADY = inStream_V_V_0_state[1'd1];

assign outStream_CHROMA_V_V_1_ack_in = outStream_CHROMA_V_V_1_state[1'd1];

assign outStream_CHROMA_V_V_1_ack_out = outStream_CHROMA_V_V_TREADY;

assign outStream_CHROMA_V_V_1_load_A = (outStream_CHROMA_V_V_1_state_cmp_full & ~outStream_CHROMA_V_V_1_sel_wr);

assign outStream_CHROMA_V_V_1_load_B = (outStream_CHROMA_V_V_1_state_cmp_full & outStream_CHROMA_V_V_1_sel_wr);

assign outStream_CHROMA_V_V_1_sel = outStream_CHROMA_V_V_1_sel_rd;

assign outStream_CHROMA_V_V_1_state_cmp_full = ((outStream_CHROMA_V_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign outStream_CHROMA_V_V_1_vld_out = outStream_CHROMA_V_V_1_state[1'd0];

assign outStream_CHROMA_V_V_TDATA = outStream_CHROMA_V_V_1_data_out;

assign outStream_CHROMA_V_V_TVALID = outStream_CHROMA_V_V_1_state[1'd0];

assign outStream_LUMA_V_V_1_ack_in = outStream_LUMA_V_V_1_state[1'd1];

assign outStream_LUMA_V_V_1_ack_out = outStream_LUMA_V_V_TREADY;

assign outStream_LUMA_V_V_1_load_A = (outStream_LUMA_V_V_1_state_cmp_full & ~outStream_LUMA_V_V_1_sel_wr);

assign outStream_LUMA_V_V_1_load_B = (outStream_LUMA_V_V_1_state_cmp_full & outStream_LUMA_V_V_1_sel_wr);

assign outStream_LUMA_V_V_1_sel = outStream_LUMA_V_V_1_sel_rd;

assign outStream_LUMA_V_V_1_state_cmp_full = ((outStream_LUMA_V_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign outStream_LUMA_V_V_1_vld_out = outStream_LUMA_V_V_1_state[1'd0];

assign outStream_LUMA_V_V_TDATA = outStream_LUMA_V_V_1_data_out;

assign outStream_LUMA_V_V_TVALID = outStream_LUMA_V_V_1_state[1'd0];

assign outStream_grayscale_V_V_1_ack_in = outStream_grayscale_V_V_1_state[1'd1];

assign outStream_grayscale_V_V_1_ack_out = outStream_grayscale_V_V_TREADY;

assign outStream_grayscale_V_V_1_load_A = (outStream_grayscale_V_V_1_state_cmp_full & ~outStream_grayscale_V_V_1_sel_wr);

assign outStream_grayscale_V_V_1_load_B = (outStream_grayscale_V_V_1_state_cmp_full & outStream_grayscale_V_V_1_sel_wr);

assign outStream_grayscale_V_V_1_sel = outStream_grayscale_V_V_1_sel_rd;

assign outStream_grayscale_V_V_1_state_cmp_full = ((outStream_grayscale_V_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign outStream_grayscale_V_V_1_vld_out = outStream_grayscale_V_V_1_state[1'd0];

assign outStream_grayscale_V_V_TDATA = outStream_grayscale_V_V_1_data_out;

assign outStream_grayscale_V_V_TVALID = outStream_grayscale_V_V_1_state[1'd0];

assign xor_ln30_fu_81_p2 = (grayscale_valid_load_reg_103 ^ 1'd1);

endmodule //ov7670_LUMA_CHROMA

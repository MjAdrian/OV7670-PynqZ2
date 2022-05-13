-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity scaleImage is
port (
    inStream_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    inStream_TKEEP : IN STD_LOGIC_VECTOR (0 downto 0);
    inStream_TSTRB : IN STD_LOGIC_VECTOR (0 downto 0);
    inStream_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    inStream_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    inStream_TID : IN STD_LOGIC_VECTOR (0 downto 0);
    inStream_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
    outStream_TDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
    outStream_TKEEP : OUT STD_LOGIC_VECTOR (0 downto 0);
    outStream_TSTRB : OUT STD_LOGIC_VECTOR (0 downto 0);
    outStream_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    outStream_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    outStream_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
    outStream_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    inStream_TVALID : IN STD_LOGIC;
    inStream_TREADY : OUT STD_LOGIC;
    outStream_TVALID : OUT STD_LOGIC;
    outStream_TREADY : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC );
end;


architecture behav of scaleImage is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "scaleImage,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=8.612000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=2,HLS_SYN_DSP=16,HLS_SYN_FF=8722,HLS_SYN_LUT=8240,HLS_VERSION=2019_1}";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_rst_n_inv : STD_LOGIC;
    signal Block_proc_U0_ap_start : STD_LOGIC;
    signal Block_proc_U0_ap_done : STD_LOGIC;
    signal Block_proc_U0_ap_continue : STD_LOGIC;
    signal Block_proc_U0_ap_idle : STD_LOGIC;
    signal Block_proc_U0_ap_ready : STD_LOGIC;
    signal Block_proc_U0_start_out : STD_LOGIC;
    signal Block_proc_U0_start_write : STD_LOGIC;
    signal Block_proc_U0_inImage_rows_V_out_din : STD_LOGIC_VECTOR (9 downto 0);
    signal Block_proc_U0_inImage_rows_V_out_write : STD_LOGIC;
    signal Block_proc_U0_inImage_cols_V_out_din : STD_LOGIC_VECTOR (10 downto 0);
    signal Block_proc_U0_inImage_cols_V_out_write : STD_LOGIC;
    signal Block_proc_U0_outImage_rows_V_out_din : STD_LOGIC_VECTOR (10 downto 0);
    signal Block_proc_U0_outImage_rows_V_out_write : STD_LOGIC;
    signal Block_proc_U0_outImage_cols_V_out_din : STD_LOGIC_VECTOR (10 downto 0);
    signal Block_proc_U0_outImage_cols_V_out_write : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_start : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_done : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_continue : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_idle : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_ready : STD_LOGIC;
    signal AXIvideo2Mat_U0_inStream_TREADY : STD_LOGIC;
    signal AXIvideo2Mat_U0_img_rows_V_read : STD_LOGIC;
    signal AXIvideo2Mat_U0_img_cols_V_read : STD_LOGIC;
    signal AXIvideo2Mat_U0_img_data_stream_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal AXIvideo2Mat_U0_img_data_stream_V_write : STD_LOGIC;
    signal AXIvideo2Mat_U0_img_rows_V_out_din : STD_LOGIC_VECTOR (9 downto 0);
    signal AXIvideo2Mat_U0_img_rows_V_out_write : STD_LOGIC;
    signal AXIvideo2Mat_U0_img_cols_V_out_din : STD_LOGIC_VECTOR (10 downto 0);
    signal AXIvideo2Mat_U0_img_cols_V_out_write : STD_LOGIC;
    signal Resize_U0_ap_start : STD_LOGIC;
    signal Resize_U0_ap_done : STD_LOGIC;
    signal Resize_U0_ap_continue : STD_LOGIC;
    signal Resize_U0_ap_idle : STD_LOGIC;
    signal Resize_U0_ap_ready : STD_LOGIC;
    signal Resize_U0_start_out : STD_LOGIC;
    signal Resize_U0_start_write : STD_LOGIC;
    signal Resize_U0_p_src_rows_V_read : STD_LOGIC;
    signal Resize_U0_p_src_cols_V_read : STD_LOGIC;
    signal Resize_U0_p_src_data_stream_V_read : STD_LOGIC;
    signal Resize_U0_p_dst_rows_V_read : STD_LOGIC;
    signal Resize_U0_p_dst_cols_V_read : STD_LOGIC;
    signal Resize_U0_p_dst_data_stream_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal Resize_U0_p_dst_data_stream_V_write : STD_LOGIC;
    signal Resize_U0_p_dst_rows_V_out_din : STD_LOGIC_VECTOR (10 downto 0);
    signal Resize_U0_p_dst_rows_V_out_write : STD_LOGIC;
    signal Resize_U0_p_dst_cols_V_out_din : STD_LOGIC_VECTOR (10 downto 0);
    signal Resize_U0_p_dst_cols_V_out_write : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_start : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_done : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_continue : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_idle : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_ready : STD_LOGIC;
    signal Mat2AXIvideo_U0_img_rows_V_read : STD_LOGIC;
    signal Mat2AXIvideo_U0_img_cols_V_read : STD_LOGIC;
    signal Mat2AXIvideo_U0_img_data_stream_V_read : STD_LOGIC;
    signal Mat2AXIvideo_U0_outStream_TDATA : STD_LOGIC_VECTOR (7 downto 0);
    signal Mat2AXIvideo_U0_outStream_TVALID : STD_LOGIC;
    signal Mat2AXIvideo_U0_outStream_TKEEP : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_outStream_TSTRB : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_outStream_TUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_outStream_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_outStream_TID : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_outStream_TDEST : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sync_continue : STD_LOGIC;
    signal inImage_rows_V_c_full_n : STD_LOGIC;
    signal inImage_rows_V_c_dout : STD_LOGIC_VECTOR (9 downto 0);
    signal inImage_rows_V_c_empty_n : STD_LOGIC;
    signal inImage_cols_V_c_full_n : STD_LOGIC;
    signal inImage_cols_V_c_dout : STD_LOGIC_VECTOR (10 downto 0);
    signal inImage_cols_V_c_empty_n : STD_LOGIC;
    signal outImage_rows_V_c_full_n : STD_LOGIC;
    signal outImage_rows_V_c_dout : STD_LOGIC_VECTOR (10 downto 0);
    signal outImage_rows_V_c_empty_n : STD_LOGIC;
    signal outImage_cols_V_c_full_n : STD_LOGIC;
    signal outImage_cols_V_c_dout : STD_LOGIC_VECTOR (10 downto 0);
    signal outImage_cols_V_c_empty_n : STD_LOGIC;
    signal inImage_data_stream_s_full_n : STD_LOGIC;
    signal inImage_data_stream_s_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal inImage_data_stream_s_empty_n : STD_LOGIC;
    signal inImage_rows_V_c8_full_n : STD_LOGIC;
    signal inImage_rows_V_c8_dout : STD_LOGIC_VECTOR (9 downto 0);
    signal inImage_rows_V_c8_empty_n : STD_LOGIC;
    signal inImage_cols_V_c9_full_n : STD_LOGIC;
    signal inImage_cols_V_c9_dout : STD_LOGIC_VECTOR (10 downto 0);
    signal inImage_cols_V_c9_empty_n : STD_LOGIC;
    signal outImage_data_stream_full_n : STD_LOGIC;
    signal outImage_data_stream_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal outImage_data_stream_empty_n : STD_LOGIC;
    signal outImage_rows_V_c10_full_n : STD_LOGIC;
    signal outImage_rows_V_c10_dout : STD_LOGIC_VECTOR (10 downto 0);
    signal outImage_rows_V_c10_empty_n : STD_LOGIC;
    signal outImage_cols_V_c11_full_n : STD_LOGIC;
    signal outImage_cols_V_c11_dout : STD_LOGIC_VECTOR (10 downto 0);
    signal outImage_cols_V_c11_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal ap_sync_reg_Block_proc_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_Block_proc_U0_ap_ready : STD_LOGIC;
    signal Block_proc_U0_ap_ready_count : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal ap_sync_reg_AXIvideo2Mat_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_AXIvideo2Mat_U0_ap_ready : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_ready_count : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal start_for_Resize_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_Resize_U0_full_n : STD_LOGIC;
    signal start_for_Resize_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_Resize_U0_empty_n : STD_LOGIC;
    signal AXIvideo2Mat_U0_start_full_n : STD_LOGIC;
    signal AXIvideo2Mat_U0_start_write : STD_LOGIC;
    signal start_for_Mat2AXIvideo_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_Mat2AXIvideo_U0_full_n : STD_LOGIC;
    signal start_for_Mat2AXIvideo_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_Mat2AXIvideo_U0_empty_n : STD_LOGIC;
    signal Mat2AXIvideo_U0_start_full_n : STD_LOGIC;
    signal Mat2AXIvideo_U0_start_write : STD_LOGIC;

    component Block_proc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        inImage_rows_V_out_din : OUT STD_LOGIC_VECTOR (9 downto 0);
        inImage_rows_V_out_full_n : IN STD_LOGIC;
        inImage_rows_V_out_write : OUT STD_LOGIC;
        inImage_cols_V_out_din : OUT STD_LOGIC_VECTOR (10 downto 0);
        inImage_cols_V_out_full_n : IN STD_LOGIC;
        inImage_cols_V_out_write : OUT STD_LOGIC;
        outImage_rows_V_out_din : OUT STD_LOGIC_VECTOR (10 downto 0);
        outImage_rows_V_out_full_n : IN STD_LOGIC;
        outImage_rows_V_out_write : OUT STD_LOGIC;
        outImage_cols_V_out_din : OUT STD_LOGIC_VECTOR (10 downto 0);
        outImage_cols_V_out_full_n : IN STD_LOGIC;
        outImage_cols_V_out_write : OUT STD_LOGIC );
    end component;


    component AXIvideo2Mat IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        inStream_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
        inStream_TVALID : IN STD_LOGIC;
        inStream_TREADY : OUT STD_LOGIC;
        inStream_TKEEP : IN STD_LOGIC_VECTOR (0 downto 0);
        inStream_TSTRB : IN STD_LOGIC_VECTOR (0 downto 0);
        inStream_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        inStream_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        inStream_TID : IN STD_LOGIC_VECTOR (0 downto 0);
        inStream_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
        img_rows_V_dout : IN STD_LOGIC_VECTOR (9 downto 0);
        img_rows_V_empty_n : IN STD_LOGIC;
        img_rows_V_read : OUT STD_LOGIC;
        img_cols_V_dout : IN STD_LOGIC_VECTOR (10 downto 0);
        img_cols_V_empty_n : IN STD_LOGIC;
        img_cols_V_read : OUT STD_LOGIC;
        img_data_stream_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        img_data_stream_V_full_n : IN STD_LOGIC;
        img_data_stream_V_write : OUT STD_LOGIC;
        img_rows_V_out_din : OUT STD_LOGIC_VECTOR (9 downto 0);
        img_rows_V_out_full_n : IN STD_LOGIC;
        img_rows_V_out_write : OUT STD_LOGIC;
        img_cols_V_out_din : OUT STD_LOGIC_VECTOR (10 downto 0);
        img_cols_V_out_full_n : IN STD_LOGIC;
        img_cols_V_out_write : OUT STD_LOGIC );
    end component;


    component Resize IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        p_src_rows_V_dout : IN STD_LOGIC_VECTOR (9 downto 0);
        p_src_rows_V_empty_n : IN STD_LOGIC;
        p_src_rows_V_read : OUT STD_LOGIC;
        p_src_cols_V_dout : IN STD_LOGIC_VECTOR (10 downto 0);
        p_src_cols_V_empty_n : IN STD_LOGIC;
        p_src_cols_V_read : OUT STD_LOGIC;
        p_src_data_stream_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src_data_stream_V_empty_n : IN STD_LOGIC;
        p_src_data_stream_V_read : OUT STD_LOGIC;
        p_dst_rows_V_dout : IN STD_LOGIC_VECTOR (10 downto 0);
        p_dst_rows_V_empty_n : IN STD_LOGIC;
        p_dst_rows_V_read : OUT STD_LOGIC;
        p_dst_cols_V_dout : IN STD_LOGIC_VECTOR (10 downto 0);
        p_dst_cols_V_empty_n : IN STD_LOGIC;
        p_dst_cols_V_read : OUT STD_LOGIC;
        p_dst_data_stream_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_dst_data_stream_V_full_n : IN STD_LOGIC;
        p_dst_data_stream_V_write : OUT STD_LOGIC;
        p_dst_rows_V_out_din : OUT STD_LOGIC_VECTOR (10 downto 0);
        p_dst_rows_V_out_full_n : IN STD_LOGIC;
        p_dst_rows_V_out_write : OUT STD_LOGIC;
        p_dst_cols_V_out_din : OUT STD_LOGIC_VECTOR (10 downto 0);
        p_dst_cols_V_out_full_n : IN STD_LOGIC;
        p_dst_cols_V_out_write : OUT STD_LOGIC );
    end component;


    component Mat2AXIvideo IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        img_rows_V_dout : IN STD_LOGIC_VECTOR (10 downto 0);
        img_rows_V_empty_n : IN STD_LOGIC;
        img_rows_V_read : OUT STD_LOGIC;
        img_cols_V_dout : IN STD_LOGIC_VECTOR (10 downto 0);
        img_cols_V_empty_n : IN STD_LOGIC;
        img_cols_V_read : OUT STD_LOGIC;
        img_data_stream_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        img_data_stream_V_empty_n : IN STD_LOGIC;
        img_data_stream_V_read : OUT STD_LOGIC;
        outStream_TDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
        outStream_TVALID : OUT STD_LOGIC;
        outStream_TREADY : IN STD_LOGIC;
        outStream_TKEEP : OUT STD_LOGIC_VECTOR (0 downto 0);
        outStream_TSTRB : OUT STD_LOGIC_VECTOR (0 downto 0);
        outStream_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        outStream_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
        outStream_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
        outStream_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component fifo_w10_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (9 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (9 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w11_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (10 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (10 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w11_d3_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (10 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (10 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w8_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_Resize_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_Mat2AXIhbi IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    Block_proc_U0 : component Block_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Block_proc_U0_ap_start,
        start_full_n => start_for_Resize_U0_full_n,
        ap_done => Block_proc_U0_ap_done,
        ap_continue => Block_proc_U0_ap_continue,
        ap_idle => Block_proc_U0_ap_idle,
        ap_ready => Block_proc_U0_ap_ready,
        start_out => Block_proc_U0_start_out,
        start_write => Block_proc_U0_start_write,
        inImage_rows_V_out_din => Block_proc_U0_inImage_rows_V_out_din,
        inImage_rows_V_out_full_n => inImage_rows_V_c_full_n,
        inImage_rows_V_out_write => Block_proc_U0_inImage_rows_V_out_write,
        inImage_cols_V_out_din => Block_proc_U0_inImage_cols_V_out_din,
        inImage_cols_V_out_full_n => inImage_cols_V_c_full_n,
        inImage_cols_V_out_write => Block_proc_U0_inImage_cols_V_out_write,
        outImage_rows_V_out_din => Block_proc_U0_outImage_rows_V_out_din,
        outImage_rows_V_out_full_n => outImage_rows_V_c_full_n,
        outImage_rows_V_out_write => Block_proc_U0_outImage_rows_V_out_write,
        outImage_cols_V_out_din => Block_proc_U0_outImage_cols_V_out_din,
        outImage_cols_V_out_full_n => outImage_cols_V_c_full_n,
        outImage_cols_V_out_write => Block_proc_U0_outImage_cols_V_out_write);

    AXIvideo2Mat_U0 : component AXIvideo2Mat
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => AXIvideo2Mat_U0_ap_start,
        ap_done => AXIvideo2Mat_U0_ap_done,
        ap_continue => AXIvideo2Mat_U0_ap_continue,
        ap_idle => AXIvideo2Mat_U0_ap_idle,
        ap_ready => AXIvideo2Mat_U0_ap_ready,
        inStream_TDATA => inStream_TDATA,
        inStream_TVALID => inStream_TVALID,
        inStream_TREADY => AXIvideo2Mat_U0_inStream_TREADY,
        inStream_TKEEP => inStream_TKEEP,
        inStream_TSTRB => inStream_TSTRB,
        inStream_TUSER => inStream_TUSER,
        inStream_TLAST => inStream_TLAST,
        inStream_TID => inStream_TID,
        inStream_TDEST => inStream_TDEST,
        img_rows_V_dout => inImage_rows_V_c_dout,
        img_rows_V_empty_n => inImage_rows_V_c_empty_n,
        img_rows_V_read => AXIvideo2Mat_U0_img_rows_V_read,
        img_cols_V_dout => inImage_cols_V_c_dout,
        img_cols_V_empty_n => inImage_cols_V_c_empty_n,
        img_cols_V_read => AXIvideo2Mat_U0_img_cols_V_read,
        img_data_stream_V_din => AXIvideo2Mat_U0_img_data_stream_V_din,
        img_data_stream_V_full_n => inImage_data_stream_s_full_n,
        img_data_stream_V_write => AXIvideo2Mat_U0_img_data_stream_V_write,
        img_rows_V_out_din => AXIvideo2Mat_U0_img_rows_V_out_din,
        img_rows_V_out_full_n => inImage_rows_V_c8_full_n,
        img_rows_V_out_write => AXIvideo2Mat_U0_img_rows_V_out_write,
        img_cols_V_out_din => AXIvideo2Mat_U0_img_cols_V_out_din,
        img_cols_V_out_full_n => inImage_cols_V_c9_full_n,
        img_cols_V_out_write => AXIvideo2Mat_U0_img_cols_V_out_write);

    Resize_U0 : component Resize
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Resize_U0_ap_start,
        start_full_n => start_for_Mat2AXIvideo_U0_full_n,
        ap_done => Resize_U0_ap_done,
        ap_continue => Resize_U0_ap_continue,
        ap_idle => Resize_U0_ap_idle,
        ap_ready => Resize_U0_ap_ready,
        start_out => Resize_U0_start_out,
        start_write => Resize_U0_start_write,
        p_src_rows_V_dout => inImage_rows_V_c8_dout,
        p_src_rows_V_empty_n => inImage_rows_V_c8_empty_n,
        p_src_rows_V_read => Resize_U0_p_src_rows_V_read,
        p_src_cols_V_dout => inImage_cols_V_c9_dout,
        p_src_cols_V_empty_n => inImage_cols_V_c9_empty_n,
        p_src_cols_V_read => Resize_U0_p_src_cols_V_read,
        p_src_data_stream_V_dout => inImage_data_stream_s_dout,
        p_src_data_stream_V_empty_n => inImage_data_stream_s_empty_n,
        p_src_data_stream_V_read => Resize_U0_p_src_data_stream_V_read,
        p_dst_rows_V_dout => outImage_rows_V_c_dout,
        p_dst_rows_V_empty_n => outImage_rows_V_c_empty_n,
        p_dst_rows_V_read => Resize_U0_p_dst_rows_V_read,
        p_dst_cols_V_dout => outImage_cols_V_c_dout,
        p_dst_cols_V_empty_n => outImage_cols_V_c_empty_n,
        p_dst_cols_V_read => Resize_U0_p_dst_cols_V_read,
        p_dst_data_stream_V_din => Resize_U0_p_dst_data_stream_V_din,
        p_dst_data_stream_V_full_n => outImage_data_stream_full_n,
        p_dst_data_stream_V_write => Resize_U0_p_dst_data_stream_V_write,
        p_dst_rows_V_out_din => Resize_U0_p_dst_rows_V_out_din,
        p_dst_rows_V_out_full_n => outImage_rows_V_c10_full_n,
        p_dst_rows_V_out_write => Resize_U0_p_dst_rows_V_out_write,
        p_dst_cols_V_out_din => Resize_U0_p_dst_cols_V_out_din,
        p_dst_cols_V_out_full_n => outImage_cols_V_c11_full_n,
        p_dst_cols_V_out_write => Resize_U0_p_dst_cols_V_out_write);

    Mat2AXIvideo_U0 : component Mat2AXIvideo
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Mat2AXIvideo_U0_ap_start,
        ap_done => Mat2AXIvideo_U0_ap_done,
        ap_continue => Mat2AXIvideo_U0_ap_continue,
        ap_idle => Mat2AXIvideo_U0_ap_idle,
        ap_ready => Mat2AXIvideo_U0_ap_ready,
        img_rows_V_dout => outImage_rows_V_c10_dout,
        img_rows_V_empty_n => outImage_rows_V_c10_empty_n,
        img_rows_V_read => Mat2AXIvideo_U0_img_rows_V_read,
        img_cols_V_dout => outImage_cols_V_c11_dout,
        img_cols_V_empty_n => outImage_cols_V_c11_empty_n,
        img_cols_V_read => Mat2AXIvideo_U0_img_cols_V_read,
        img_data_stream_V_dout => outImage_data_stream_dout,
        img_data_stream_V_empty_n => outImage_data_stream_empty_n,
        img_data_stream_V_read => Mat2AXIvideo_U0_img_data_stream_V_read,
        outStream_TDATA => Mat2AXIvideo_U0_outStream_TDATA,
        outStream_TVALID => Mat2AXIvideo_U0_outStream_TVALID,
        outStream_TREADY => outStream_TREADY,
        outStream_TKEEP => Mat2AXIvideo_U0_outStream_TKEEP,
        outStream_TSTRB => Mat2AXIvideo_U0_outStream_TSTRB,
        outStream_TUSER => Mat2AXIvideo_U0_outStream_TUSER,
        outStream_TLAST => Mat2AXIvideo_U0_outStream_TLAST,
        outStream_TID => Mat2AXIvideo_U0_outStream_TID,
        outStream_TDEST => Mat2AXIvideo_U0_outStream_TDEST);

    inImage_rows_V_c_U : component fifo_w10_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Block_proc_U0_inImage_rows_V_out_din,
        if_full_n => inImage_rows_V_c_full_n,
        if_write => Block_proc_U0_inImage_rows_V_out_write,
        if_dout => inImage_rows_V_c_dout,
        if_empty_n => inImage_rows_V_c_empty_n,
        if_read => AXIvideo2Mat_U0_img_rows_V_read);

    inImage_cols_V_c_U : component fifo_w11_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Block_proc_U0_inImage_cols_V_out_din,
        if_full_n => inImage_cols_V_c_full_n,
        if_write => Block_proc_U0_inImage_cols_V_out_write,
        if_dout => inImage_cols_V_c_dout,
        if_empty_n => inImage_cols_V_c_empty_n,
        if_read => AXIvideo2Mat_U0_img_cols_V_read);

    outImage_rows_V_c_U : component fifo_w11_d3_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Block_proc_U0_outImage_rows_V_out_din,
        if_full_n => outImage_rows_V_c_full_n,
        if_write => Block_proc_U0_outImage_rows_V_out_write,
        if_dout => outImage_rows_V_c_dout,
        if_empty_n => outImage_rows_V_c_empty_n,
        if_read => Resize_U0_p_dst_rows_V_read);

    outImage_cols_V_c_U : component fifo_w11_d3_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Block_proc_U0_outImage_cols_V_out_din,
        if_full_n => outImage_cols_V_c_full_n,
        if_write => Block_proc_U0_outImage_cols_V_out_write,
        if_dout => outImage_cols_V_c_dout,
        if_empty_n => outImage_cols_V_c_empty_n,
        if_read => Resize_U0_p_dst_cols_V_read);

    inImage_data_stream_s_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => AXIvideo2Mat_U0_img_data_stream_V_din,
        if_full_n => inImage_data_stream_s_full_n,
        if_write => AXIvideo2Mat_U0_img_data_stream_V_write,
        if_dout => inImage_data_stream_s_dout,
        if_empty_n => inImage_data_stream_s_empty_n,
        if_read => Resize_U0_p_src_data_stream_V_read);

    inImage_rows_V_c8_U : component fifo_w10_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => AXIvideo2Mat_U0_img_rows_V_out_din,
        if_full_n => inImage_rows_V_c8_full_n,
        if_write => AXIvideo2Mat_U0_img_rows_V_out_write,
        if_dout => inImage_rows_V_c8_dout,
        if_empty_n => inImage_rows_V_c8_empty_n,
        if_read => Resize_U0_p_src_rows_V_read);

    inImage_cols_V_c9_U : component fifo_w11_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => AXIvideo2Mat_U0_img_cols_V_out_din,
        if_full_n => inImage_cols_V_c9_full_n,
        if_write => AXIvideo2Mat_U0_img_cols_V_out_write,
        if_dout => inImage_cols_V_c9_dout,
        if_empty_n => inImage_cols_V_c9_empty_n,
        if_read => Resize_U0_p_src_cols_V_read);

    outImage_data_stream_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Resize_U0_p_dst_data_stream_V_din,
        if_full_n => outImage_data_stream_full_n,
        if_write => Resize_U0_p_dst_data_stream_V_write,
        if_dout => outImage_data_stream_dout,
        if_empty_n => outImage_data_stream_empty_n,
        if_read => Mat2AXIvideo_U0_img_data_stream_V_read);

    outImage_rows_V_c10_U : component fifo_w11_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Resize_U0_p_dst_rows_V_out_din,
        if_full_n => outImage_rows_V_c10_full_n,
        if_write => Resize_U0_p_dst_rows_V_out_write,
        if_dout => outImage_rows_V_c10_dout,
        if_empty_n => outImage_rows_V_c10_empty_n,
        if_read => Mat2AXIvideo_U0_img_rows_V_read);

    outImage_cols_V_c11_U : component fifo_w11_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Resize_U0_p_dst_cols_V_out_din,
        if_full_n => outImage_cols_V_c11_full_n,
        if_write => Resize_U0_p_dst_cols_V_out_write,
        if_dout => outImage_cols_V_c11_dout,
        if_empty_n => outImage_cols_V_c11_empty_n,
        if_read => Mat2AXIvideo_U0_img_cols_V_read);

    start_for_Resize_U0_U : component start_for_Resize_U0
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_Resize_U0_din,
        if_full_n => start_for_Resize_U0_full_n,
        if_write => Block_proc_U0_start_write,
        if_dout => start_for_Resize_U0_dout,
        if_empty_n => start_for_Resize_U0_empty_n,
        if_read => Resize_U0_ap_ready);

    start_for_Mat2AXIhbi_U : component start_for_Mat2AXIhbi
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_Mat2AXIvideo_U0_din,
        if_full_n => start_for_Mat2AXIvideo_U0_full_n,
        if_write => Resize_U0_start_write,
        if_dout => start_for_Mat2AXIvideo_U0_dout,
        if_empty_n => start_for_Mat2AXIvideo_U0_empty_n,
        if_read => Mat2AXIvideo_U0_ap_ready);





    ap_sync_reg_AXIvideo2Mat_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_sync_reg_AXIvideo2Mat_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_AXIvideo2Mat_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_AXIvideo2Mat_U0_ap_ready <= ap_sync_AXIvideo2Mat_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_Block_proc_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_sync_reg_Block_proc_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_Block_proc_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_Block_proc_U0_ap_ready <= ap_sync_Block_proc_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    AXIvideo2Mat_U0_ap_ready_count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_0 = AXIvideo2Mat_U0_ap_ready) and (ap_sync_ready = ap_const_logic_1))) then 
                AXIvideo2Mat_U0_ap_ready_count <= std_logic_vector(unsigned(AXIvideo2Mat_U0_ap_ready_count) - unsigned(ap_const_lv2_1));
            elsif (((ap_const_logic_1 = AXIvideo2Mat_U0_ap_ready) and (ap_sync_ready = ap_const_logic_0))) then 
                AXIvideo2Mat_U0_ap_ready_count <= std_logic_vector(unsigned(AXIvideo2Mat_U0_ap_ready_count) + unsigned(ap_const_lv2_1));
            end if; 
        end if;
    end process;

    Block_proc_U0_ap_ready_count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_sync_ready = ap_const_logic_1) and (ap_const_logic_0 = Block_proc_U0_ap_ready))) then 
                Block_proc_U0_ap_ready_count <= std_logic_vector(unsigned(Block_proc_U0_ap_ready_count) - unsigned(ap_const_lv2_1));
            elsif (((ap_const_logic_1 = Block_proc_U0_ap_ready) and (ap_sync_ready = ap_const_logic_0))) then 
                Block_proc_U0_ap_ready_count <= std_logic_vector(unsigned(Block_proc_U0_ap_ready_count) + unsigned(ap_const_lv2_1));
            end if; 
        end if;
    end process;
    AXIvideo2Mat_U0_ap_continue <= ap_const_logic_1;
    AXIvideo2Mat_U0_ap_start <= ((ap_sync_reg_AXIvideo2Mat_U0_ap_ready xor ap_const_logic_1) and ap_start);
    AXIvideo2Mat_U0_start_full_n <= ap_const_logic_1;
    AXIvideo2Mat_U0_start_write <= ap_const_logic_0;
    Block_proc_U0_ap_continue <= ap_const_logic_1;
    Block_proc_U0_ap_start <= ((ap_sync_reg_Block_proc_U0_ap_ready xor ap_const_logic_1) and ap_start);
    Mat2AXIvideo_U0_ap_continue <= ap_const_logic_1;
    Mat2AXIvideo_U0_ap_start <= start_for_Mat2AXIvideo_U0_empty_n;
    Mat2AXIvideo_U0_start_full_n <= ap_const_logic_1;
    Mat2AXIvideo_U0_start_write <= ap_const_logic_0;
    Resize_U0_ap_continue <= ap_const_logic_1;
    Resize_U0_ap_start <= start_for_Resize_U0_empty_n;
    ap_done <= Mat2AXIvideo_U0_ap_done;
    ap_idle <= (Resize_U0_ap_idle and Mat2AXIvideo_U0_ap_idle and Block_proc_U0_ap_idle and AXIvideo2Mat_U0_ap_idle);
    ap_ready <= ap_sync_ready;

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    ap_sync_AXIvideo2Mat_U0_ap_ready <= (ap_sync_reg_AXIvideo2Mat_U0_ap_ready or AXIvideo2Mat_U0_ap_ready);
    ap_sync_Block_proc_U0_ap_ready <= (ap_sync_reg_Block_proc_U0_ap_ready or Block_proc_U0_ap_ready);
    ap_sync_continue <= ap_const_logic_1;
    ap_sync_done <= Mat2AXIvideo_U0_ap_done;
    ap_sync_ready <= (ap_sync_Block_proc_U0_ap_ready and ap_sync_AXIvideo2Mat_U0_ap_ready);
    inStream_TREADY <= AXIvideo2Mat_U0_inStream_TREADY;
    outStream_TDATA <= Mat2AXIvideo_U0_outStream_TDATA;
    outStream_TDEST <= Mat2AXIvideo_U0_outStream_TDEST;
    outStream_TID <= Mat2AXIvideo_U0_outStream_TID;
    outStream_TKEEP <= Mat2AXIvideo_U0_outStream_TKEEP;
    outStream_TLAST <= Mat2AXIvideo_U0_outStream_TLAST;
    outStream_TSTRB <= Mat2AXIvideo_U0_outStream_TSTRB;
    outStream_TUSER <= Mat2AXIvideo_U0_outStream_TUSER;
    outStream_TVALID <= Mat2AXIvideo_U0_outStream_TVALID;
    start_for_Mat2AXIvideo_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_Resize_U0_din <= (0=>ap_const_logic_1, others=>'-');
end behav;

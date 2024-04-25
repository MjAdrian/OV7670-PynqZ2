-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Thu Apr 18 11:11:24 2024
-- Host        : adrian running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/adrian/github_repos/OV7670-PynqZ2/Progetto/OV7670-pynq/OV7670-pynq.gen/sources_1/bd/design_1/ip/design_1_LF_valid_to_AXIS_0_0/design_1_LF_valid_to_AXIS_0_0_stub.vhdl
-- Design      : design_1_LF_valid_to_AXIS_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_LF_valid_to_AXIS_0_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    data_in_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    frame_valid : in STD_LOGIC;
    line_valid : in STD_LOGIC;
    outputStream_V_V_TVALID : out STD_LOGIC;
    outputStream_V_V_TREADY : in STD_LOGIC;
    outputStream_V_V_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end design_1_LF_valid_to_AXIS_0_0;

architecture stub of design_1_LF_valid_to_AXIS_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,data_in_V[7:0],frame_valid,line_valid,outputStream_V_V_TVALID,outputStream_V_V_TREADY,outputStream_V_V_TDATA[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "LF_valid_to_AXIS,Vivado 2023.2";
begin
end;

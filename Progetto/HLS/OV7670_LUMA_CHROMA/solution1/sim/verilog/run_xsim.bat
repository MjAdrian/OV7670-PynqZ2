
set PATH=
call C:/Xilinx/Vivado/2019.1/bin/xelab xil_defaultlib.apatb_ov7670_LUMA_CHROMA_top glbl -prj ov7670_LUMA_CHROMA.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "C:/Xilinx/Vivado/2019.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s ov7670_LUMA_CHROMA -debug wave
call C:/Xilinx/Vivado/2019.1/bin/xsim --noieeewarnings ov7670_LUMA_CHROMA -tclbatch ov7670_LUMA_CHROMA.tcl


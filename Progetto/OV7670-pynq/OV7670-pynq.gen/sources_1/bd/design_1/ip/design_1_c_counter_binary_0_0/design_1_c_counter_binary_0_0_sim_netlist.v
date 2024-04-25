// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Apr 18 11:13:31 2024
// Host        : adrian running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/adrian/github_repos/OV7670-PynqZ2/Progetto/OV7670-pynq/OV7670-pynq.gen/sources_1/bd/design_1/ip/design_1_c_counter_binary_0_0/design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_17,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_c_counter_binary_0_0
   (CLK,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 4} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 4}" *) output [3:0]Q;

  wire CLK;
  wire [3:0]Q;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1111" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_17 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
eFbqyWxvTxgrA/YtdaoI20/0Oxv6heWR3Rkp9/xOWnvLDdGDhtGJBQqdO4v1RO/kikveHE3JyVBx
OMXM/QBYbcn/QmEMFud4drsy8IbaUwVstP+Mzovw04CY0e6ucHcNG8bkdAhiixaw1DGilwl8tfXo
1/LD/FGivkVY+qD5JIE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qZVOEd9Suj8PFYlAHZ5eNfv9g67bFY/Iau3fGJHFAIz/4EbdSAUDaGh/Aj5F/sayLnlRNhD6w+39
N7ODCROvgCW/DEQMBCPz7kcEchwyjzrqkhJexEv0Dz7kFQn1ftmdbnZ6SxsSg0bAUSqDETfwIrDN
VELNGURpq3DjO751fQLkz152JThZlONrPm6SqH+2yq0k/imlDMyhznvq+Up4EXiczfO25/APInqH
9ImfZSrqCiz3p7BNa9t1DtJtjx4nO4g/3qItwAhtZOzSyNgUZUJkS0OgYwLaNbOAMte1lEZ3aCj/
PtYFcVrRv6BV9zObKm5JRWmYYw/qLDjrN9AsCA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
PTqB7iZsvJeVQbxSYRkkEOB7dur2/Y+zWd7rSI4QgTOZZuY7cx4mymLcNTtY69vWs3+Ir6xtLuRI
kV9wRh0KJKuphJal6eQJChHGu6rp+AHyp8AyhIwGgID1vxyyu7xhU5nl4qM40fYe+ov2uBp5DVP0
GoOHS6Gilji9DRkCQuI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nl92noyushAx6EnMgw3oSlb0lEtv202gnVMSNN83+NLaV5DJ/HimKQF470dvcnALDIl0xa3e3Dx2
/s2hBMgu9+fSioH4xbMFQTaBWMjBfDKLVgBkEfT5zBbn1LpjuMEnd/TVHxe/dqXJ8Ev1EIyVB5r3
7KAUvfDL8CretmawtvJtixs8bH8vAxLO4BUzVNbXDL44NeL/PffK31PA74odtZbSUGIq+Gf0nEXP
yEajhFawSXpK6M+iRpsuDwKHS/YxQldY5i8FGvVQrcrDBe3XAh+jjvxUqPhZBRChKpDSo0q7V9L4
JAZoQiGn28UrFoWwrxxP1gsv7sPdry3YTRu8DA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KbhPmoTx5e7VcsW2JDC/J/bcPlnz66gRyRCtg0E0qHv9wqViijoH+owrxv0IWMQoDBsXBaeQm2xz
nHRZDc5s+B+JlzwwZQGB8pQM3sXMmxGcH+jeVqy6X8gKOEQFgnIK2FJlAjHpfO0xmJkl3wxWImNr
ADPNoWEMdruR5ksSgKexng6J3lkv4vPYoEvCF+Jq91pp71EIJgPtwlY833cs1Exi28xe2Qo/nzU7
oEFG5gySNEidQa25q1QrCDnSmj7j5wDJg5xzjXYmwWk9873dPWyEXdpFMqjxovIcyph/uXidS1PQ
XxFetrAMjtseoYWmz4Lm4f+rpe89PGRhWXsiZw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u7x25sjZWe79yzU52TdAK1EHhzoxhg0OOXYOwTp455Bu78gqkmKRv90VNHoa9foKyQc+Ui9ovV+f
Mu2Crcme1IbP51J6eQdKys/57qJrcFCxGtJs1Tw7KJ7NffFwkytoqR7pgvmtIH6+qncA8b3aZTLq
uwD9bGF9UFZVZ2XBc83+LRU+GZnNMHOa4eegWtueYHh1zUhGju1xbiGWuhliZ58pcNp6gCDiDv+p
GdiwFDT5RDj1bjrkOecRL2fvOdGLrhdqiTh7mvJeDStjjXiovaCdny21gVHf+dzrpyPE2xGgBinA
czj0D2pyt8plttBhpmMBtLm7Yegb1rHiA1UC4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ax8Nn3y8qIY97tYqs/w6/65Cp2CG+WRyi20ND2JmdKrfZukanonYYzlNsDdtoOeMZdG6gzVR279V
Et2Qz8YBLQmhBZMJ13mNxEOwpSUbc5lUbLJ9CQ+4u6jvStTDzX+odxkCCqHG8GJhSSFPGX+Z3VZc
TdU/OWddzxwk6JO1tiPn+qt2Q8nMj3Ulh7gqAxPMp0gosh6z+Kx5ZXSuVE/EPNyUDXjRSXjnWPwN
NnM94gbzG23dPqFIOG6f2m5ugBmUUghvI75DFpM7vJkXsEWAfZeOV351MLISR26yMaWxONCdGWTQ
DW1hvUkse+kVt5BxF8ft6CnT7VchA/flFKvfPg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
e/Ry1l/vqJFJqrtAPFKKjxxp0MWhiORDa7WOuKdNY7LaztvYcFdzfNmZDmSuTrj2jPF7WDL6uDC8
FMboEovqCHZ9s014f2WS+jYxvraqlkgyGQ1Q7gAZ6yaBsdSi2RgWdbpy++ECpfVjq8/sYcJl+CZl
ZIsOc7C4BTFh3wysjt9r3cLq/k/dOO8xw2ZAarjqRzjr0h9T3TEzowI/jWVIqkEICEpCsA6k6h2U
oRuVQxQmdtSXmU/Zm/g8I4dj6axYw/zYpYJe2v9s4sy3NCBf/p+z3JFoReqcGYtminQ5ba3zzR5v
mVNiXw+YtQVCe0IsGLqjaEBWcXrs5SNFVYKce0xzBupVSQ0hP5cTBMtcToem7n2nM+9LdhZqlPBl
KimcvX+KrlUbox8H49P1OzL0A8+Eterrfdy0jE2DF+YuIuSAnudKM11WtjqK5yq8zJk5JOHQUQZl
qO7dmmZT95FjGPG/jqS+uYlHdZCNNyQ2l2SbVZw7NPkIJGq5bAKeGsSg

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OqTG2QUdaSjYwH6PeUiMov3bCDPXiUvE4U1Z/Vd7xbPVo7tNNwQeTcXKi/ZUR5G1tkEs1OoxIqaH
ytImL/6Ro6liEE5oT3otxdQb1Yz3ukWdnhQpgw3O2DRb5K1R4L7p5QCVIgq+/7f4oNn8VSJ1hT7o
jVMeT5IvgkJXZsqX/2c86iOEUQ/Xha6SVw6W50dS1u8Q/FzR54WBSo0MFMxZWh5Pyf5qnBJKna0d
nVdDHDBFDajINOk8j7Oonu6ynHrhNkyo1IEnNv/ZQPbHo2aynI/MIaO/5etmCQO2m+53okz5H7pu
RWYkE0zXoE1v6jl/QhZyc23SZppXzWGhd1zsRw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2224)
`pragma protect data_block
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
jw==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ksEefSVwxJ7GZRGfDW/ikJjjKrptVqn8BoUNFE3DbyFfbjY6zlYjVU2CwELAYvgfKaBSrfyMEuMS
jKlgb8yavCVUJwldPyfxtdCTc4Xwwf5euzW2dlEPW6GJ/QR3MDQqWj87hbjhXiaVYBETI5rDAwxs
ag0jDyfGbH7Fx+g9iHA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GUnXggesQ6wFp8A8d+M/2l15nNVdxv4BePG1TQSaW5ydG6gBnt1y3X+nKLPfsAAKMgY0S9HUXdwI
BtWpUk5399XEOzA2bD1xmv0kwgpoz7POYIpgdAx/BCQF4rvktNKhi//x7IGo53UxJVwDFGgSASrO
U5lhhW3AIMh5QGWdNY6U3TzkCUAU/h8BrAIu8xVBUHfzif45XFeiMwPEQ+uf9C38tdN1byBWu1D/
bdHKHLEoQ180FM40kDg21Tnzo1CCw9O7115GHzGr/Y7RqsUoXbHr1346oJXf0hxxsDt9e/cTljtl
4L97UAEqQxYqk45h7XMoUAz/YbWBBiDhQKrR3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
iNgUNYpqDDi+BiL6da8RD7fGSSVTBewyOT5AwUszNtVY2QTxMMGmpdt4Wl8wGrjG/+93rEl2nPxj
fVk7z+ka8eUaCXkzXlWBjwMeJ90rJ8KO4FihwKtjjMiQquSLwyNR5pyyZNTkHBdNAkkDc8PkCtch
58pttA9zypiv98tm7zU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l9wV41MkDixx33FFiTcl/1LF3h1Ssk8tRJ69dtGKsXv9zoUl5Bxiuu/o/WzYfpCq3B5+G2qijP2Z
OIQg8dZnpVNEIlnCHyi/D8CgxGpnjTB9agrcv8p2uJfjEuchqWILowpBGaVDhzCH2CHEpi+ZHflK
AxkMClCs1aA/6Q0ZWIYTncVkAAMhjwkaIom1j7aWSm2i/zWAtmSZoLTcPpp31mhQRIss1MVGJsOR
Sh3metVPfaNOi3KvYM6QrxiVtTHO3a2wssYRgjTs87/jOj8J10HlZpV6TokY4thLe0cPSSEjglvq
P6RT4BZgxEuLA0F8c6+3OkGNR8Kzq00egupHgQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1b99Vg2radkzd2aDsrt07EnR9e4ghAuZTvdCwZ+Rfi+k0hCjhsY9FlMOKqmtC+lX1MNCBSeHgsNL
vC3O2ZjgIz/EMJCZZakXOrMcAGXIynPJrLgl1NY5RYyI0zJywRaKse7wLpCuqecTGBXUl9G57HTW
PPOgFQhib3Ya2IhicH3fARyC1eaTsrN27wBxP2SbDYBj+LDXG4uwVuxMwtLTV+0UvQmmIoppVGpZ
Ua7OYpyUmmyrNO0BBZV5rC+vJvv2uz6EYEInAbf/YvilBXxRCEmPVuo9PJwi37qvELSx0oUJaLW6
SpcXmCGOcObaWn+sWfPSIS9G56CPukLR9CbTsg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hrNBtOO525Y/qYPVt97xz4nxrMCJQmfV2TjTo00Y7cfC33GktlBrkj8AmqRWBwL54BC7INRnv+EM
dUB9k9sPwhzMDNgYx8Xs2o/+fBIofwnwjLpcykEeIl738vyCoa0SoxeK9v3Ks6oRRe19naTyXBZh
SSMXrAfLivnebn00pk2fIzGR0yUlYBnm1wM0LgODxBtx1gf57R3WPAX+iP12db7Jr/J1AtuhOpN3
LTnpRVg++HfBpxysFJlYUWYkMOcIj3QDjVCSVYLaf6+1Ir6izPggk614ydQW49xFI1feXBQmCdZj
GRAjYR+lgC7YQ2AYnnUzYpc0gNszwtpJjNz1kg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nV7nxF322RjcviTHhbV5But2nl7UvqvHOdctqSW5Chm+DWLRVeX5/RuqZiIggqahWMnCxKI8LbWs
tMgeFuwfZEDdkccQY+u8uRg70PK0ubEgM9V9yEadlgOcHGAcGWfEKlOP/4NUztFqY5W8lCjrq6Rw
+hAjup6bYkwhbjs1bYgO80It/T4sXDfmF6EFgGX34uqF+TeyqyfJTzh98ST/I6H9/SdQo/JQxbto
b/urscmiQUqDbmopEJpCzfPQR+MKUxzMhdXFmX6MmzhjsAjc7sUT3GVtsk5lSPK9foIK66/+mX3S
nPsq9e/4M7tDfoV1noDtEdGcaq8//O9/65wEUA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
D8vjA0bcs03atqVGl9n4waeXMx0cq7qqplOEpHoCsxcjrnCmleai/szQA+0wbIEOHR04zff/ikRf
JfA6YDU0wnRfi0x4K705Tkr7rwfpaJC+OTW4mKdBL8Wqm7ecjAreXQZVb6p6QVNaz4TrNairCp5R
5QeCslFvljCeKS+guLuFf441sciBjxYQDawtKwF1Lw0hFVg65PDaIdwzamCMJclhyPZ5oHnSTkFB
ZmjEtufNQD/lGIWS+MkwUVvdra98hC0JnQ8pwRQ/hdATIAIIm0LSL8Uq1X3GrUpk+2+r1a6L8N+l
aCeDJtDzvLPGVOI57FFRQEKUjjBea2T10d8Crvq90r84OEfcooPJz1OYhLGEyem5+xJ+h7KrvSQA
zpj8OngSFSDWg2l5GH1kY9p1qg9fuOMyhWC+tMFVuYTkZAY/gPWq6vpY+1A+1mtMb0fBdk3JiQx9
JRtQR3lE/tLwyB0ggWJJcPniIccaxxv2ixKSQKq3WPCyPMnkcWlLuAES

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FdWuCO7PN7y/dH6CMR4JA05yurwi5lHIUjuk6g7VXrZ9GYhlTKmpCWlV0uGRUBrVMqBEOdEC+Qdo
3z23v5MofUgIVxjUAp/sUgwHIK6W6h79woMKhZ7Q8xOWMPZOLmuapnKFf81WzFnIBNCB6t14gJVU
px/ycQC6omaG/j9kW5E5E5SL6k3JPQazmLq4Xr2LJxBV0vQK7H4f53R4BHTUJa2f4FYma0lxdz44
oyi/sA2g6j+/1BusYznWbR1i4g6N5/yKHaQsVC8avD4Za+oFFIibqpFCH/pXnCw9xbVBmqb/6oXr
bryFUy7yXCVAcYqaw6V/UGRHO3IpM/9pCUt6zA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
opA2AlCMsUhIJA7dJIaF6vnVJVxXdd3MZiSL/dkrVo3k72Fw7QjYk4eRYkvf2IIK4whU74BqA/a3
sQMZMKs+WRa73J/HPrgLD0rhlJus22ev3/IKPyIUTM+xPKc/jbF7+Q1KXhqRnv2O9ng5c9/h4vx8
IlW5zYqlHWZ7fGRTcPcU9QTZ/1oS2bRNjoXwH5u0aBpDrXATxWv1kbjnUfuTaJF0gRUi7ozbK7C4
GmOQuUs1+I3TPRE+xQj1/bFuNJqh/eCTe4oJSUabXSpWZVArG67u/jHs+6hkQStk/9qoxFVk3lKD
jXUFjibshGrP2AdaUjJtH/ApaX0Z1UTRg+MsQQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
skNfb3VV0y+1B9UbflTyZWi9hGDwgDTJ+mY1DhlLKwo06Tekxn9t0bfRlnPpQFQ5OikWt2zD7vZn
cvu5izS8rRBAI1Rt7pUJs/LFHN+sY4j+lQAYxIk3gETnSiCpULAUhGQVWlLM7BRs3ss8O9xykJrb
cX0hsvXeoLDzLvytvrnus58U7ADfVYsMTpOjHBttk96IaYeqJ+9ZuEpruKsE/tLuTe+dFnkKzJYz
G9SMlcyb6aSgDNV2auzHF5Yyudwl3tKtfd2GL/s2f4GmFdKo/1qlIrXBkp1+68tiajPPbtrurd5b
FmzgFPCNUnhnimAPrgd/mLi54tw5uehOHKSwtw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4832)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

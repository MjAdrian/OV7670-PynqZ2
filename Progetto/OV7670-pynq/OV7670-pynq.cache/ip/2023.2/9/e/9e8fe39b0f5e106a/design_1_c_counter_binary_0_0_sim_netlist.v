// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Apr 18 11:13:29 2024
// Host        : adrian running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_17,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_17 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2192)
`pragma protect data_block
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
qjMkzXT2wEYpIDfeFbxj6C8Sjinp9ljvteQ=
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
IXs3+uliJ8YfgJYPFQWksaBIBA6FIlGWrCWgeLTelO8ezg1lT8vSpwZ4hmTrMfy43xpD7whrKicA
HduVIU5rf2EEsD+q+J2Hn8UdAY7MMrTldLm0SYVPyuU7CYFokIOY+fqzOVRlcJL6Ft1v7g55U0K1
WitYwywLZbmaXiAgTsYomWmkDcsQhpfXMG+fgIhCGgX1xMM6IY6RCJALNWhMX+YgKPqaehNGImWL
gvjQ2VFYVRTbkl8urMkd3Qzy8amypbCpcXmXBaQ7j930gFlu35QzWedwbSohvlY6BgJfz2HBMyzR
p7/NhzNcXkD44mGvJ0N0G69QX538qkEWxEpWRw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UyHBCdyIbi87c56i6mYnO0/RP2qcF17YljUtZHfZ4mM7ub3HcFUxj9d4ywPbG2q3AP7TQyiiKZPf
/8p2zg2qX35sOLt3Qct/dgV/PsnDrXqT3UU8GrATMN7a0c8tWPQvL8DHUul664PPs1RlQQDgdP3I
aPWtukf/0LvljDBez8NPR/ncD11nxoyUyzMIcOEochjFk79Uuz9X2yBE6e0wjJd2eIUeFxJLUt3h
x/t8spN7OAOqHFuc1U1VPXGMzTAYITvX2EYpsY4hg8qXpplWSjj5kvF412nn55e8jW7Qc1QtqyF6
m9KMIoGVV7sKlTKioddIibDkBxWxvBrUiRviOQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4640)
`pragma protect data_block
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
/jxqqmh6nJvnSreuJcHRxJ4NmgVMNWk=
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

############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project conv_hls
set_top conv
add_files conv.cpp
add_files conv.cpp
add_files -tb conv_test.cpp -cflags "-DHW_COSIM"
add_files -tb conv_test.cpp -cflags "-DHW_COSIM"
open_solution "solution2"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./conv_hls/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog

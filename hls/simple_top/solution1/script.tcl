############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2013 Xilinx Inc. All rights reserved.
############################################################
open_project simple_top
set_top simple_top
add_files simple_top/simple_top.cpp
open_solution "solution1"
set_part {xc7z045ffg900-1}
create_clock -period 10 -name default
source "./simple_top/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design -trace_level none
export_design -format ip_catalog -version "4.0"

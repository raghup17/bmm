############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2013 Xilinx Inc. All rights reserved.
############################################################
open_project bmm_top
set_top bmm_top
add_files bmm_top/bmm_top.cpp
open_solution "solution1"
set_part {xc7z045ffg900-1}
create_clock -period 10 -name default
source "./bmm_top/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design -trace_level none
export_design -format ip_catalog -version "17.0"

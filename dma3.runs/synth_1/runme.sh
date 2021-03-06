#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/raghu/tools/xilinx/SDK/2013.3/bin/lin64:/home/raghu/tools/xilinx/Vivado/2013.3/ids_lite/EDK/bin/lin64:/home/raghu/tools/xilinx/Vivado/2013.3/ids_lite/ISE/bin/lin64:/home/raghu/tools/xilinx/Vivado/2013.3/bin
else
  PATH=/home/raghu/tools/xilinx/SDK/2013.3/bin/lin64:/home/raghu/tools/xilinx/Vivado/2013.3/ids_lite/EDK/bin/lin64:/home/raghu/tools/xilinx/Vivado/2013.3/ids_lite/ISE/bin/lin64:/home/raghu/tools/xilinx/Vivado/2013.3/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/raghu/tools/xilinx/Vivado/2013.3/ids_lite/EDK/lib/lin64:/home/raghu/tools/xilinx/Vivado/2013.3/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/raghu/tools/xilinx/Vivado/2013.3/ids_lite/EDK/lib/lin64:/home/raghu/tools/xilinx/Vivado/2013.3/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD=`dirname "$0"`
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log dma3_wrapper.rds -m64 -mode batch -messageDb vivado.pb -source dma3_wrapper.tcl

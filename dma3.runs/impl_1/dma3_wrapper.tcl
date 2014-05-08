proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param gui.test TreeTableDev
  create_project -in_memory -part xc7z020clg484-1
  set_property board em.avnet.com:zynq:zed:d [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir /home/raghu/work/vivadoProjects/bmm/dma3.data/wt [current_project]
  set_property parent.project_dir /home/raghu/work/vivadoProjects/bmm [current_project]
  add_files /home/raghu/work/vivadoProjects/bmm/dma3.runs/synth_1/dma3_wrapper.dcp
  read_xdc -ref dma3_processing_system7_0_0 -cells inst /home/raghu/work/vivadoProjects/bmm/dma3.srcs/sources_1/bd/dma3/ip/dma3_processing_system7_0_0/dma3_processing_system7_0_0.xdc
  read_xdc -prop_thru_buffers -ref dma3_proc_sys_reset_1 -cells U0 /home/raghu/work/vivadoProjects/bmm/dma3.srcs/sources_1/bd/dma3/ip/dma3_proc_sys_reset_1/dma3_proc_sys_reset_1_board.xdc
  read_xdc -ref dma3_proc_sys_reset_1 -cells U0 /home/raghu/work/vivadoProjects/bmm/dma3.srcs/sources_1/bd/dma3/ip/dma3_proc_sys_reset_1/dma3_proc_sys_reset_1.xdc
  read_xdc -ref dma3_axi_cdma_0_0 -cells U0 /home/raghu/work/vivadoProjects/bmm/dma3.srcs/sources_1/bd/dma3/ip/dma3_axi_cdma_0_0/dma3_axi_cdma_0_0.xdc
  read_xdc /home/raghu/work/vivadoProjects/bmm/dma3.srcs/constrs_1/new/dma3_wrapper.xdc
  read_xdc -ref dma3_axi_dwidth_converter_0_1 -cells inst /home/raghu/work/vivadoProjects/bmm/dma3.srcs/sources_1/bd/dma3/ip/dma3_axi_dwidth_converter_0_1/dma3_axi_dwidth_converter_0_1_clocks.xdc
  read_xdc -ref dma3_auto_us_50 -cells inst /home/raghu/work/vivadoProjects/bmm/dma3.srcs/sources_1/bd/dma3/ip/dma3_auto_us_50/dma3_auto_us_50_clocks.xdc
  read_xdc -ref dma3_auto_us_51 -cells inst /home/raghu/work/vivadoProjects/bmm/dma3.srcs/sources_1/bd/dma3/ip/dma3_auto_us_51/dma3_auto_us_51_clocks.xdc
  read_xdc -ref dma3_auto_us_52 -cells inst /home/raghu/work/vivadoProjects/bmm/dma3.srcs/sources_1/bd/dma3/ip/dma3_auto_us_52/dma3_auto_us_52_clocks.xdc
  read_xdc -ref dma3_auto_us_53 -cells inst /home/raghu/work/vivadoProjects/bmm/dma3.srcs/sources_1/bd/dma3/ip/dma3_auto_us_53/dma3_auto_us_53_clocks.xdc
  read_xdc -ref dma3_auto_us_54 -cells inst /home/raghu/work/vivadoProjects/bmm/dma3.srcs/sources_1/bd/dma3/ip/dma3_auto_us_54/dma3_auto_us_54_clocks.xdc
  read_xdc -ref dma3_auto_us_55 -cells inst /home/raghu/work/vivadoProjects/bmm/dma3.srcs/sources_1/bd/dma3/ip/dma3_auto_us_55/dma3_auto_us_55_clocks.xdc
  read_xdc -ref dma3_auto_us_56 -cells inst /home/raghu/work/vivadoProjects/bmm/dma3.srcs/sources_1/bd/dma3/ip/dma3_auto_us_56/dma3_auto_us_56_clocks.xdc
  read_xdc -ref dma3_auto_us_57 -cells inst /home/raghu/work/vivadoProjects/bmm/dma3.srcs/sources_1/bd/dma3/ip/dma3_auto_us_57/dma3_auto_us_57_clocks.xdc
  read_xdc -ref dma3_auto_us_58 -cells inst /home/raghu/work/vivadoProjects/bmm/dma3.srcs/sources_1/bd/dma3/ip/dma3_auto_us_58/dma3_auto_us_58_clocks.xdc
  read_xdc -ref dma3_auto_us_59 -cells inst /home/raghu/work/vivadoProjects/bmm/dma3.srcs/sources_1/bd/dma3/ip/dma3_auto_us_59/dma3_auto_us_59_clocks.xdc
  read_xdc -ref dma3_auto_us_60 -cells inst /home/raghu/work/vivadoProjects/bmm/dma3.srcs/sources_1/bd/dma3/ip/dma3_auto_us_60/dma3_auto_us_60_clocks.xdc
  read_xdc -ref dma3_auto_us_61 -cells inst /home/raghu/work/vivadoProjects/bmm/dma3.srcs/sources_1/bd/dma3/ip/dma3_auto_us_61/dma3_auto_us_61_clocks.xdc
  link_design -top dma3_wrapper -part xc7z020clg484-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force dma3_wrapper_opt.dcp
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  place_design 
  catch { report_io -file dma3_wrapper_io_placed.rpt }
  catch { report_clock_utilization -file dma3_wrapper_clock_utilization_placed.rpt }
  catch { report_utilization -file dma3_wrapper_utilization_placed.rpt -pb dma3_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file dma3_wrapper_control_sets_placed.rpt }
  write_checkpoint -force dma3_wrapper_placed.dcp
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  catch { report_drc -file dma3_wrapper_drc_routed.rpt -pb dma3_wrapper_drc_routed.pb }
  catch { report_power -file dma3_wrapper_power_routed.rpt -pb dma3_wrapper_power_summary_routed.pb }
  catch { report_route_status -file dma3_wrapper_route_status.rpt -pb dma3_wrapper_route_status.pb }
  catch { report_timing_summary -file dma3_wrapper_timing_summary_routed.rpt -pb dma3_wrapper_timing_summary_routed.pb }
  write_checkpoint -force dma3_wrapper_routed.dcp
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  write_bitstream -force dma3_wrapper.bit 
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

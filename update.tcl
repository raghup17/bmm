if { $argc != 3 } {
	puts "Usage: <scriptName> <absolute_path_to_dir_containing_proj_folder> <projName> <hls>"
	exit -1
}
set projPrefix [lindex $argv 0]
set projName [lindex $argv 1]
set hlsName [lindex $argv 2]
set projPath "${projPrefix}/${projName}"
set topLevelDesign "${projName}.bd"

puts "Vivado update script: Running with the following args"
puts "projPath : $projPath"
puts "topLevelDesign: $topLevelDesign"
puts "HLS module name: $hlsName, solution1"

cd $projPath
open_project ${projName}.xpr
open_bd_design ${projName}.srcs/sources_1/bd/${projName}/${projName}.bd
update_ip_catalog -rebuild 
#-repo_path ${projPath}/hls/${hlsName}/solution1/impl
upgrade_bd_cells [get_bd_cells [list /${hlsName}_0]]
reset_run synth_1
launch_runs synth_1 -jobs 2
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 2
wait_on_run impl_1
open_run impl_1
open_bd_design ${projName}.srcs/sources_1/bd/${projName}/${projName}.bd
export_hardware [get_files ${projName}.srcs/sources_1/bd/${projName}/${projName}.bd] [get_runs impl_1] -bitstream
exit

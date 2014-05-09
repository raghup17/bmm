set projPrefix /home/raghu/w/vivadoProjects 
set projName dma3
set folderName bmm
set hlsName bmm_top
set projPath "${projPrefix}/${folderName}"
set topLevelDesign "${projName}.bd"
puts "Vivado update script: Running with the following args"
puts "projPath : $projPath"
puts "topLevelDesign: $topLevelDesign"
puts "HLS module name: $hlsName, solution1"
cd $projPath
open_project ${projName}.xpr
open_bd_design ${projName}.srcs/sources_1/bd/${projName}/${projName}.bd
report_ip_status -name ipstatus
update_ip_catalog -rebuild
open_bd_design ${projName}.srcs/sources_1/bd/${projName}/${projName}.bd
report_ip_status -name ipstatus
upgrade_bd_cells [get_bd_cells [list /${hlsName}_0 /${hlsName}_1 /${hlsName}_2 /${hlsName}_3]]
reset_run synth_1
launch_runs synth_1 -jobs 16
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 16
wait_on_run impl_1
open_run impl_1
open_bd_design ${projName}.srcs/sources_1/bd/${projName}/${projName}.bd
export_hardware [get_files ${projName}.srcs/sources_1/bd/${projName}/${projName}.bd] [get_runs impl_1] -bitstream
exit

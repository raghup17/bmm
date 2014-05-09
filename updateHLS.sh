#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage $0 <hlsTopModule>"
	echo "Works only if <hlsProjectName> and <hlsTopModule> are of the same name"
	exit -1
fi
export float_scale=2
function float_eval()
{
    local stat=0
    local result=0.0
    if [[ $# -gt 0 ]]; then
        result=$(echo "scale=$float_scale; $*" | bc -q 2>/dev/null)
        stat=$?
        if [[ $stat -eq 0  &&  -z "$result" ]]; then stat=1; fi
    fi
    echo $result
    return $stat
}

projectsHome=/home/raghu/w/vivadoProjects
vivadoFolderName=bmm
vivadoProjName=dma3

hlsTop=$1
hlsProjName=${hlsTop}
hlsProjLoc=${projectsHome}/${vivadoFolderName}/hls/$hlsTop
solName=solution1

echo "HLS top is $hlsTop"
version=`grep "MODULE.*${hlsTop}_0.*HWVERSION" ${vivadoProjName}.sdk/SDK/SDK_Export/hw/${vivadoProjName}.xml | grep -o "HWVERSION=\"[0123456789.]*\"" | grep -o "[0-9]*\.[0-9]*"`
newVersion=$(float_eval "$version + 1.0")
#newVersion="18.0"
echo "IP will be upgraded to version ${newVersion} from ${version}"

hlsScriptName=hls.tcl
# Create a script AND remove existing impl directory
rm -f $hlsScriptName
rm -rf $hlsProjLoc/$solName/impl

echo "cd ${projectsHome}/${vivadoFolderName}/hls" >> $hlsScriptName
echo "open_project $hlsProjName" >> $hlsScriptName
echo "open_solution $solName" >> $hlsScriptName
echo "csynth_design" >> $hlsScriptName
echo "export_design -format ipxact -version \"$newVersion\"" >> $hlsScriptName
echo "exit" >> $hlsScriptName

# Invoke the script from vivado_hls -f
vivado_hls -f $hlsScriptName

if [ $? -ne 0 ]; then
	echo "Vivado HLS error, quitting!"
	exit $?
fi


echo "Creating vivado update script.."
vivadoScriptName=updateVivado.tcl
rm -f ${vivadoScriptName}

echo "set projPrefix ${projectsHome} " >> ${vivadoScriptName}
echo "set projName ${vivadoProjName}" >> ${vivadoScriptName}
echo "set folderName ${vivadoFolderName}" >> ${vivadoScriptName}
echo "set hlsName ${hlsTop}" >> ${vivadoScriptName}
echo 'set projPath "${projPrefix}/${folderName}"' >> ${vivadoScriptName}
echo 'set topLevelDesign "${projName}.bd"' >> ${vivadoScriptName}

echo 'puts "Vivado update script: Running with the following args"' >> ${vivadoScriptName}
echo 'puts "projPath : $projPath"' >> ${vivadoScriptName}
echo 'puts "topLevelDesign: $topLevelDesign"' >> ${vivadoScriptName}
echo 'puts "HLS module name: $hlsName, solution1"' >> ${vivadoScriptName}

echo 'cd $projPath' >> ${vivadoScriptName}
echo 'open_project ${projName}.xpr' >> ${vivadoScriptName}
echo 'open_bd_design ${projName}.srcs/sources_1/bd/${projName}/${projName}.bd' >> ${vivadoScriptName}
echo 'report_ip_status -name ipstatus' >> ${vivadoScriptName}
echo 'update_ip_catalog -rebuild'  >> ${vivadoScriptName}
echo 'open_bd_design ${projName}.srcs/sources_1/bd/${projName}/${projName}.bd' >> ${vivadoScriptName}
echo 'report_ip_status -name ipstatus' >> ${vivadoScriptName}
echo 'upgrade_bd_cells [get_bd_cells [list /${hlsName}_0 /${hlsName}_1 /${hlsName}_2 /${hlsName}_3]]' >> ${vivadoScriptName}
echo 'reset_run synth_1' >> ${vivadoScriptName}
echo 'launch_runs synth_1 -jobs 16' >> ${vivadoScriptName}
echo 'wait_on_run synth_1' >> ${vivadoScriptName}
echo 'launch_runs impl_1 -to_step write_bitstream -jobs 16' >> ${vivadoScriptName}
echo 'wait_on_run impl_1' >> ${vivadoScriptName}
echo 'open_run impl_1' >> ${vivadoScriptName}
echo 'open_bd_design ${projName}.srcs/sources_1/bd/${projName}/${projName}.bd' >> ${vivadoScriptName}
echo 'export_hardware [get_files ${projName}.srcs/sources_1/bd/${projName}/${projName}.bd] [get_runs impl_1] -bitstream' >> ${vivadoScriptName}
echo 'exit' >> ${vivadoScriptName}


vivado -mode batch -source ${vivadoScriptName}

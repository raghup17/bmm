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

projectsHome=/home/raghu/work/projects
vivadoTop=dma3
vivadoProjName=${vivadoTop}

hlsTop=$1
hlsProjName=${hlsTop}
hlsProjLoc=${projectsHome}/${vivadoProjName}/hls/$hlsTop
solName=solution1

echo "HLS top is $hlsTop"
version=`grep "MODULE.*${hlsTop}.*HWVERSION" ${vivadoProjName}.sdk/SDK/SDK_Export/hw/${vivadoProjName}.xml | grep -o "HWVERSION=\"[0123456789.]*\"" | grep -o "[0-9]*\.[0-9]*"`
newVersion=$(float_eval "$version + 1.0")
# newVersion="10.0"

hlsScriptName=hls.tcl
# Create a script
rm -f $hlsScriptName

echo "cd ${projectsHome}/${vivadoProjName}/hls" >> $hlsScriptName
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

# vivado -mode batch -source "update.tcl ${projectsHome} ${vivadoProjName} ${hlsTop}_0"

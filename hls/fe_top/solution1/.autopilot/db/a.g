#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/raghu/work/projects/dma3/hls/fe_top/solution1/.autopilot/db/a.g.bc ${1+"$@"}

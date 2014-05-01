#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/raghu/work/projects/dma3/hls/simple_top/solution1/.autopilot/db/a.g.bc ${1+"$@"}

#!/bin/bash

begin=20210902
end=20210926
#begin=20210903
#end=20210903

while [ "$begin" -le "$end" ]; do
    next=$(date +%Y%m%d --date="$begin + 1 day")
    echo "Processing ${begin}"
    /opt/pbs/default/bin/qsub -Wblock=true -v current_ymd=${begin} ./run_FE_AK_ExtAnA_nodes.pbs
    begin=$next
done

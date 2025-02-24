#!/bin/bash
# Monitor CPU usage every 5 seconds and warn if above 90%.

while true; do
    usage=$(awk -v prev_idle=0 -v prev_total=0 '
    {idle=$5; total=$2+$3+$4+$5+$6+$7+$8} 
    {usage=100*(1-(idle-prev_idle)/(total-prev_total))} 
    {prev_idle=idle; prev_total=total} 
    END {print usage}' /proc/stat)
    
    echo "CPU Usage: ${usage}%"

    if (( $(echo "$usage > 90" | bc -l) )); then
        echo "Warning: CPU usage is above 90%!"
    fi

    sleep 5
done

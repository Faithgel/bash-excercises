#!/bin/bash
# Script to continuously monitor CPU usage and alert if it exceeds 90%

threshold=90

while true; do
    cpu_usage=$(top -bn1 | awk '/Cpu/ {print $2}' | cut -d'.' -f1)
    
    echo "CPU Usage: $cpu_usage%"

    if (( cpu_usage > threshold )); then
        echo "ALERT: CPU usage exceeded $threshold%!"
    fi

    sleep 5
done

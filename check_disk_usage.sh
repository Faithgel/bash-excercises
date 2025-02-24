#!/bin/bash
# Script to check disk usage and warn if it exceeds 80%

threshold=80
usage=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

echo "Current disk usage: $usage%"

if (( usage > threshold )); then
    echo "Warning: Disk usage exceeds ${threshold}%!"
fi

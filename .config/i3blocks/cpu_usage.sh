#!/bin/bash

cpu_usage=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage}')
cpu_usage=${cpu_usage%.*}  # Remove decimals

if [ "$cpu_usage" -lt 50 ]; then
  color="#00FF00"  # Green for CPU usage below 50%
elif [ "$cpu_usage" -lt 75 ]; then
  color="#FFFF00"  # Yellow for CPU usage between 50% and 75%
else
  color="#FF0000"  # Red for CPU usage above 75%
fi

echo "$cpu_usage%"
echo
echo "$color"

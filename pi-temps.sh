#!/bin/bash

# This script displays CPU/GPU temps for raspberry pi

cpu=$(</sys/class/thermal/thermal_zone0/temp)
echo "$(hostname) @ $(date)"
echo "-----------------TEMP------------------"
echo "GPU: $(vcgencmd measure_temp | grep  -o -E '[[:digit:]].*')"
echo "CPU: $((cpu/1000))'C"


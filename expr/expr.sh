#!/bin/bash

total_mem=$( free | grep Mem | awk '{print $2}')

used_mem=$( free | grep Mem | awk '{print $3}' )

percent_mem=$( expr "$used_mem" \* 100 / "$total_mem" )

echo "The percentage of memory used is: $percent_mem"

if [ "$percent_mem" -gt 100 ]; then

	echo "Warning: used above 10%"

fi

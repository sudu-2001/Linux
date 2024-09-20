#!/bin/bash

total_mem=$( free | grep Mem | awk '{print $2}' )

used_mem=$( free | grep Mem | awk '{print $3}' )

percent_mem=$( expr "$used_mem" \* 100 / "$total_mem" )

echo "Your Memory usage is: $percent_mem"

if [ "$total_mem" -gt 10 ]; then 

	echo "Waring:Memory is used greater than 10%"

fi

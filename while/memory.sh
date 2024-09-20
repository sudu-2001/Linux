#!/bin/bash

while true; do
    # Get the current CPU usage
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

    # Check if CPU usage is greater than 90%
    if (( $(echo "$cpu_usage > 1.0" | bc -l) )); then
        echo "The CPU usage is greater than 1%"
	echo "The total cpu usage is: $cpu_usage"
    fi

    # Sleep for 10 seconds before checking again (optional)
    sleep 2
done


#!/bin/bash

read -p "Enter the service name to start: " service

while true; do

	if ! systemctl is-active --quiet "$service"; then

		echo "$service is starting"

		sudo systemctl start "$service".service

		echo "$service is restarted"

	else

		echo "service is already running"

	fi

	sleep 2

done

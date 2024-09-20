#!/bin/bash

response=""

while [ "$response" != "Yes" ] && [ "$responese" != "No" ]; do

	read -p "Enter the response (Yes/No)" response

	if [ "$response" == "Yes" ]; then

		echo "process is initializing"

	elif [ "$response" == "No" ]; then

		echo "proccess aborted"

		exit 1

	else

		echo "Invalid option"

	fi

done

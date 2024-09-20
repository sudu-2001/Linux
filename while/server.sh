#!/bin/bash

read -p "Enter the IP address" service

while ! ping -c "$server" &> /dev/null; do

	echo "Waiting for the $server server to reachable"

	sleep 2

done

echo "$server is now reachable"



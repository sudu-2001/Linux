#!/bin/bash

tmp_file=$(mktemp)

cleanup() {

	echo "Cleaning the up the file"

	rm -f "$tmp_file"

	exit 0

}

trap cleanup SIGINT SIGTERM

echo "Creating temprorary file: $temp_file"

echo "Working... press Ctrl+C to terminate"

while true; do

	echo "Processing"

	sleep 2

done


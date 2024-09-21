#!/bin/bash

while [ "$#" -gt 0 ]; do

	case "$1" in

		-a) echo "option A";;

		-b) echo "option B";;

		*) echo "Unkown option: $1";;

	esac

	shift

	sleep 2

done


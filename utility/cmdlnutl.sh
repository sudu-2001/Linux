#!/bin/bash

if [ $# -ne 2 ]; then

	echo "Usage: $0 <Username> <email>"

	exit 1

fi

username=$1

email=$2

logfile="1.log"

timestamp=$(date '+%Y/%m/%d %H:%M:%S')

echo "$timestamp Name=$username Email=$email" >> "1.log"

echo "Successfully loged in ..."

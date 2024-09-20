#!/bin/bash

echo -e "The present working directory is: $(pwd)"

echo -e "\nListing all the files (permission,date,size):"
ls -l

echo -e "\nListing all the hidden files:"
ls -a

echo -e "\nListing all output of files into directory.log"
ls -la > directory.log

echo "\nThe output of the all files are storing in directory.log"

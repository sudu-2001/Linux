#!/bin/bash 

hour=$(date +%H)

date=$(date +%d)

bak=$(expr "$hour" + "$date")

cp expr.sh "$bak".sh

echo "the file is backed up to $bak.sh"

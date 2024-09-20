#!/bin/bash

log_entry="Error at line 45: Disk full"

error=$( expr "$log_entry" : '.*line \([0-9]*\)')

echo "Error: $error"


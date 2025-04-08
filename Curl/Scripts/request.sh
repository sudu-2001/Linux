#!/bin/bash
URL="https://example.com/api"
DATA="username=JohnDoe&password=12345"

RESPONSE=$(curl -s -X POST -d "$DATA" "$URL")
echo "$RESPONSE" > output.txt   # Save response to a file
echo "Server response saved to output.txt"

#!/bin/bash

myvar="hello world"

echo "the value is: $myvar"

set -x

if [ -f /nonexist ]; then

	echo "the file is not exist"

else

	echo "the file exist"

fi

echo "Script finishing"

set -x

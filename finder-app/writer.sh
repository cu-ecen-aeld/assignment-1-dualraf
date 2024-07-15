#!/bin/bash
if [ $# -eq 2 ]; then
	writefile=$1
	writestr=$2
	path="${writefile%/*}"
	mkdir -p $path
	echo "$writestr" > $writefile
	exit 0
else
	echo "Error, pass 2 parameters"
	exit 1
fi

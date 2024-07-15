#!/bin/bash
if [ $# -eq 2 ]; then
	
	if [ -d "$1" ]; then
		
		filesdir=$1
		searchstr=$2
		nfiles=$(ls "$filesdir" | wc -l)
		nlines=$(grep -rn -c "$searchstr" "$filesdir" | wc -l)
		echo "The number of files are $nfiles and the number of matching lines are $nlines"
		exit 0
	else
		echo "$1 is not a directory";
		exit 1
	fi
else
	echo "failed: 2 parameters expected";
	exit 1
fi

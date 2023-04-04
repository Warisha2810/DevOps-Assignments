#!/bin/bash

if [ $# -eq 0 ]
	then
		echo "Error: Please provide an input file."
		exit 1
fi

file=$1

tr '[:upper:]' '[:lower:]' < $file | sed 's/[^a-zA-Z]/ /g' | tr -s ' ' '\n' | sort | uniq -c | sort -nr

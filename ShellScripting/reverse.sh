#!/bin/bash

if [ $# -eq 0 ];
then
	echo "Error: No input provided."
	exit 1
fi

echo "$1" | rev | awk '{
	for(i=NF; i>=1; i--){
		if(i==NF) printf("%s", toupper(substr($i,1,1))tolower(substr($i,2)));
		else printf("%s", tolower($i));
		printf" ";
	}
	printf"\n";
}'

#!/bin/bash

file=$1

while read -r line; do
line=$(echo "$line" | tr '[:upper:]' '[:lower:]' | sed 's/[[:punct:]]//g')
	for i in $line; do
		((count[$i]++))
	done
done<"$file"

for i in "${!count[@]}"; do
	echo "$i" "${count[$i]}"
done | sort -k2 -rn

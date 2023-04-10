#!/bin/bash

words=("ab" "cd" "ef")
len=${#words[@]}
word_len=${#words[0]}

for ((i=0; i<$len; i++)); do
	for((j=i+1; j<$len; j++)); do
		echo "${words[i]}${words[j]}"
		echo "${words[j]}${words[i]}"
	done
done 

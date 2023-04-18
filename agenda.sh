#!/bin/bash

today=$(date +%Y-%m-%d)
tomorrow=$(date -d "+1 day" +%Y-%m-%d)

printf "%-20s %-20s %-20s\n" "Meeting Name" "Date" "Time"
while read line;
do
		date=$(echo $line | awk '{print $1}')
		time=$(echo $line | awk '{print $2}')
		meeting_name=$(echo $line | cut -d' ' -f3-)
	if [[ $line == *"$today"* ]] || [[ $line == *"$tomorrow"* ]]
	then
		printf "%-20s %-20s %-20s\n" "$meeting_name" "$date" "$time"
	fi

done < meetings.txt

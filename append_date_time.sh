#!/bin/bash

DIRECTORY="backup_directory"

if [ ! -d "$DIRECTORY" ]; then
	mkdir $DIRECTORY
	echo "$DIRECTORY created"
fi

for day in monday tuesday wednesday thursday friday saturday sunday; do
	DAY_DIR=$DIRECTORY/$day
		
	if [ ! -d "$DAY_DIR" ]; then
		mkdir=$DAY_DIR
		echo "$DAY_DIR created!"
	fi
	datetime=$(date "+%Y-%m-%d %H:%M:%S")
	echo "$datetime" >> "$DAY_DIR/notes.txt"
done


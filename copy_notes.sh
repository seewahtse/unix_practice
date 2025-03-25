#!/bin/bash


NOTES_BACKUP_DIR='notes_backup'
BACKUP_DIR='backup_directory'
count=0

for day in $BACKUP_DIR/*; do
	if [ -d "$day" ]; then
		
		notes_file="$day/notes.txt"

		if [ -f "$notes_file" ]; then
			NEW_DIR=$(basename "$day")
			#echo "$NEW_DIR"
			if [ ! -f "${NOTES_BACKUP_DIR}/${NEW_DIR}_notes.txt" ]; then
				cp "$notes_file" "${NOTES_BACKUP_DIR}/${NEW_DIR}_notes.txt"
				count=$((count+1))
			else
				cat $notes_file >> ${NOTES_BACKUP_DIR}/${NEW_DIR}_notes.txt
			fi
		fi
	fi
done

echo " ${count} files were copied"




  





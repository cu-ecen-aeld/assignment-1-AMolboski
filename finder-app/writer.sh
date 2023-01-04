#!/bin/bash
# Writer Script
# Written for Linux System Programming And Introduction to Buildroot: Assigment 1
# Written by Andrew Molboski, 4 Jan 2023

if [ $# -lt 2 ]
then
	echo "Invalid number of arguments; please enter 2 arguments: "
	echo " - Argument 1 must be a file path (the location and file to be screated)"
	echo " - Argument 2 must be a string (the text to be written in the file)"
	exit 1
else
	mkdir -p "$(dirname "$1")"
	if [ $? -eq 1 ] 
	then
		echo "Error creating file"
		exit 1
	else
		touch $1
		echo $2 > $1
		exit 0
	fi	
fi

#!/usr/bin/env bash

function nr_files {
	local numfiles=0
	for file in *; do
    	numfiles=$(($numfiles+1))
	done
	echo $numfiles
}

numfiles=$(nr_files)

echo "How many files are there in the current directory?"
read guess
echo "You entered: $guess"

while [[ $numfiles -ne $guess ]]
do
	if [[ $numfiles -lt $guess ]]
	then
		echo "The number of files in the directory is lower, try again"
		read guess
	else
		echo "The number of files in the directory is higher, try again"
		read guess
	fi
done

echo "Congratulations you correctly guessed the number of files in the directory"
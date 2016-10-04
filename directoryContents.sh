#!/bin/bash

#
#Script to list all files and directories
#


for i in *
do
	if [ -d $i ];
		then 
		echo "$i is a directory"
	elif [ -p $i ];
		then
		echo "$i is a pipe"
	elif [ -f $i ];
		then
		echo "$i is a file"
	fi
done

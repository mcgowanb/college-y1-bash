#!/bin/bash

name=bob

if [ $LOGNAME != $name ]
	then
	echo "You're not $name"
	exit 1;
	
else
	echo "Wow, you actually are $name"
fi
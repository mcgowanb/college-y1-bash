#!/bin/bash

echo "Enter an integer"
read number

if [ $number -gt 5 ]
	then echo "$number is greater than 5"
else
	echo "$number is less than 5"
fi
#!/bin/bash

echo Enter the age of your child: numbers less than or equal to 12 only
read age

if  [ $age -le 2 ]
	then
	echo Child is a baby
elif [ $age -le 7 ]
	then
	echo Not a baby any more
elif [ $age -le 12 ]
	then
	echo Almost a teenager
else
	echo Error, age should be less than or equal to 12 only
fi


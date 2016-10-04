#!/bin/bash
echo

for file in *
do
	ls -l $file #lists files in current directory
done

echo; echo

for file in [a]*
do
	rm -f $file	#remove file
	echo Removed file $file
done
echo

exit 0
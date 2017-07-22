
echo "Input a number:"
read number

echo "Input another number:"
read otherNumber

if [ $number -lt $otherNumber ]
	then
	echo "$number is less than $otherNumber"
elif [ $number -eq $otherNumber ] 
	then
	echo "$number is equal to $otherNumber"
else
	echo "$number is greater than $otherNumber"
fi

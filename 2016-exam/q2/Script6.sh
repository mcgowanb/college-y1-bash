res=()

echo "Enter a number"
read res[0]
echo "Enter another number"
read res[1]
echo "enter a final number"
read res[2]

for n in ${res[*]}
do
        echo This number is $n
done
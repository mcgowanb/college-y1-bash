#
#Script getting arguments in from user interation
#

echo -n Please enter a number:
read var1
echo var1 is now $var1

#this will add 2 + 3 + whatver you added in
echo -n the result is:
expr 2 + 3 + $var1

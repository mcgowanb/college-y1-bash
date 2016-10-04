#
#Script to give user options for input
#

echo What is your favourite colour?

select colourVar in Red Yellow Green Other; do
break
done

echo You have selected $colourVar

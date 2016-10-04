#!/bin/bash

addNumbers()
{
    TOTAL=$[$1+$2]
    echo Total for these numbers is: $TOTAL
}

echo The first value you entered is $1 and the second value you entered is $2
addNumbers $1 $2
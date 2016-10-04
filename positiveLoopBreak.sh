#!/bin/bash

while true
    do
    echo -n "Enter a positive number: "
    read myNumber
    
    if [ $myNumber -gt 0 ]
    then
        break
    else
        echo "Not a positive number, please try again"
        
    fi

done

echo "You have entered number $myNumber"
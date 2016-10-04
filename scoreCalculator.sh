#!/bin/bash

AVERAGE=0
SUM=0
NUM=0

while true
    do
    echo -n "Enter Student mark [0 - 100] (q to quit) "
    read MARK
    
    if [ $MARK == "q" ]
        then
        break
    
    elif [ $MARK -ge 0 -a $MARK -le 100 ]
        then
        SUM=$[$SUM+$MARK]
        NUM=$[$NUM+1]
        
    
        
    else
        echo "Positive numbers greater than 0 and less than 100 please: "
        
    fi

done

AVERAGE=$[$SUM/$NUM]
echo "Average Mark: $AVERAGE"

#!/bin/bash

leapYear(){
    if [ $(($1%4)) -eq 0 ] && [ $(($1%100)) -ne 0 ]
    then 
        echo "1"
    else
        echo "0"
    fi
}

if [ $(($1%4)) -eq 0 ] && [ $(($1%100)) -ne 0 ]
then 
    echo $1" is a leap year."
else
    echo $1" is NOT a leap year."
fi

Leap=""

isLeap
while [  ]

echo "Current date is: " $(date)
echo "Nearest Leap Year is: "$Leap
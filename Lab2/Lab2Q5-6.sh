#!/bin/bash

leapYear() {
    # echo $1
    if [ $(($1%4)) -eq "0" ] && [ $(($1%100)) -ne "0" ]
    then 
        isLeap=1
    else
        isLeap=0
    fi
}

if [ $(($1%4)) -eq 0 ] && [ $(($1%100)) -ne 0 ]
then 
    echo $1" is a leap year."
else
    echo $1" is NOT a leap year."
fi

currYear=$(date +"%Y")
echo "Current year is: " $currYear
isLeap=0
CurrentYearUp=$(date +"%Y")
while [ $isLeap -eq "0" ]
do
    CurrentYearUp=$(($CurrentYearUp+1))
    leapYear $CurrentYearUp
done
echo "Next Leap Year up is " $CurrentYearUp

isLeap=0
CurrentYearDown=$(date +"%Y")
while [ $isLeap -eq "0" ]
do
    CurrentYearDown=$(($CurrentYearDown-1))
    leapYear $CurrentYearDown
done
echo "Next Leap Year Down is " $CurrentYearDown

deltaUp=$(($CurrentYearUp-$currYear))
deltaDown=$(($currYear-$CurrentYearDown))
if [ $deltaUp -le $deltaDown ]
then
    leap=$CurrentYearUp
else
    leap=$CurrentYearDown
fi

echo "Nearest Leap Year is: " $leap

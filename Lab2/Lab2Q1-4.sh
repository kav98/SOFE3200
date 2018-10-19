#!/bin/bash
#    Lab 2 - SOFE3200

# If there are no arguments passed to the script
if [ $# -eq 0 ]
then
    # Print current calendar month and year without argument
    echo "Question Number 1: "
    cal
    # Print current calendar Year without argument
    echo "Question Number 4:"
    cal -y
# If there is one argument of month, print the calendar for that month    
elif [ $# -eq 1 ]
then
    echo "Question Number 2:"
    cal -m $1
# If there are two arguments of month and year, print out the calendar
# for that month and year
elif [ $# -eq 2 ]
then 
    echo "Question Number 3:"
    cal $1 $2
fi

# EOF

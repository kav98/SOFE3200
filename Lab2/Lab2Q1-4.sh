#!/bin/bash

if [ $# -eq 0 ]
then
    # Print current calendar month and year without argument
    echo "Question Number 1: "
    cal
    # Print current calendar Year without argument
    echo "Question Number 4:"
    cal -y
elif [ $# -eq 1 ]
then
    echo "Question Number 2:"
    cal -m $1
elif [ $# -eq 2 ]
then 
    echo "Question Number 3:"
    cal $1 $2
fi


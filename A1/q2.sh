#!/bin/bash

# A shell script to write the current time into
# the file "sampling.txt" every 5 seconds until
# user interupts

touch sampling.txt
while :
do
    date +"%T" > sampling.txt
    sleep 5
done
# while loop and take breaks for 5 seconds at a time with sleep
# date format is output in string notation to file sampling.txt

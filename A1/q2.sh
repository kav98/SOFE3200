#!/bin/bash

# A shell script to write the current time into
# the file "sampling.txt" every 5 seconds until
# user interupts

while :
do
    touch sampling.txt
    date +"%T" > sampling.txt
    sleep 5
done
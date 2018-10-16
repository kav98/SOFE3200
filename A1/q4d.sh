#!/bin/bash

#QUESTION 4d
printf "QUESTION 4d -\n"
grep -o . ATaleofTwoCities.txt AliceInWonderland.txt | sort -u
# grep -o . outputs all single characters (distinct)
# sort -u makes them unique

#!/bin/bash

#

#QUESTION 4a
echo "QUESTION 4a -"
wc -l ATaleofTwoCities.txt AliceInWonderland.txt

#QUESTION 4b
printf "\nQUESTION 4b -\n"
grep -oe "London" -e "Paris" ATaleofTwoCities.txt | wc -l

#QUESTION 4c
printf "\nQUESTION 4c -\n"
printf ("%d" % grep -o [aeiouAEIOU] ATaleofTwoCities.txt AliceInWonderland.txt | wc -l)
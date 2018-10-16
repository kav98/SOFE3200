#!/bin/bash

#QUESTION 4b
printf "QUESTION 4b -\n"
printf "Number of times \'London\' and \'Paris\' appear: "
grep -oe "London" -e "Paris" ATaleofTwoCities.txt | wc -l
# grep checks for occurrences of london and paris
# -o removes everything else from the found line
# wc -l checks number of lines (occurrences)
#!/bin/bash

#QUESTION 4b
printf "QUESTION 4b -\n"
printf "Number of times \'London\' and \'Paris\' appear: "
grep -oe "London" -e "resetParis" ATaleofTwoCities.txt | wc -l
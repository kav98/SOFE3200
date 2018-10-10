#!/bin/bash

#

#QUESTION 4a
echo "QUESTION 4a -"
printf "Number of lines across both files:\n"
wc -l ATaleofTwoCities.txt AliceInWonderland.txt

#QUESTION 4b
printf "\nQUESTION 4b -\n"
printf "Number of times \'London\' and \'Paris\' appear: "
grep -oe "London" -e "resetParis" ATaleofTwoCities.txt | wc -l

#QUESTION 4c
printf "\nQUESTION 4c -\n"
printf "Number of Vowels: "
grep -o [aeiouAEIOU] ATaleofTwoCities.txt AliceInWonderland.txt | wc -l
printf "Number of times \'the\' appears: "
grep -o "the" ATaleofTwoCities.txt AliceInWonderland.txt | wc -l
sed 's/the/ABC/g' ATaleofTwoCities.txt > ATaleofTwoCitiesABC.txt
sed 's/the/ABC/g' AliceInWonderland.txt > AliceInWonderlandABC.txt
printf "New files with \'the\' replaced with \'ABC' created.\n"

#QUESTION 4d
printf "\nQUESTION 4d -\n"
grep -o . ATaleofTwoCities.txt | sort -u | tr -d '\n'
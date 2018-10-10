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
grep -o [aeiouAEIOU] ATaleofTwoCities.txt AliceInWonderland.txt | wc -l
grep -o "the" ATaleofTwoCities.txt AliceInWonderland.txt | wc -l
sed 's/the/ABC/g' ATaleofTwoCities.txt > ATaleofTwoCitiesABC.txt
sed 's/the/ABC/g' AliceInWonderland.txt > AliceInWonderlandABC.txt
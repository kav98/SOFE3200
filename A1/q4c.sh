#!/bin/bash

#QUESTION 4c
printf "QUESTION 4c -\n"
printf "Number of Vowels: "
grep -o [aeiouAEIOU] ATaleofTwoCities.txt AliceInWonderland.txt | wc -l
printf "Number of times \'the\' appears: "
grep -o "the" ATaleofTwoCities.txt AliceInWonderland.txt | wc -l
sed 's/the/ABC/g' ATaleofTwoCities.txt > ATaleofTwoCitiesABC.txt
sed 's/the/ABC/g' AliceInWonderland.txt > AliceInWonderlandABC.txt
printf "New files with \'the\' replaced with \'ABC' created.\n"
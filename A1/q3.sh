#!/bin/bash

# 

read -p "Please input your name: " name
start=`date +%s`
# input=()
# score=0
for i in {1..5};
do
    case $i in
    1)
        printf "Can pigs fly?\n0: YES\n1: NO\n"
        ans="1"
    ;;
    2)
        printf "Do most humans have feet?\n0: YES\n1: NO\n"
        ans="0"
    ;;
    3)
        printf "Are lions vegan?\n0: YES\n1: NO\n"
        ans="1"
    ;;
    4)
        printf "Are dogs and cats related?\n0: YES\n1: NO\n"
        ans="1"
    ;;
    5)
        printf "Is the TA going to give me 100%%?\n0: YES\n1: NO\n"
        ans="0"
    ;;
    esac
    read -p "Please input answer: " choice
    case $choice in
    $ans)
        score=$(($score+1)) 
    ;;
    esac
    input+=$choice
done
echo $input
end=`date +%s`
runtime=$((end-start))
filename="$(date +"%m%d%Y")"
filename+="-"$runtime"-"
filename+=$name".txt"
touch $filename

printf "Runtime: $runtime seconds\n"
printf "Overall Score $score/5\n"
printf "All items are relased in the file: $filename\n"

printf "Runtime: $runtime seconds\n" >> $filename
printf "Overall Score $score/5\n\n" >> $filename

printf "Can pigs fly?\n0: YES\n1: NO\n" >> $filename
printf "Correct answer: 1\n" >> $filename
printf "Your answer: ${input:0:1}\n\n" >> $filename

printf "Do most humans have feet?\n0: YES\n1: NO\n" >> $filename
printf "Correct answer: 0\n" >> $filename
printf "Your answer: ${input:1:1}\n\n" >> $filename

printf "Are lions vegan?\n0: YES\n1: NO\n" >> $filename
printf "Correct answer: 1\n" >> $filename
printf "Your answer: ${input:2:1}\n\n" >> $filename

printf "Are dogs and cats related?\n0: YES\n1: NO\n" >> $filename
printf "Correct answer: 1\n" >> $filename
printf "Your answer: ${input:3:1}\n\n" >> $filename

printf "Is the TA going to give me 100%%?\n0: YES\n1: NO\n" >> $filename
printf "Correct answer: 0\n" >> $filename
printf "Your answer: ${input:4:1}\n\n" >> $filename
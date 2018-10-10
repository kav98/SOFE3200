#!/bin/bash

# 

touch date 
read -p "Please input your name: " name
start=`date +%s`
input=()
for i in {1..5};
do
    case $i in
    1)
        printf "Can pigs fly?\n0: TRUE\n1: FALSE\n"
    ;;
    2)
        printf "Do most humans have feet?\n0: TRUE\n1: FALSE\n"
    ;;
    3)
        printf "Are lions vegan?\n0: TRUE\n1: FALSE\n"
    ;;
    4)
        printf "Are dogs and cats related?\n0: TRUE\n1: FALSE\n"
    ;;
    5)
        printf "Is the TA going to give me 100%%?\n0: TRUE\n1: FALSE\n"
    ;;
    esac
    read -p "Please input answer: " choice
    input+=choice
done
end=`date +%s`
runtime=$((end-start))
echo $runtime
filename="$(date +"%m%d%Y")"
echo $filename
filename+="-"$runtime"-"
echo $filename
filename+=$name".txt"
echo $filename
touch $filename

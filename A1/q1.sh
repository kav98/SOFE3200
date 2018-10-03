#!/bin/bash

# A shell script that takes 2 string inputs
# and reads the number of occurrences of
# the second string in the first string

echo "Q1: Input a string to count number of occurrences in string"
echo "Sample Input:"
echo "	String: abccddccacc"
echo "	Check: cc"
echo "Sample Output:"
echo "	3"
echo "Please Try Yourself -"
read -p "String: " STRING
read -p "Check:  " CHECK
echo $STRING | grep -o "$CHECK" | wc -l  
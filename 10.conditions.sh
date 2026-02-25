#!/bin/bash

number=$1
if [ $number -lt 10 ]; then 
    echo "Given number $number is less than 10"
else 
    echo "Given number $number is more than 10"
fi
NUMBER=$2

if [ $NUMBER -lt 10 ]; then
    echo "Given number $NUMBER is less than 10"
elif [ $NUMBER -eq 10 ]; then
    echo "Given number $NUMBER is equal to 10"
else
    echo "Given number $NUMBER is greater than to 10"
fi





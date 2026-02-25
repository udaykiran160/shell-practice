#!/bin/bash

number=$1

if [($number % 2) -ne 0] ; then
    echo " Given number $number is odd"
else 
    echo " Given number $number is even"
fi
#!/bin/bash

echo "enter a number"
read number
if [ $number -gt 0 ]; then
    echo "The number is positive number"
elif [ $number -lt 0 ]; then
    echo "The number is negative number"
else
    echo "The number is zero"
fi

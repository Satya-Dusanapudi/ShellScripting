#!/bin/bash

echo "Enter a number"
read num

if [ $((num % 2)) -eq 0 ]; then
    echo "Entered number $num is even"
else
    echo "Entered number $num is odd"
fi

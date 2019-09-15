#!/bin/bash
add_numbers(){
    sum=$(( $1 + $2 ))
    return $sum
}
add_numbers 25 10
result=$?
echo "Sum is: $result"

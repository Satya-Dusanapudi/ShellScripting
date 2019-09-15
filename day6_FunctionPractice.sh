#!/bin/bash
#greet user
greet_user(){
    echo "Hello, $1"
}
greet_user Satya!
multiply(){
   echo "Multiplication of two numbers is: $(( $1 * $2 ))"
}
multiply 5 4


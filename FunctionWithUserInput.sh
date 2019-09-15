#!/bin/bash
#Prompt the user to enter values and pass them to a function.
greet_user(){
    echo "Hello, $1!"
}
read -p "Enter your name: " name
greet_user "$name"
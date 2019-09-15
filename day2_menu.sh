#!/bin/bash
#selecting options from menu
echo "What would you like to do ?"
echo "Greet me"
echo "show current date"
echo "show current working directory"
echo "exit"
read choice
case $choice in
1)
    echo "Hello Satya, You are doing amazing"
    ;;
2)
    date
    ;;
3)
    pwd
    ;;
4)
    echo "chaos"
    exit
    ;;
*)
    echo " Invalid choice, please run again"
    ;;
esac

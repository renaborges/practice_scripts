#!/bin/bash

echo -e "\e[30;43m***** Case Statement *****\e[0m"
: 'Good alternative for a serie of IF / Else conditions/statements
Help to match several values against one value.
Syntax:
case expression in
    pattern1 )
        statements ;;
    pattern2 )
        statements ;;
    ...so on
esac 
'
#$1 means the script expects one argument to be passed at running time.
vehicle=$1

case $vehicle in
    "car" )
        echo "Rent of $vehicle is 100 dollar" ;;
    "van" )
        echo "Rent of $vehicle is 80 dollar" ;;
    "bicycle" )
        echo "Rent of $vehicle is 5 dollar" ;;
    "truck" )
        echo "Rent of $vehicle is 150 dollar" ;;
    #The wildcard means any other vehicle not in the list.
    * )
        echo "Unknown Vehicle!"
esac

echo -e "\e[30;43m***** Case Statement With Patterns - Regexpr *****\e[0m"

echo -e "Enter some character: \c"
read value

case $value in
    [a-z] )
        echo "User entered $value which is a lower letter" ;;
    [A-Z] )
        echo "User entered $value which is a CAPITAL LETTER" ;;
    [0-9] ) 
        echo "User entered $value which is a single number from 0 to 9" ;;
    ? )
        echo "User entered $value which is a Special Character" ;;
    * )
        echo "User entered $value which is an Unkown Input!" ;;
esac
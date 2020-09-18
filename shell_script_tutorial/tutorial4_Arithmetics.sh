#!/bin/bash

echo -e "\e[30;43m***** Arithmetic Operations *****\e[0m"

num1=20
num2=5

#These ways do NOT work with Float!
echo $(( num1 + num2 ))
echo $(( num1 - num2 ))
echo $(( num1 * num2 ))
echo $(( num1 / num2 ))
#The module operator is used for a remainder in a division
echo $(( num1 % num2 ))

echo

#Other ways to write 
echo $( expr $num1 + $num2 )
echo $( expr $num1 - $num2 )
#You have to scape the Asterisk
echo $( expr $num1 \* $num2 )
echo $( expr $num1 / $num2 )

echo -e "\e[30;43m***** Floating Point Math Operations *****\e[0m"

#bc stands for Base Calculator
num3=20.5
num4=5

echo "20.5 + 5" | bc
echo "$num3" + "$num4" | bc
echo "20.5 - 5" | bc
echo "20.5 * 5" | bc
: ' For division you use the "scale" 
and declare how many decimal points 
you want the result to be, 
in this case I declared 2.'
echo "scale=2; 20.5 / 5" | bc
echo "20.5 % 5" | bc

echo -e "\e[30;43m***** Square Root *****\e[0m"

num5=27

#The -l is to call the maths library in bc.
#-l, --mathlib - Define the standard math library.
echo "scale=2; sqrt($num5)" | bc -l
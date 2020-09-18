#!/bin/bash

echo -e "\e[30;43m***** Read Only Variables *****\e[0m"


: ' You can make a Variable or a Function to be 
Read Only using the readonly word.
Note that to make a Fucntion Read Only you should 
use the flag -f too (readonly -f)
To check all Read Only system variables just write 
readonly in the terminal
'
#Setting a variable
var=35

#Setting this variable to Read Only
readonly var

#Trying to change the variable. Should get an error output.
var=50

#Printing variable
echo "var is equal to $var"


echo -e "\e[30;43m***** Read Only Function *****\e[0m"

#Declaring a Fucntion
hello(){
    echo "Hello World"
}

#Setting Function as Read Only
readonly -f hello

#Trying to change Fucntion output. Should give an error!
hello(){
    echo "Hello World Again"
}

#Printing Function output
hello
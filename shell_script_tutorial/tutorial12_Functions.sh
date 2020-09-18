#!/bin/bash

echo -e "\e[30;43m***** Functions *****\e[0m"

: 'Function is a code block that implements a set of operations.
You can use functions multiple times
Syntax 1:
function name(){
    commands
}

Syntax 2:
 name (){
    commands
}
'

function Hello(){
    echo "Hello World"
}

quit () {
    exit
}

: 'Calling the functions. The order you call the functions matter.
Example here: the word (house) below will not print because the Function (quit) 
is being called before it, and it has a code to terminate the script. I commented it out though.
'
Hello

#echo "Calling the quit Function"
#quit

echo "house"

echo -e "\e[30;43m***** Functions with Arguments *****\e[0m"

#You can pass 2 arguments when calling this function and it will print them.
function print(){
    echo $1 $2
}

print Good Morning 

echo -e "\e[30;43m***** Functions with Local Variables *****\e[0m"

: '
A variable inside a Function is a Local Variable. If you use the word (local)
in front of a local variable it will be set only when calling the function 
where it contains this local variable. Sometimes a Global variable (outside the Function)
has the same name of local variable and it could change the value of it if you do not state
local in front of it
'
function print(){
    local name="$1"
    echo "The name is $name"
}

print Bob

name="Tom"
echo "The name is $name"





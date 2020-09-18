#!/bin/bash

echo -e "\e[30;43m***** Until Loop *****\e[0m"
#In Until Loops the condition needs to be false for commands to run.

n=1

: '
until [ $n -ge 10 ]
do
    echo $n 
    (( n++ ))
done
'

until [ $n -ge 10 ]
do
    echo "Condition is False, $n is not -ge 10, keep running!"
    echo
    (( n++ ))
    echo "After increment:" $n
    if [ $n -ge 10 ]
    then
        echo "Condition is TRUE, $n is -ge 10. Until loop stopped!"
    fi
done
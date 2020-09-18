#!/bin/bash

echo -e "\e[30;43m***** BREAK Statement *****\e[0m"

: ' Even though the FOR loop condition should 
print 1 to 10, using the BREAK statement make 
it stops before the full iterarion.'
for (( i=1 ; i<=10 ; i++ ))
do
    if [ $i -gt 5 ]
    then
        break
    fi
    echo "$i"
done 

echo -e "\e[30;43m***** CONTINUE Statement *****\e[0m"

#It should be missing the numbers 3 and 6 from the output.
for (( i=1 ; i<=10 ; i++ ))
do
    if [ $i -eq 3 -o $i -eq 6 ]
    then
        continue 
    fi
    echo "$i"
done

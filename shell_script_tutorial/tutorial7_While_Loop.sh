#!/bin/bash

echo -e "\e[30;43m***** While Loops *****\e[0m"

n=1

#Simple loop. Commented out!
#In While Loops the condition needs to be true for commands to run.
: ' 
while [ $n -le 10 ]
do
    echo $n 
    (( n ++ ))
done 
'

while [ $n -le 10 ] #Other way (( $n <= 10 ))
do
    echo "Condition is true"
    echo
    (( n++ )) #Other way n=$(( n+1 ))
    #sleep 1 #Sleep for 1 second
    echo "After increment:" $n
    if [ $n -gt 10 ]
    then
        echo "Condition is NOT true! Loop Stopped!"
    fi
done 

echo -e "\e[30;43m***** Read Files Using While Loops *****\e[0m"

#Method 1
while read p
do
    echo $p
done < tutorial7.sh

#Method 2
cat tutorial7.sh | while read p
do
    echo $p
done

#Method 3 - IFS Internal Field Separator. It recognizes word boundaries.
#The -r flag prevents the backslash escape ( \ )from being interpreted
while IFS=' ' read -r line
do
    echo $line
done < /etc/host.conf
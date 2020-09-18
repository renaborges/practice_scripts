#!/bin/bash

: '
#Loop through a list of values and execute the command in the loop
#Syntax 1 List of Values or in a List Format:
for VARIABLE in 1 2 3 4 5 .. N
do 
    command 1
    command 2
    command N
done

#Syntax 2 give Files as Inputs:
for VARIABLE in file1 file2 file3
do
    command 1 on $VARIABLE
    command 2
    command N
done

#Syntax 3 give Linux commands:
for OUTPUT in $(Linux Or Unix Command Here)
do
    command 1 on $OUTPUT
    command 2 on $OUTPUT
    command N
done

#Syntax 4 use 3 Expressions.
#First can be used to initialize the value
#Second can be to compare if the condition is fulfilled 
#Third can be to incremment the value of the first expression
for (( EXP1; EXP2; EXP3 ))
do
    command 1
    command 2
    command 3
done
'
echo -e "\e[30;43m***** Basic FOR Loop *****\e[0m"

#Basic example:
for i in 1 2 3 4
do
    echo "Printing Single Numbers"
    echo $i
done

echo -e "\e[30;43m***** Basic FOR Loop with Notation Range *****\e[0m"


#The number 1 is the start value and 10 the last
#Notation range. Available in Bash version above 3.
for i in {1..10}
do
    echo "Printing Notation Range Numbers"
    echo $i
done

echo -e "\e[30;43m***** Notation Range FOR Loop With Increment of 2 *****\e[0m"


#Increase the range iteration {START..END..INCREMENT}
for i in {1..10..2}
do
    echo "Printing Notation Range Increase by 2!"
    echo $i
done

echo -e "\e[30;43m***** FOR Loop with Expressions *****\e[0m"


#Example with Expressions:
for (( i=0; i<5; i++ ))
do
    echo "Printing Using Expressions"
    echo $i
done

echo -e "\e[30;43m***** FOR Loop To Execute Simple Command *****\e[0m"

for command in 'ls -l' pwd date
do
    echo ------------ $command ---------------
    $command
done

echo -e "\e[30;43m***** FOR Loop To Execute Command with Wildcard *****\e[0m"

#It loops the whole current directory looking for directories
for item in *
do
    if [ -d $item ]
    then
        echo $item
    fi
done
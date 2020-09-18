#!/bin/bash

echo -e "\e[30;43m***** IF STATEMENTS *****\e[0m"
#Integer comparison
count=10
if [ $count -eq 10 ]
then
    echo "Condition is true"
else
    echo "Condition is false"
fi

#String comparison
word="abc"
if [ $word == "abcde" ]
then
    echo "Condition is true"
else
    echo "Condition is false"
fi

#To check more than one condition use elif
if [ $word == abdevo ]
then 
    echo "Condition abdevo is true"
elif [ $word == abc ]
then    
    echo "Condition is abc true"
else
    echo "None of the conditions are true"
fi

echo -e "\e[30;43m***** FILE TEST OPERATORS *****\e[0m"

: ' The -e makes the interpreter to scape the 'c' 
at the end. The \c means to keep the cursor 
at the same line. It asks the user to enter the name os a file'
echo -e "Enter the name of the file: \c"
#Here it saves the file name is the variable 'file_name'
read file_name

#The -e here means 'if file exists'
if [ -e "$file_name" ]
then    
    echo "$file_name found!"
else
    echo "$file_name NOT found"
fi

#The -s check if file is empty or not
if [ -s "$file_name" ]
then 
    echo "$file_name is not empty"
else
    echo "$file_name is empty"
fi

echo -e "\e[30;43m***** APPEND TEXT TO A FILE *****\e[0m"

if [ -f $file_name ]
then
    if [ -w "$file_name" ]
    then
        echo "Type something to this file: When done press ctrl+d to save and ctrl+c to quit."
        cat >> $file_name
    else
        echo "This is NOT a writable file!"
    fi
else
    echo "This file does NOT exist!"
fi
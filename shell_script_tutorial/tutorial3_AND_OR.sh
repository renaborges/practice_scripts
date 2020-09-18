#!/bin/bash

echo -e "\e[30;43m***** Logical 'AND' Operator *****\e[0m"

age=25

#Both conditions have to be true to be valid.
if [ "$age" -ge 18 ] && [ "$age" -le 30 ]
then
    echo "Valid Age! AND"
else
    echo "Age NOT Valid!"
fi

#Other ways of writting the above code:
#if [ "$age" -ge 18 -a "$age" -le 30 ]
#if [[ "$age" -ge 18 && "$age" -le 30 ]]

echo -e "\e[30;43m***** Logical 'OR' Operator *****\e[0m"

#(-ge 18 or -eq 30) is like between 18 and 30
age2=17
if [ "$age2" -ge 18 ] || [ "$age2" -eq 30 ]
then 
    echo "Valid Age! OR"
else
    echo "Age NOT Valid! OR"
fi

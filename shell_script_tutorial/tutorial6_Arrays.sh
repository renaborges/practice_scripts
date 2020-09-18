#!/bin/bash

echo -e "\e[30;43m***** Arrays *****\e[0m"


#Bash supports only  simple 1 dimension Arrays
#Create an Array of Operating Systems

os=('ubuntu' 'windows' 'kali')

#Print all elements
echo "${os[@]}"

#Print specific element
echo "${os[1]}"

#Print the indexes of the array using the not (!) operator. Ex.: 0 1 2
echo "${!os[@]}"

#Print the array length
echo "${#os[@]}"

#Add an element to the array. If you give an index already in use, 
#it will overwrite the element.
os[3]="mac"
echo "Added element in index 3:" "${os[@]}"
echo "${!os[@]}"


#Remove an element from array
unset os[2]
echo "Removed element in index 2:" "${os[@]}"
echo "${!os[@]}"

echo -e "\e[30;43m***** String as Arrays *****\e[0m"

my_string="renata"
echo "${my_string[@]}"

#One variable is one entire index only
echo "${#my_string[@]}"
echo "${!my_string[@]}"

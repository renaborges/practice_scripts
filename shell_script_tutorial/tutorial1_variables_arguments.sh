#!/bin/bash

echo -e "\e[30;43m***** HELLO WORLD *****\e[0m"
echo "Hello World"

echo -e "\e[30;43m***** VARIABLES *****\e[0m"
: 'System variable created and maintained by the OS. Defined in CAPITAL CASES.
Example: 1 - It gives the name of the shell, 2- Version of you Bash, 3 - Gives your home directory '
echo "System Variables examples:"
echo
echo "Name of my current shell: "
echo $BASH
echo "Version of my shell: "
echo $BASH_VERSION
echo My home directory is $HOME

echo
: 'User defined variable, created and maintained
 by the user, usually in lower case. 
 CANNOT start with number' 

echo "User Variables examples:"
echo
name=$(whoami)
surname="Shaw"
echo Your name is $name $surname
val=10
echo Value is $val


echo -e "\e[30;43m***** PASS ARGUMENTS TO A SCRIPT *****\e[0m"
: 'Arguments passed when call/run the script. 
In this case you can pass 3 arguments.'
#echo $1 $2 $3 

#The name of the script
#echo $0

#$@ stores your arguments as array
args=("$@")
#In an Array the first arguments starts at $0
echo "Printing arguments passed one by one:"
echo ${args[0]} ${args[1]} ${args[2]}
echo

#Printing all arguments saved above in args $@
echo "Printing all arguments saved in an Array:"
echo $@
echo

echo "How many arguments were passed?"
echo $#


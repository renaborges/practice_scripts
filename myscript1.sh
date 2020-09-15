#!/bin/bash

#This script is meant to copy a file to a different directory, then delete the file from destination. 
#It then checks if your number is lower or higher than 100

#This script takes 3 arguments
#1 - File to be copied
#2 - Directory to be copied to
#3 - A number

#Arguments variables $1, $2, $3:

#Creating a basename for the file ($1)
pathname="$1"
filename=$(basename $pathname)

destination="$2"
number="$3"

#Creating a global variable for a command.
workingdir=$(pwd)

#A function that can be called anywhere in the script.
function usage()
{

echo """

This is Renys awesome script.

Usage: requires 3 arguments.

"""

}

#If Number of Arguments passed when running the script is not 3, 
#then script exits straight away, and uses/call the function to 
#alert the user about the number of arguments to be used. 
if [ $# -ne 3 ]
then
  usage
  exit 1
fi 

echo
#If the first argument (the file -f) passed doesn't exist, the echo message is displayed, the function (usage) is called and the script exits.
if [ ! -f $filename ]
then
  echo $filename File does not exist.
  #Example calling the function again
  usage
  exit 1
fi

#If the second argument (the directory -d) passed doesn't exist, the echo message is displayed and script exists.
if [ ! -d $destination ] 
then
  echo $destination Directory does not exist.
  exit 1
fi

echo File and Directory exists\! Copying file to destination $destination
  cp $filename $destination 

echo 

echo Listing destination directory: $destination
ls -lh $destination
echo
echo Number of arguments: $#
echo
echo Name and path of script: `realpath $0`
echo
echo All the arguments passed: $@
echo
echo Exit status: $?
echo
echo The process ID of the script: $$
echo

#If file (using basename - $filename) exists in path/directory ($destination) then remove the file and create a variable (var1) to hold the exit code.
if [ -f $destination/$filename ]
then
  echo Removing copied file!!!!!!
  rm $destination/$filename
  var1=$?
fi

#Checking if the exit code from the removing command above is equal to zero - Note: exit 0 = success; exit 1 - 255 = fail.
if [ $var1 -eq 0 ]
then
  echo File removed successfully.
else
  echo Unable to remove file $filename from $destination.
fi

echo
#Checking if the third argument passed when running the script is greater than 100. 
#Then it calls the global variable (workingdir) to run the command 'pwd'.
if [ $3 -gt 100 ]
then
  echo Hey your number is bigger than 100!
  echo This is your working directory: $workingdir
elif [ $3 -eq 100 ]
then
  echo Hey your number is equal to one hundred!
  echo This is your current working directory: $workingdir
else
  echo Your number is less than 100!
  echo This is your current working directory: $workingdir
fi
echo


#!/bin/bash

echo -e "\e[30;43m***** TRAP Command *****\e[0m"

: ' Sometimes when your script is running some 
unexpected behaviour can happen, for example ctrl+c or
ctrl+z to interrupt the execution of the script.
The TRAP command is used to provide the script to
capture the interruption and then clean it up within
the script. It catches/traps the interruption command/signals
and is able to do some stuff before exiting out.
NOTE: The signal kill (9) and the signal stop (19)
are exceptions and will not be catch by TRAP.
'
: ' Type man 7 signal in terminal to see the values
of the interruption signals '

: 'Simple example. Signal 0 is successful
trap "echo Exit command is detected" 0
echo "Hello"
exit 0
'

#The signal 2 means ctrl+c, it's an interruption signal SIGINT.
file=file.txt
trap "rm -f $file; exit" 0 2 15
#Print PID of script itself
echo "pid is $$"
while (( COUNT < 10 ))
do
    sleep 10
    (( COUNT ++ ))
    echo $COUNT
done
exit 0
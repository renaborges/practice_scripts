#!/bin/bash

: ' 
1 - Run your script with bash -x in the terminal 
to debugg it: (bash -x my_script.sh) 
2 - To run script in debug mode write -x after 
the shebang at the first line of your script:
#!/bin/bash -x
3 - Another way is write set -x at any place in 
the script to start the debug from there.
4 - If you write set +x it will stop the debug
from the location you wrote it.

'

#Example starting debugging from here.
set -x

#The signal 2 means ctrl+c, it's an interruption signal SIGINT.
file=file.txt

#Example stopping debug from here
set +x
trap "rm -f $file; exit" 0 2
#Print PID of script itself
echo "pid is $$"
while (( COUNT < 10 ))
do
    sleep 10
    (( COUNT ++ ))
    echo $COUNT
done
exit 0
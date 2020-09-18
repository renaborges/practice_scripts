#!/bin/bash

#echo -e "\e[30;43m***** Simple SELECT Loop *****\e[0m"

: ' 
Like FOR Loop but used for giving like a Manual type of data where user can choose from, 
usually used with the CASE Statement.

select name in tom renny paty bob
do 
    echo $name Selected!
done
'

echo -e "\e[30;43m***** Simple SELECT Loop with CASE Statement *****\e[0m"

select surname in maguire connor murray murphy
do
    case $surname in
    maguire )
        echo "Maguire Selected" ;;
    connor )
        echo "Connor Selected" ;;
    murray )
        echo "Murray Selected" ;;
    murphy )
        echo "Murphy Selected" ;;
    * ) 
        echo "Error. Choose between 1 and 4!";;
    esac
done

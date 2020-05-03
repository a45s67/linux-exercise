#!/bin/bash 

function cmpfilenum {
    local n=`ls |wc -w` 
    local guess=0
    read guess

    if [[ $guess -gt $n ]]
    then
        #echo "too large"
        echo "1"
    elif [[ $guess -lt $n ]]
    then 
        #echo "too small"
        echo "-1"
    else
        echo "0"
    fi
}

#local ret=0;
echo "Please guess how many files in the directory:"
while [[ $(( ret=`cmpfilenum` ))  ]] && [[ $ret -ne 0 ]]
do
    if [[ $ret -eq 1 ]]
    then 
        echo "too large"
    else
        echo "too small"
    fi
    #echo "Please guess how many files in the directory:"
    #echo "$ret"
done

echo "Yeah you got it!!"





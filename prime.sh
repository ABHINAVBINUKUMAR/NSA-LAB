#!/bin/bash

echo "Enter a number:"
read num

if [ $num -le 1 ]
then
    echo "Not a Prime number"
    exit
fi

i=2
flag=0

while [ $i -le $(( num / 2 )) ]
do
    if [ $(( num % i )) -eq 0 ]
    then
        flag=1
        break
    fi
    i=$(( i + 1 ))
done

if [ $flag -eq 0 ]
then
    echo "Prime number"
else
    echo "Not a Prime number"
fi

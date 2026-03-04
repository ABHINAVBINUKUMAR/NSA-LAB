#!/bin/bash

echo "Prime numbers between 1 and 100 are:"

for (( num=2; num<=100; num++ ))
do
    isPrime=1

    for (( i=2; i*i<=num; i++ ))
    do
        if [ $((num % i)) -eq 0 ]
        then
            isPrime=0
            break
        fi
    done

    if [ $isPrime -eq 1 ]
    then
        echo -n "$num "
    fi
done

echo

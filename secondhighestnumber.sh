#!/bin/bash

echo "Enter numbers separated by space:"
read -a arr

# Initialize first and second max
first=-999999
second=-999999

for num in "${arr[@]}"
do
    if (( num > first ))
    then
        second=$first
        first=$num
    elif (( num > second && num != first ))
    then
        second=$num
    fi
done

if (( second == -999999 ))
then
    echo "Second highest number not found (all numbers may be same)."
else
    echo "Second highest number is: $second"
fi

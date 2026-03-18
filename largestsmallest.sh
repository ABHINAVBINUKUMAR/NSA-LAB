#!/bin/bash

echo "Enter numbers separated by space:"
read -a arr

largest=${arr[0]}
smallest=${arr[0]}

for num in "${arr[@]}"
do
    if [ $num -gt $largest ]; then
        largest=$num
    fi

    if [ $num -lt $smallest ]; then
        smallest=$num
    fi
done

echo "Largest number: $largest"
echo "Smallest number: $smallest"

#!/bin/bash

echo "Enter a line of text:"
read text

# Convert text to lowercase
text=$(echo "$text" | tr 'A-Z' 'a-z')

# Count vowels
count=$(echo "$text" | grep -o "[aeiou]" | wc -l)

echo "Number of vowels: $count"

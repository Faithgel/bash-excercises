#!/bin/bash
# Script to check if a number is even or odd

read -rp "Enter a number: " num

# Validate input
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid number."
    exit 1
fi

if (( num % 2 == 0 )); then
    echo "The number $num is even."
else
    echo "The number $num is odd."
fi

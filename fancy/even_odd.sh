#!/bin/bash
# Script to check if a number is even or odd

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <number>"
    exit 1
fi

num="$1"

if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Please enter a valid number."
    exit 1
fi

(( num % 2 == 0 )) && echo "The number $num is even." || echo "The number $num is odd."

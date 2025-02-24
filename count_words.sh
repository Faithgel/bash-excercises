#!/bin/bash
# Script to count occurrences of a specific word in a file

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <word> <file>"
    exit 1
fi

word=$1
file=$2

if [[ ! -f "$file" ]]; then
    echo "Error: File '$file' does not exist."
    exit 1
fi

count=$(grep -o -i "$word" "$file" | wc -l)
echo "The word '$word' appears $count times in '$file'."

#!/bin/bash
# Script to replace all occurrences of a specific word in a file with another word

if [[ $# -ne 3 ]]; then
    echo "Usage: $0 <old_word> <new_word> <file>"
    exit 1
fi

old_word=$1
new_word=$2
file=$3

if [[ ! -f "$file" ]]; then
    echo "Error: File '$file' does not exist."
    exit 1
fi

sed -i "s/$old_word/$new_word/g" "$file"
echo "Replaced '$old_word' with '$new_word' in '$file'."

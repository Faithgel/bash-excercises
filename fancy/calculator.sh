#!/bin/bash
# Simple calculator script

if [[ $# -ne 3 ]]; then
    echo "Usage: $0 <num1> <operator> <num2>"
    exit 1
fi

num1="$1"
num2="$3"
op="$2"

if ! [[ "$num1" =~ ^-?[0-9]+$ && "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Inputs must be numbers."
    exit 1
fi

case "$op" in
    +) echo "$(($num1 + $num2))" ;;
    -) echo "$(($num1 - $num2))" ;;
    \*) echo "$(($num1 * $num2))" ;;
    /) 
        if [[ "$num2" -eq 0 ]]; then
            echo "Error: Division by zero"
            exit 1
        else
            echo "$(($num1 / $num2))"
        fi ;;
    *) echo "Error: Invalid operator"; exit 1 ;;
esac

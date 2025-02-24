#!/bin/bash
# Simple calculator script

read -rp "Enter first number: " num1
read -rp "Enter second number: " num2
read -rp "Enter operation (+, -, *, /): " op

# Validate input
if ! [[ "$num1" =~ ^[0-9]+$ && "$num2" =~ ^[0-9]+$ ]]; then
    echo "Error: Inputs must be numbers."
    exit 1
fi

case "$op" in
    +) result=$((num1 + num2)) ;;
    -) result=$((num1 - num2)) ;;
    \*) result=$((num1 * num2)) ;;
    /) result=$((num2 == 0 ? "Error: Division by zero" : num1 / num2)) ;;
    *) echo "Error: Invalid operation"; exit 1 ;;
esac

echo "Result: $result"

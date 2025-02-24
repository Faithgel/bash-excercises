#!/bin/bash
# Script to ask for the user's name and greet them

read -rp "Enter your name: " name

# Validate input
if [[ -z "$name" ]]; then
    echo "Error: Name cannot be empty."
    exit 1
fi

echo "Hello, $name! Welcome to Bash scripting."

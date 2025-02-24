#!/bin/bash
# Script to find and list all files in the current directory larger than 100MB

find . -type f -size +100M -exec ls -lh {} +

#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: ./count_word.sh <filename> <word>"
    exit 1
fi

filename=$1
word=$2

if [ ! -f "$filename" ]; then
    echo "Error: File does not exist."
    exit 1
fi

count=$(grep -o -i "$word" "$filename" | wc -l)
echo "The word '$word' appears $count times in $filename."

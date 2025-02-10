#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: ./count_word.sh <filename> <word>"
    exit 1
fi

FILE=$1
WORD=$2

if [ ! -f "$FILE" ]; then
    echo "Error: File not found!"
    exit 1
fi

COUNT=$(grep -o -i "$WORD" "$FILE" | wc -l)

echo "The word '$WORD' appears $COUNT times in $FILE."

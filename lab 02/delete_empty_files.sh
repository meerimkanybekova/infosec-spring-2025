#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: ./delete_empty_files.sh <directory>"
    exit 1
fi

DIRECTORY=$1

if [ ! -d "$DIRECTORY" ]; then
    echo "Error: Directory not found!"
    exit 1
fi

find "$DIRECTORY" -type f -empty -print -delete
echo "Deleted all empty files in $DIRECTORY."

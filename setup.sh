#!/bin/sh
# ----------------------------------------------------------------------------
# Copyright (c) Secon Cyber Security. All rights reserved.
# ----------------------------------------------------------------------------
# Created by: VDL
# This script is used to configure ConnectProtect Relay on the customer side.
# Cloud or On-Prem Relay configuration
# Supported OS:
#   64-bit
#       Ubuntu 18 and above
#       CentOS 7, 8 and Streamm 8
#		Debian
#
#   32-bit
#       Ubuntu 18 and above
#       CentOS 7, 8 and Streamm 8
#		Debian
#
# Reference: https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml?search=syslog
# Reference: https://ss64.com/bash/case.html
#  
# This file should be run as root or using sudo
user1=$(pwd)
mkdir $user1/temp 
cd $user1/temp
wget https://raw.githubusercontent.com/cp-sc-source/cpd/main/relay.sh.gz.enc && openssl enc -d -aes-256-cbc -md sha512 -pbkdf2 -iter 1024 -salt -in relay.sh.gz.enc -out relay.sh.gz && gzip -d relay.sh.gz && sudo bash relay.sh
cd $user1 
rmdir $user1/temp
unset user1
rm setup.sh
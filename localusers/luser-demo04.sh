#!/bin/bash

# This script creates an account on the local system
# You will be prompted for the account name and password

# Ask for the user name
read -p 'Enter the username to create: ' USER_NAME

# Ask for real name
read -p 'Enter you real name: ' COMMENT

# Ask for password
read -p 'Enter the password to use for the account: ' PASSWORD

# create the user
sudo useradd -c "${COMMENT}" -m ${USER_NAME}

# Set the password for the user
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

# Force password change on the first login
passwd -e ${USER_NAME}

#!/bin/bash

# Display the UID and username of the user executing this script
# Display if the user is the root user or not

# Display the UID
echo "Your UID is ${UID}"

# Display the username
# id -un or whoami
#USER_NAME=$(id -un)

# alternate syntax (old)
USER_NAME=`id -un`

echo "Your username is ${USER_NAME}"

# Display if the user is the root user or not
# [[]] is the new way but could be []
# UID of root is 0 always
# su root # password vagrant
# command help test for available conditionals in BASH

if  [[ "${UID}" -eq 0 ]]
then
    echo 'You are root.'
else
    echo 'You are not root.'
fi

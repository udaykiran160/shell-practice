#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "Error:: Please run the script with the root previlage"
    exit 1 
fi

dnf install mysql -y

if [ $? -ne 0]; then 
    echo "Error:: installing mysql is a failure"
    exit 1
else 
    echo " installing mysql is success"
fi

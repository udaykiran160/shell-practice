#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "Error:: Please run the script with the root previlage"
fi
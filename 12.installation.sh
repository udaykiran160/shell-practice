#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    else "Error:: Please run the script with the root previlage"
fi
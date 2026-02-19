#!/bin/bash 

#we doesnot require to assign the variables shell only create variables
echo "all variables pass to the script: $@"
echo "all variables pass to the script: $*"
echo "Script name : $0"
echo "present working directory : $PWD"
echo "who is running : $USER"
echo "home directory of user : $HOME"
echo "PID of the script : $$"
sleep 5 &
echo "PID of the last command in the background :$!"

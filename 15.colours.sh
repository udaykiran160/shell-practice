#!/bin/bash

USER_ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
W="\e[37m"

if [ $USER_ID -ne 0 ]; then
    echo "Error:: Please run the script with the root previlage"
    exit 1 # failure is other than 0
fi

validate (){ # functions receive inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
        echo -e "Installing ... $R installation failure $W"
        exit 1
    else 
        echo -e" Installing ...$G installation success $W"
    fi

}

dnf list installed mysql 
# Install if it is not found
if [ $? -ne 0 ]; then
    dnf install mysql -y
    validate $? mysql
else
    echo -e" $Y already installed $W"

dnf list installed nginx

# Install if it is not found
if [ $? -ne 0 ]; then
    dnf install nginx -y
    validate $? nginx
else
    echo -e " $Y already installed $W"
fi
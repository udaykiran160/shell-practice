#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "Error:: Please run the script with the root previlage"
    exit 1 # failure is other than 0
fi

validate (){ # functions receive inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
        echo "Error :: $2 is not installed"
    else 
        echo " $2 is installed"
    fi

}

dnf install mysql -y
validate $? mysql

dnf install nginx -y
validate $? nginx

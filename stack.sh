#!/bin/bash

## Script purpose is to install both application and web server.
LOG=/tmp/stack.log 
rm -f $LOG

USER=$(id -u)
if [ $USER -ne 0 ]; then 
    echo -e "\e[31mYou should be a root user to execute this script\e[0m"
    exit 5
fi

Print() {
    echo -n -e "\e[35m$1 - "
}

Print "Installing Java"
yum install java -y &>>$LOG 
if [ $? -eq 0 ]; then 
    echo -e "\e[32mSUCCESS\e[0m"
else
    echo -e "\e[31mFAILED\e[0m"
fi
#

yum ins
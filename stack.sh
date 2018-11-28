#!/bin/bash

## Script purpose is to install both application and web server.
LOG=/tmp/stack.log 
rm -f $LOG
APPUSER=student

USER=$(id -u)
if [ $USER -ne 0 ]; then 
    echo -e "\e[31mYou should be a root user to execute this script\e[0m"
    exit 5
fi

Print() {
    echo -n -e "\e[35m$1 - "
}

Stat() {
    if [ "$1" == SKIP ]; then 
        echo ""
    elif [ $1 -eq 0 ]; then 
        echo -e "\e[32mSUCCESS\e[0m"
    else
        echo -e "\e[31mFAILED\e[0m"
    fi
}

Print "Installing Java"
yum install java -y &>>$LOG 
Stat $?

id student &>/dev/null  
if [ $? -ne 0 ]; then 
    Print "Adding Application User"
    useradd $APPUSER
    Stat $?
else 
    Print "Adding Application User"
    Stat SKIP
fi
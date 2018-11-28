#!/bin/bash

## Script purpose is to install both application and web server.
LOG=/tmp/stack.log 
rm -f $LOG
APPUSER=student
APPHOME=/home/$APPUSER
TOMCAT_VER="9.0.13"
TOMCAT_MAJ_VER=$(echo $TOMCAT_VER | cut -d . -f1)
URL="http://mirrors.wuchna.com/apachemirror/tomcat/tomcat-${TOMCAT_MAJ_VER}/v${TOMCAT_VER}/bin/apache-tomcat-${TOMCAT_VER}.tar.gz"
STUDENT_WAR_URL="https://github.com/citb33/project-documentation/raw/master/studentapp.war"


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
        echo -e "\e[36mSKIPPING\e[0m"
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

Print "Installing Tomcat"
if [ -d $APPHOME/apache-tomcat-$TOMCAT_VER ]; then 
    Stat SKIP
else 
    cd $APPHOME
    wget -qO- $URL | tar -xz 
fi
rm -rf $APPHOME/apache-tomcat-$TOMCAT_VER/webapps/*
Print 
wget -qO $APPHOME/apache-tomcat-$TOMCAT_VER/webapps/student.war $STUDENT_WAR_URL
chown student:student $APPHOME/apache-tomcat-$TOMCAT_VER -R 

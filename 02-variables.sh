#!/bin/bash

## Script to demo on variables 

### Some code looks with out variables.
echo "Hello Raju"
echo "Raju, You scored 80% in final exams"
echo "Raju, You have been eligible for scholarship and you are promoted to next class"

## We can make the student name as a variable and can use the same lines for multiple students.
## For that you require variables.

## Declare a variblee.
a=20 ## Declaring a number
name=Rahim ## Declaring a string

## In both the cases you decclared without data type. **** 
## In shell there are no data types, every thing is a string.

## Accessing a variable 
## Syntax : ${var-name}  or  $var-name

echo Value of a =$a 

echo "Hello $name"
echo "$name, You scored 80% in final exams"
echo "$name, You have been eligible for scholarship and you are promoted to next class"

## Variables Properties : 1. Read-Write 2. Local 3. Scalar

## We are going to try to access a variable which is decalred on terminal
### course=DevOps
echo -e "\nWelcome to $course Training"

### By default the variable scope is local , You can convert that variable to environment variable using the following command
## export course (or) export course=DevOps

### Commaand Substution
## Lets make a statement which is not true everytime 
echo -e "\nToday date is 2018-11-26"

## var=$(command)
DATE=$(date +%F)
echo -e "\nToday date is $DATE"

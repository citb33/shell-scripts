#!/bin/bash

## While you need to take input from the user and if you think of parsing the input then you need special variables
## Parsing input looks like ::: cp source destination , ./script input1 input2

## Special variables which can help in taking the input is $0,$1 .. $n , $*, $@, $# 

## In order script to access it own name the it is $0
echo "Variable 0 is script name = $0"
echo "Variable 1 is first argument = $1"
echo "Variable 2 is first argument = $2"
echo "All the inputs parsed = $*"
echo "All the inputs parsed = $@"
echo "Number of arguments parsed = $#"
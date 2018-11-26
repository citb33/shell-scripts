#!/bin/bash

## If you keep a name to data we are calling it a variable.
## If you keep a name to set of commands is called a function.


myPrint() {
    echo "---------------------------------"
    echo Hello Good Morning | tr [a-z] [A-Z]
    echo "---------------------------------"
}

## Declare varibale in main program and access it in function

myPrint1() {
    echo "---------------------------------"
    echo $input | tr [a-z] [A-Z]
    echo "---------------------------------"
}  
### Variable from main program can be accessed in functions

## Decalre variable in function and access it in main program 
sample1() {
    a=20
}
### Variables declared in function can be accessed in main program also 

sample2() {
    a=20
    echo "value of a in function = $a"
}

sample3() {
    local a=200
    echo "value of a in function = $a"
}

### Main Program 
myPrint

## myprint1 example
input="Hello Good evening"
myPrint1

### sample1 function example 
sample1
echo "Value of a = $a"

## sample 2
a=10
echo value of a in main program =  $a 
sample2
echo value of a in main program after function replacement =  $a 

## But in some cases you need to define variable only inside function which should not be accessed or modified in main program 

### sample 3
a=100
echo value of a in main program =  $a 
sample3
echo value of a in main program after function replacement =  $a 
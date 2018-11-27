#!/bin/bash

myfunc() {
  echo hai
  return 1
  echo bye
}

#echo hai
#exit 1 
#echo bye
myfunc
echo exit status of function = $?


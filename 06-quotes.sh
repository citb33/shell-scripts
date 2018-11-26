#!/bin/bash

## What happens when there is not quotes
echo *

# You will never get * character on the screen because * is a special character.
# Special characters are meant for special kind purposes and each special character has its own speciality
# Character other than a-z,0-9,_ ... Other characters are special characters
# When you have any of these characters on the inputs then commands behave differently.
# To nulify those speciality of special characters we use quotes

# Quotes we have single and double
a=10
echo 'Value of a = $a'
echo "Value of a= $a"

## Slight diff b/w single and double quotes
## -> Single quotes doesn't  have any special characters
## -> Double quotes have $, ` as special characters and treats remaning special characters a normal characters.

###### Most preferabily we use double quotes all times

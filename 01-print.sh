#!/bin/bash

## Script for printing demo.
# printing can be done with two commands , i.e echo and printf
echo Hello 


## Print multiple lines
echo Hello 
echo Bye

### Print multipl lines using escase sequences, Following are the escape sequences we use.

### \n - new line
echo Hello\nBye

#When you use escape sequences then you should be using -e option to enable escape sequences.
echo -e Hello\nBye
# When you use escape sequences always provide the input in quotes, preferred is double quotes.
echo -e "Hello\nBye"

###\t - tab space
echo -e "1\t2\t3"

###\e - enable color
# syntax: echo -e "\e[COLmWORD"
#-------------------------------------------
# Color-Name          FG-Color-Code         BG-Color-Code
# Red                   31                      41
# Green                 32                      42
# Yellow                33                      43
# Blue                  34                      44
# Magenta               35                      45
# Cyan                  36                      46
#-------------------------------------------
## Color code 0 resets all colors
## Print red foreground color
echo -e  "\e[31mHello"

## The problem is color getting followed, To disable the color then use this way
echo -e "\e[31mHello\e[0m"

## Cyan BG Color
echo -e "\e[46mHello\e[0m"

## You can print both bg color and fg color
# \e[BG;FGmWORD
echo -e "\e[31;43mHello\e[0m"
## Reference :: https://misc.flogisoft.com/bash/tip_colors_and_formatting

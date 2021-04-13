#! /bin/bash

echo $@ # all the inputes

echo $# # the number of inputes

echo $0 $1 

echo ${0} ${1} .. # the element of the array 



arg=("$@") #other way to declare the array 
 
echo ${arg[0]} ${arg[1]} ... #other way to print the array 



arg=[$@] # another way also .

echo ${arg[0]} .. ${arg[1]} ${arg[2]}
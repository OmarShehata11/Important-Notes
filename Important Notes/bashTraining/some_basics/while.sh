# this is how to write while loop in bash scripting :: 
#!bin/bash
a=10
while [ $a -gt 0 ]
do
echo "the number = $a"
((a--))
done
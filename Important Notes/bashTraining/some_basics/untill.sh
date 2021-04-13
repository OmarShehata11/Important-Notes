#! /bin/bash

num=$1
until [ $num -ge 10 ]
do 
	echo "the number is : $num"
	((num++))
done
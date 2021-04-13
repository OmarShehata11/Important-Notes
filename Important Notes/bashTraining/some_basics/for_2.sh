#! /bin/bash

for (( i=0; i<=10; i++ ))
	do
		echo " the number is $i "
		if [ $i -eq 9 ]
		then 
			break # continue statement also working here 
		fi
	done


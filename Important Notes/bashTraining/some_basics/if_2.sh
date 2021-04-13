#! /bin/bash

if (( $# == 1 ))
	then

		if (( $1 == 0 ))
			then 
				echo "the number is not positive or negative"
		elif (( $1 < 0 ))
			then
				echo "the number is negative"
		else
			echo "the number is positive"
		fi
else
	echo "enter just only one number !!"
fi
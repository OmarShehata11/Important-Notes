#! /bin/bash

echo "enter the first name"
read name1

echo "enter the second name"
read name2

if [ $name1 == $name2 ]
then
	echo "the two names are the same"
else
	echo "the two names are differente"
fi

echo "**********************************"

if [ "$name1" \< "$name2" ] # deal with sring as number of characters , just a number .
then
	echo "the first name is bigger than the other"
elif [ "$name1" \> "$name2" ]
then
	echo "the second name is bigger than the other"
else
	echo "both the names are equalled in litters"
fi

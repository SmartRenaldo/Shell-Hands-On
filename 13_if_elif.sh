#!/bin/bash
if [ $1 -lt 50 ]
then
	echo "F"
elif [ $1 -lt 65 ]
then
	echo "P"
elif [ $1 -lt 75 ]
then
	echo "D"
fi

#!/bin/bash
#self-defined function
function getSum() {
	SUM=$[$num1+num2]
	echo "SUM=$SUM"
}

read -p "Please enter a number: " num1
read -p "Please enter a number: " num2

getSum $num1 $num2


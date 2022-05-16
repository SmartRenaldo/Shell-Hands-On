#!/bin/bash
#defina var
A=10
echo $A
echo A=$A
echo "A=$A"
#unset var
unset A
echo A=$A
#static var(cannot unset)
readonly B=2
echo B=$B
#`...` equals to $...
D=`date`
echo DATE=$D
D=$(date)
echo DATE=$D

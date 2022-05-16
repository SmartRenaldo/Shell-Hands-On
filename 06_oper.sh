#!/bin/bash
#calculate (2+9)*5
#way 1:
RES1=$(((2+9)*5))
echo "RES1=$RES1"
#way 2 (recommended):
RES2=$[(2+9)*5]
echo "RES2=$RES2"
#way 3
TEMP=`expr 2 + 9`
echo "TEMP=$TEMP"
RES3=`expr $TEMP \* 5`
echo "RES4=$RES3"

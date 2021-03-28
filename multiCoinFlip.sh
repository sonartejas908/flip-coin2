#!/bin/bash

IS_HEAD=1
H=0
T=0
declare -A result
for ((i=1; i<=10; i++))
do
	A=$((RANDOM%2))
	if [ $A -eq $IS_HEAD ]
		then
			((H++))
			result[$i]=H
   	else
      	((T++))
			result[$i]=T
	fi
done
echo Head : $H
echo Tails : $T
echo ${result[@]}
echo ${!result[@]}
Hpe=$(($H*10))
Tpe=$(($T*10))
echo "percentage of Head is $Hpe%"
echo "percentage of Tails is $Tpe%"

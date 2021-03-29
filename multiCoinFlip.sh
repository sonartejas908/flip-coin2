#!/bin/bash -x

for ((i=1; i<=10; i++))
do
	A=$((RANDOM%2))
	B=$((RANDOM%2))
HH=0
TT=0
TH=0
HT=0
num=$(($A*10+$B))
result[$i]=$num
done
for ((i=1; i<=10; i++))
do
	if [ ${result[$i]} -eq 0 ]
		then
		coinres[$i]=HH
		((HH++))
	elif [ ${result[$i]} -eq 1 ]
		then
		coinres[$i]=TT
		((TT++))
	elif [ ${result[$i]} -eq 10 ]
		then
		coinres[$i]=TH
		((TH++))
	elif [ ${result[$i]} -eq 11 ]
		then
		coinres[$i]=HT
		((HT++))
	fi
done
echo ${coinres[@]}
echo "Percentage of HH = $(($HH*10))%"
echo "Percentage of TT = $(($TT*10))%"
echo "Percentage of TH = $(($TH*10))%"
echo "Percentage of HT = $(($HT*10))%"


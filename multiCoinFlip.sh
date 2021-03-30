#!/bin/bash -x
HHH=0
HHT=0
HTH=0
THH=0
HTT=0
THT=0
TTH=0
TTT=0
for ((i=1; i<=10; i++))
do
	A=$((RANDOM%8+1))
	case $A in
		1) result[$i]=HHH HHH=$(($HHH+1)) ;;
		2) result[$i]=HHT HHT=$(($HHT+1)) ;;
		3) result[$i]=HTH HTH=$(($HTH+1)) ;;
		4) result[$i]=THH THH=$(($THH+1)) ;;
		5) result[$i]=HTT HTT=$(($HTT+1)) ;;
		6) result[$i]=THT THT=$(($THT+1)) ;;
		7) result[$i]=TTH TTH=$(($TTH+1)) ;;
   	8) result[$i]=TTT TTT=$(($TTT+1)) ;;
	esac
done
echo ${result[@]}
echo Percentage of HHH is  $(($HHH*10))%
echo Percentage of HHT is  $(($HHT*10))%
echo Percentage of HTH is  $(($HTH*10))%
echo Percentage of THH is  $(($THH*10))%
echo Percentage of HTT is  $(($HTT*10))%
echo Percentage of THT is  $(($THT*10))%
echo Percentage of TTH is  $(($TTH*10))%
echo Percentage of TTT is  $(($TTT*10))%

#!/bin/bash -x

IS_HEAD=1


A=$((RANDOM%2))

if [ $A -eq $IS_HEAD ]
	then
		echo "HEAD"
   else
      echo "TAILS"
fi



#! /usr/bin/bash

echo "Enter how many times you want to flip"
read n
h=0
t=0
while((n>0))
do
	a=$((RANDOM%2))
	if [ $a -eq 1 ]
	then
		echo "TAIL"
		((t++))
	else
		echo "HEAD"
		((h++))
	fi
((n--))
done

echo "Total head $h and head% = $((h*100/((h+t))))%"
echo "Total tails $t and teails% = $((t*100/((h+t))))%"

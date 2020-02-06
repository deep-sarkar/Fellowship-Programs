#! /bin/bash

echo "Enter how many harmonic value you want"
read n
a=0
b=1
c=1
while [ $n -ne 0 ]
do
	k=$(echo $c $b | awk '{printf "%.4f\n", ($1/$2)}')
	a=$(echo $a $k | awk '{printf "%.4f\n", ($1+$2)}')
	echo $a
	((b++))
	((n--))
done

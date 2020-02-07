#! /bin/bash

echo "Enter coefficient of x*x"
read a
echo "Enter coefficient of x"
read b
echo "Enter constant of "
read c
delta=$(( $(($b*$b))-$((4*a*c)) ))
if [ $delta -lt 0 ]
then
	echo "Delta is negative"
	exit
else
	D=$( echo $delta | awk '{printf "%.2f\n" , sqrt($1)}')
	a1=$( echo $((-1*$b)) $D | awk '{printf "%.2f\n", ($1+$2)}')
	x1=$( echo $a1 $((2*$a)) | awk '{printf "%.2f\n" , ($1/$2)}')
	a2=$( echo $((-1*$b)) $D | awk '{printf "%.2f\n", ($1-$2)}')
	x2=$( echo $a2 $((2*$a)) | awk '{printf "%.2f\n" , ($1/$2)}')
	echo "1st root is : $x1"
	 echo "2nd root is : $x2"
fi





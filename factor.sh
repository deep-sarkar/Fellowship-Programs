#! /bin/bash

echo "Enter any number"
read n
while [ $(($n%2)) -eq 0 ]
do
	echo "2"
	n=$((n/2))
done
a=$( echo $n | awk '{printf "%.0f\n" , sqrt($1)}')
for (( i=3 ; i<= a ; i=$(($i+2)) ))
do
	while [ $(($n%$i)) -eq 0 ]
	do
		echo $i
		n=$(($n/$i))
	done
done
if [ $n -gt 0 ]
then
	echo $n
fi


#! /bin/bash

echo "Enter any number"
read n
while [ $(($n%2)) -eq 0 ]
do
	echo "2"
	n=$((n/2))
done
for (( i=3 ; i<= n/2 ; i=$(($i+2)) ))
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


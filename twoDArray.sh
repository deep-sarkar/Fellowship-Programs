#! /bin/bash

echo "Enter number of rows"
read r
echo "Enter number of column"
read c
echo "Enter $((r*c)) elements of array"
for(( i=0;i<r;i++ ))
do
	for(( j=0;j<c;j++ ))
	do
		read a[$i$j]
	done
done

echo "Entered array is"
for(( i=0;i<r;i++ ))
do
        for(( j=0;j<c;j++ ))
        do
                echo -ne ${a[$i$j]} " "
        done
echo
done


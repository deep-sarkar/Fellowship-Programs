#! /bin/bash

count=0
function generateRandom()
{
	random=$((RANDOM%899+100))
	((count++))
}

function checkDuplicate()
{
for(( i=0;i<$1;i++ ))
do
generateRandom
	if [ $i -eq 0 ]
	then
		ar[$i]=$random
        else
	countDup=0
	for(( j=0;j<$i;j++ ))
	do
		if [ $((ar[$j])) -eq $random ]
		then
			((countDup++))
		fi
	done
	fi
	if [ $countDup -gt 0 ]
	then
		((i--))
	else
	ar[$i]=$random
	fi
done
}



function printCoupon() {
for(( i=0;i<$1;i++ ))
do
	echo ${ar[$i]}
done
}

echo "Enter how many coupon you want"
read total_coupon

checkDuplicate $total_coupon
printCoupon $total_coupon
echo "Total random coupon generated : $count times"

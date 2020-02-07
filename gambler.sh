#! /bin/bash

echo "Enter Stake"
read stake
echo "Enter goal"
read goal
echo "Enter how many times you want to play"
read num
win=0
loss=0
while [ $stake -gt 0 ] && [ $stake -ne $goal ] && [ $num -gt 0 ]
do
	a=$((RANDOM%2))
	if [ $a -eq 0 ]
	then
		echo "You won..."
		((stake++))
		((win++))
		echo "Stake : $stake"
	else
		echo "You losed.."
		((stake--))
		((loss++))
		echo "Stake : $stake"
	fi
	((num--))
done
if [ $stake -eq $goal ]
then
	echo "You reached your goal...."
else
	echo "You lossed , you didnt achieved your goal..."
fi
echo "Total win : $win"
echo "Total loss : $loss"

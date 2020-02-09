#! /bin/bash


ar=(" " " " " " " " " " " " " " " " " ")
cc=0

function printLayout()
{
echo "-----Tic Tac Toe-----"
echo " ------------- "
echo " | "${ar[0]}" | "${ar[1]}" | "${ar[2]}" |"
echo " -------------"
echo " | "${ar[3]}" | "${ar[4]}" | "${ar[5]}" | "
echo " -------------"
echo " | "${ar[6]}" | "${ar[7]}" | "${ar[8]}" | "
echo " -------------"
}

function playCom()
{
ran=$((RANDOM%9))
echo "Computer's turn..."
echo $ran
if [ "${ar[$ran]}" = " " ]
then
	cc=$((cc+1))
	ar[$ran]="X"
else
playCom
fi
}

function playUser()
{
echo "Chose a position between 0 - 8"
read p
if [ "${ar[$p]}" = " " ]
then
	ar[$p]="O"
else
echo "Position already occupied"
playUser
fi
}

function checkWin()
{

#Row win check
if [ "${ar[0]}" = "X" -o "${ar[0]}" = "O" ] && [ "${ar[0]}" = "${ar[1]}" ] && [ "${ar[0]}" = "${ar[2]}" ]
then
return 1

elif [ "${ar[3]}" = "X" -o "${ar[3]}" = "O" ] && [ "${ar[3]}" = "${ar[4]}" ] && [ "${ar[3]}" = "${ar[5]}" ]
then
return 1

elif [ "${ar[6]}" = "X" -o "${ar[6]}" = "O" ] && [ "${ar[6]}" = "${ar[7]}" ] && [ "${ar[6]}" = "${ar[8]}" ]
then
return 1
fi

#Column win check
if [ "${ar[0]}" = "X" -o "${ar[0]}" = "O" ] && [ "${ar[0]}" = "${ar[3]}" ] && [ "${ar[0]}" = "${ar[6]}" ]
then
return 1

elif [ "${ar[1]}" = "X" -o "${ar[1]}" = "O" ] && [ "${ar[1]}" = "${ar[4]}" ] && [ "${ar[1]}" = "${ar[7]}" ]
then
return 1

elif [ "${ar[2]}" = "X" -o "${ar[2]}" = "O" ] && [ "${ar[2]}" = "${ar[5]}" ] && [ "${ar[2]}" = "${ar[8]}" ]
then
return 1
fi

#Diagonal win check
if [ "${ar[0]}" = "X" -o "${ar[0]}" = "O" ] && [ "${ar[0]}" = "${ar[4]}" ] && [ "${ar[0]}" = "${ar[8]}" ]
then
return 1

elif [ "${ar[2]}" = "X" -o "${ar[2]}" = "O" ] && [ "${ar[2]}" = "${ar[6]}" ] && [ "${ar[2]}" = "${ar[6]}" ]
then
return 1
fi
}

#Check who won
function whoWin()
{
if [ "$r" = "1" ] && [ "$(($n%2))" = "0" ]
then
	echo "computer won"
	exit
elif [ "$r" = "1" ] && [ "$((n%2))" != "0" ]
then
        echo "You won.."
        exit
elif [ "$r" = "0" ] && [ "$cc" = "5" ]
then
	echo "Game draw..."
	exit
fi
}

n=9
while [ $n -gt 0 ]
do
clear
playCom
((n--))
printLayout
checkWin
r=$?
whoWin r
playUser
((n--))
printLayout
checkWin
r=$?
whoWin r
done

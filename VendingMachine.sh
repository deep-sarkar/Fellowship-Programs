#! /bin/bash


function returnNotes()
{
count1000=0
count500=0
count100=0
count50=0
count10=0
count5=0
count2=0
count1=0
while [ $amount -gt 0 ]
do
	if [ $amount -ge 1000 ]
	then
		amount=$(($amount-1000))
		((count1000++))
	elif [ $amount -ge 500 ]
        then
                amount=$(($amount-500))
                ((count500++))
	elif [ $amount -ge 100 ]
        then
                amount=$(($amount-100))
                ((count100++))
	elif [ $amount -ge 50 ]
        then
                amount=$(($amount-50))
                ((count50++))

	elif [ $amount -ge 10 ]
        then
                amount=$(($amount-10))
                ((count10++))
	elif [ $amount -ge 5 ]
        then
                amount=$(($amount-5))
                ((count5++))
	elif [ $amount -ge 2 ]
        then
                amount=$(($amount-2))
                ((count2++))
	elif [ $amount -eq 1 ]
        then
                amount=$(($amount-1))
                ((count1++))
	fi
done
}

function displayOutput()
{
echo "-------Minimum Number of notes can be returned----"
echo "Notes   No.           TotalAmount"
echo "1000    $count1000           $(($count1000*1000))"
echo "500     $count500           $(($count500*500))"
echo "100     $count100           $(($count100*100))"
echo "50      $count50           $(($count50*50))"
echo "10      $count10           $(($count10*10))"
echo "5       $count5            $(($count5*5))"
echo "2       $count2            $(($count2*2))"
echo "1       $count1            $(($count1*1))"
echo "total notes : $(($count1000+$count500+$count100+$count50+$count10+$count5+$count2+$count1))"
}

#main method
echo "Enter amount"
read amount
returnNotes
displayOutput

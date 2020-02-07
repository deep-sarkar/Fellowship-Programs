#! /bin/bash

echo "enter number elements of array"
read ele_no
echo "enter $ele_no elements"
for(( i=0 ; i<$ele_no ; i++ ))
do
	read a[$i]
done
echo "Entered array is"
for(( i=0 ; i<$ele_no ; i++ ))
do
        echo -ne ${a[$i]} " "
done
echo
for(( i=0 ; i<$ele_no ; i++ ))
do
        for(( j=$(($i+1)) ; j<$ele_no ; j++ ))
	do
		for(( k=$(($j+1)) ; k<$ele_no ; k++ ))
		do
			b=$((${a[$i]}+${a[$j]}+${a[$k]}))
			if [ $b -eq 0 ]
			then
				echo "sum 0 elements are"
				echo "${a[$i]} ${a[$j]} ${a[$k]}"
			fi
		done
	done
done



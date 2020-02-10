#! /bin/bash

y0=$(($3-$(($((14-$1))/12))))
x=$(($y0+$(($y0/4))-$(($y0/100))+$(($y0/400))))
m0=$(($1+$((12*$(($((14-$1))/12))-2))))
d0=$(($(($2+$x+$(($((31*$m0))/12))))%7))
echo "$d0"
case $d0 in
0)
echo "Sunday"
;;
1)
echo "Monday"
;;
2)
echo "Tuesday"
;;
3)
echo "Wednesday"
;;
4)
echo "Thursday"
;;
5)
echo "Friday"
;;
6)
echo "Saturday"
;;
esac

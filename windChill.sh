#! /bin/bash

echo "Enter wind speed in miles (max limit 50) "
read v
echo "Ente temperatuer in fahreniheit (limit 3-120)"
read temp
a=$( echo 0.6215 $temp 35.74 | awk '{print (($1*$2)+$3)}')
b=$( echo 0.4275 $temp 35.75 $v | awk '{print ((($1*$2)-$3)*($4**0.16))}')
w=$( echo $a $b | awk '{ print ($1+$2)}')
echo "WindChill is : $w"



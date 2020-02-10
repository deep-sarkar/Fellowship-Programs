#! /bin/bash

function toCelsius()
{
celsius=$( echo $(($1-32)) 5 9 | awk '{printf "%.2f\n", ($1*$2/$3)}')
echo "$celsius degree celsius"
}

function toFahrenheit()
{
fahrenheit=$( echo $1 9 5 32 | awk '{printf "%.2f\n" , (($1*$2/$3)+$4)}')
echo "$fahrenheit fahrenheit"
}

echo "Enter temp 1 to Celsius or 2 to Fahrenheit"
read n

case $n in
1)echo "Enter temperature in Fahrenheit"
read temp
toCelsius $temp
;;
2)echo "Enter temperature in Celsius"
read temp
toFahrenheit $temp
;;
esac

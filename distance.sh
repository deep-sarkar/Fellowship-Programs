#! /bin/bash

a=$(($(($1*$1))+$(($2*$2))))
distance=$( echo $a | awk '{printf "%.2f\n", sqrt($1)}')
echo "Distance between ($1,$2) and origin is : $distance" 

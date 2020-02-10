#! /bin/bash

#amount time(in year) rate
function monthlyPayment()
{
P=$1
t=$2
R=$3
n=$((12*$t))
r=$( echo $R 1200 | awk '{print ($1/$2)}')
r2=$( echo 1 $r | awk '{print ($1+$2)}')
r1=$( echo $r2 $((-1*$n)) | awk '{print ($1**$2)}')
rP=$( echo $P $r | awk '{print ($1*$2)}')
d=$( echo 1 $r1 | awk '{print  ($1-$2)}')
payment=$( echo $rP $d | awk '{print ($1/$2)}')
echo "payment $payment "
}

monthlyPayment $1 $2 $3

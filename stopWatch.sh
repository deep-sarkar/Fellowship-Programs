#! /bin/bash

function start()
{
echo "Press 1 to start"
read s
if [ $s -eq 1 ]
then
	start_time=$(date +%s)
	echo "Stop watch started"
else
	echo "Wrong input"
	start
fi
}


function stop()
{
echo "Press 2 to stop"
read st
if [ $st -eq 2 ]
then
        stop_time=$(date +%s)
        echo "elapse time is : "
else
        echo "Wrong input"
	stop
fi
}

start
stop
elapse_time=$(($stop_time - $start_time))
echo "$elapse_time sec"

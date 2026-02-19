#!/bin/bash

starttime=$(date +%s)
sleep 10
endtime=$(date +%s)
totaltime=$(($endtime-$starttime))

echo "Script executed in $totaltime"
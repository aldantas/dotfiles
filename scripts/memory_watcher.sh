#!/bin/bash

#Minimum available memory limit, MB
THRESHOLD=400

#Check time interval, sec
INTERVAL=30

while :
do

    free=$(free -m|awk '/^Mem.:/{print $4}')
    cached=$(free -m|awk '/^Mem.:/{print $6}')
    available=$(free -m|awk '/^Mem.:/{print $7}')

    message="Free $free""MB"", cached $cached""MB"", available $available""MB"""

    if [ $available -lt $THRESHOLD ];
        then
        notify-send "Memory is running out!" "$message"
    fi

    echo $message

    sleep $INTERVAL

done

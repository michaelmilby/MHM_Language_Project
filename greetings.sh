#!/bin/bash

hour=$(date +%H)
day=$(date +%a)

if [ $hour -lt 12 ]; then

	echo  "Good Morning"

elif [ $hour -gt 18 ]; then

	echo "Good Afternoon!"

elif [$hour -gt 23 ]; then

	echo "Good evening!"

fi

if [ $day = 'fri' ]; then
echo "Thank God Its Friday!"

fi



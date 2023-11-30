#!/bin/bash

hour=$(date +%H)

if [ $hour -gt 18 ]; then
	ping -c 10 $1 > pingresults.txt

fi

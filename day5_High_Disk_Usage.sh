#!/bin/bash

threshold=0
used=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$used" -gt "$threshold" ]; then
    echo "Disk usage is at ${used}% on $(hostname)" | msmtp lakshmi.dusanapudi@gmail.com
fi

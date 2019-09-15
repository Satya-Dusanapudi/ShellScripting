#!/bin/bash

used=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')
threshold=80

if [ "$used" -gt "$threshold" ]; then
    echo "Disk usage is at ${used}% on $(date)" >>/mnt/c/Users/satya/Documents/ShellScripting/shell-practice/disk_alert.log
fi
echo "Script ran at $(date)" >>/mnt/c/Users/satya/Documents/ShellScripting/shell-practice/cron_output.log

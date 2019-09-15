#!/bin/bash
threshold=80
used=85
# Get disk usage percentage 
#used=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')
# Check if used greater than Threshold
if [ "$used" -gt "$threshold" ]; then 
echo "Disk usage is at ${used}% on $(hostname)"
echo "Restarting cron service....."
sudo service cron restart
fi
#!/bin/bash
# view running processes
# ps aux | less #  lists all running processes. |  lets you scroll through them.
# search for specific processes
# ps aux | grep ssh

# kill process
# ps kill 
# Define CPU threshold 
threshold=0
# List and optionally kill processes using more CPU than threshold
echo "checking for processes using more than $threshold% CPU ...."
# Use ps to get processes sorted by CPU usage, ignore the header using tail
# Lists process details.
# Sorts by CPU usage (high to low).
# Filters out the header line and selects processes using more than threshold CPU.
ps -eo pid,ppid,cmd,%mem,%cpu --sort=%cpu | awk -v th=$threshold 'NR>1 && $5 > th {print}' > high_cpu_procs.txt
#  Kills the listed process IDs.



# Check if any such process exists
if [ -s high_cpu_procs.txt ]; then 
echo "High CPU Usage processes:"
cat high_cpu_procs.txt
    # Prompt user to kill them
    read -p "Do you want to kill these processes? (y/n): " choice 
    if [ [ "$choice" == "y"] ]; then
# -r flag ensures xargs only runs if there is input.
awk '{print}' high_cpu_procs.txt | xargs -r kill -9 
echo "Killed hig cpu processes"
else
echo "No action taken"
fi
else
echo "No High CPU processes found"
fi
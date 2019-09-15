#!/bin/bash
#Takes a filename as an argument.
if [ -z "$1" ]; then 
echo "Usage: $0 <filename>" 
exit 1
fi
filename=$1
# Check if file exists
if [ -f "$filename" ]; then
echo "File exists : $filename"
echo "Appending Timestamp....."
echo "Time stamp: $(date)" >> "$filename"
echo "Done appending"
else 
echo "$filename does not exist........create it"
echo "Welcome! File created on $(date)" > "$filename"
echo "File created: $filename"
fi
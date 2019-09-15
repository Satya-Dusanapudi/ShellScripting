#!/bin/bash
# Assign the first argument to 'filename'
filename="$1"
#If the user forgets to give a filename,show a helpful message and stop the script —instead of running and causing errors later.
if [ -z "$filename" ]; then
echo "Usage: $0 <filename>"
exit 1
fi
if [ ! -f "$filename" ]; then
echo "File does not exist: $filename"
exit 1
fi
echo "Reading file line by line"
echo "........"

while IFS= read -r line

do
echo "$line"

done < "$filename"
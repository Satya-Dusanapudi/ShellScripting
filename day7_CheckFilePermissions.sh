#!/bin/bash
# Assign the first argument to 'filename'
filename="$1"
#If the user forgets to give a filename,show a helpful message and stop the script —instead of running and causing errors later.
# If no filename is provided, show usage
if [ -z "$filename" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi
# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File does not exist: $filename"
    exit 1
fi
echo "Checking permissions for $filename"
[ -r "$filename" ] && echo "File is readable" || echo "File is not readable"
[ -w "$filename" ] && echo "File is writable" || echo "File is not writable"
[ -x "$filename" ] && echo "File is executable" || echo "File is not executable"

echo "Changing permissions to readable, writable and executable for user"
chmod u+rwx "$filename"
ls -l "$filename"
chmod u+x sample.txt

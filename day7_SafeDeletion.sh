#!/bin/bash
#here target=file/directory
#Takes a filename or directory name as an argument.
target=$1

#If the user forgets to give a filename,show a helpful message and stop the script —instead of running and causing errors later.

# If no filename is provided, show usage
if [ -z "$target" ]; then
    echo "Usage: $0 <filename_or_directory>"
    exit 1
fi
#Checks if the file/directory exists.
if [ ! -e "$target" ]; then
    echo "'$target' does not exist"
    exit 1
fi
echo "Are you sure you want to delete '$target'? (yes/no)"
read confirm
if [ "$confirm" = "yes" ]; then
    if [ -d "$target" ]; then
        rm -r "$target"
        echo "Directory '$target' deleted"
    else
        rm "$target"
        echo "File '$target' deleted"
    fi
else
    echo "deletion cancelled"
fi

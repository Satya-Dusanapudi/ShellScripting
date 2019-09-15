#!/bin/bash
#These help you check conditions like if a file exists, is readable, writable, etc.

file="/tmp/test.txt"
if [ -f "$file" ]; then
echo "$file exists and is a regular file"
else
echo "$file does not exists"
fi
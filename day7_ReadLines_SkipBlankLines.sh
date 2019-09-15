
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
echo "Reading file line by line"
echo "........"

line_number=0
non_empty_count=0

# Read each line of the file
while IFS= read -r line
do
line_number=$((line_number+1))

 # Skip blank lines but count non-empty lines
if [ -n "$line" ]; then
non_empty_count=$((non_empty_count+1))
echo "Line "


echo "Line $line_number: $line"
else

echo "Line $line_number: [Blank Line Skipped]"
fi
done < "$filename"
echo "Total Lines: $line_number"
echo "Non empty Lines: $non_empty_count"
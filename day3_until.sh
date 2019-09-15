#!/bin/bash
# opposite of while
until [ $count -gt 3 ]; do
    echo "Count is : $count"
    ((count++))
done

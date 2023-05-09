#!/bin/bash

count=0
for dir in $(find . -type d -not -path '*/\.*' -not -path '.' -not -path '..'); do
    count=$((count + 1))
done
echo "The number of directories and sub-directories in the current directory is: $count"

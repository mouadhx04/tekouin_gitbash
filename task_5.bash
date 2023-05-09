#!/bin/bash

# Initialize the count variable to 0
count=0

# Loop over all subdirectories (including hidden directories) in the current directory
for dir in $(find . -type d -not -path '*/\.*' -not -path '.' -not -path '..'); do
    # Increment the count variable for each subdirectory
    count=$((count + 1))
done

# Print the final count
echo "The number of directories and sub-directories in the current directory is: $count"
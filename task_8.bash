#!/bin/bash

file_path="/tmp/tekouin"

if [ -e "$file_path" ]; then
  file_type=$(file -b "$file_path")
  echo "The type of the file $file_path is: $file_type"
else
  echo "File not found: $file_path"
fi
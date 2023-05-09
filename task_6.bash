#!/bin/bash

line=$(head -n 3 /etc/passwd | tail -n 1)

echo "$line"
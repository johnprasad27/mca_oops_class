#!/bin/bash

read -p "Enter directory name you want to search: " dir
direct="E:/MCA/S2/lab/$dir"

if [ -d "$direct" ]; then
    num_files=$(find "$direct" -type f | wc -l)
    echo "There are $num_files files in $direct"
else
    echo "$direct is not a directory"
fi
#!/bin/bash

echo "System Information "

echo "(i) Logged-in Users "
echo "Users currently logged in:"
who

echo "Total number of users logged in:"
who | wc -l

echo " (ii) Files in Home Directory (Column Format) "
echo "Displaying selected columns (permissions, size, name):"

ls -l ~ | awk '{print $1, $5, $9}'

echo " (iii) Jobs with Below Normal Priority "
echo "Processes with nice value greater than 0:"

ps -eo pid,ni,cmd | awk '$2 > 0 {print $0}'



echo " successfuly"
#!/bin/sh

echo "Enter two numbers:"
read a b

echo "Choose operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read choice

if [ "$choice" -eq 1 ]; then
    result=`expr "$a" + "$b"`
    echo "Result = $result"

elif [ "$choice" -eq 2 ]; then
    result=`expr "$a" - "$b"`
    echo "Result = $result"

elif [ "$choice" -eq 3 ]; then
    result=`expr "$a" \* "$b"`
    echo "Result = $result"

elif [ "$choice" -eq 4 ]; then
    if [ "$b" -eq 0 ]; then
        echo "Division by zero not allowed"
    else
        result=`expr "$a" / "$b"`
        echo "Result = $result"
    fi
else
    echo "Invalid choice"
fi
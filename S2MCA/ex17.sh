#!/bin/bash
read -p "Enter number of terms: " n
a=0
b=1
echo "Fibonacci Series:"

for i in $(seq 1 $n)
do
    echo -n "$a "
    c=$(($a + $b))
    a=$b
    b=$c
done
echo
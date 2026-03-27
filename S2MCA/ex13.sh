#!/bin/bash

read -p "Enter a string: " str
read -p "Enter starting index and number of characters: " a b

substr=${str:$a:$b}

echo "Substring: $substr"
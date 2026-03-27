#!/bin/bash




echo "(i) Create and Copy File "
read -p "Enter a file name: " file1
echo "Enter contents of $file1 (Press Ctrl+D to finish):"
cat > "$file1"

read -p "Enter existing file name to copy into: " file2
cp "$file1" "$file2"

echo "Contents of $file2:"
cat "$file2"



echo " (ii) Print from Specific Line"
read -p "Enter a file name: " file3
echo "Enter contents of $file3 (Press Ctrl+D to finish):"
cat > "$file3"

read -p "Enter starting line number: " l
echo "Printing from line $l:"
tail -n +"$l" "$file3"



echo "(iii) Difference Between Two Files "
read -p "Enter first file name: " f1
read -p "Enter second file name: " f2
read -p "Enter output file name: " f3

echo "Enter contents of $f1 (Press Ctrl+D to finish):"
cat > "$f1"

echo "Enter contents of $f2 (Press Ctrl+D to finish):"
cat > "$f2"

diff -a "$f1" "$f2" > "$f3"

echo "Differences saved in $f3:"
cat "$f3"



echo " (iv) Search Pattern in File "
read -p "Enter a file name: " file4
echo "Enter contents of $file4 (Press Ctrl+D to finish):"
cat > "$file4"

read -p "Enter a pattern to search: " s

echo "Matching lines:"
grep -ni "$s" "$file4"



echo " successfull"
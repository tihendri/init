#! /bin/sh
# script to remove duplicate lines from a file
echo -n "Enter Filename: "
read filename
if [ -f "$filename" ]; then
sort $filename | uniq | tee static.txt
else
echo "$filename does not exist in current directory" ; exit 1
fi
rm $filename
mv static.txt $filename
exit 0
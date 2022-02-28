#!/bin/bash

echo "Hello world"
pwd
echo "Enter file's name:"
read filename
if test -f "$filename"; then
	echo "$filename exists."
	else
	echo "ERROR!!! $filename not exists. Try one more time:"	
	read filename2
	if test -f "$filename2"; then
		echo "$filename2 exists."	
		else
		echo "$filename2 not exists."
	fi
fi
D=$(date)
echo "$D"
echo "Enter file's name:"
read filename3
st=$(date -r $filename3 2>error.txt)
echo "$st"
if ["$D"<"$st"]; then
	echo "exit 120"
	else
	echo "descryptor don't changed"
fi






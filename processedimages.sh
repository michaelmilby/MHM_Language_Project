#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "usage: $0 <images> <processed_images>"
fi

images="$1"

processed_images ="$2"

mkdir -p "$processed_images/large"

mkdir -p "$processed_images/small"

for file in "$images"/*jpg; do
	if [ -f "$file" ] then

	file_size=$(stat -c%s "$file")

	threshold_size=1048576

	if [ "$file_size" -ge "threshold_size" ]; then
	mv "$file" "$processed_images/large"

	echo "moved large files: $file"

	else

mv "$file"  "processed_images/small"
echo "moved small file: $file"

fi 

done 

echo "file separation completed."

#!/bin/bash

current_dir=$(pwd)
script_dir=$(dirname $0)
if [ $script_dir == '.' ]; then
	script_dir="$current_dir"
fi
RAND_FILE=$(ls $script_dir/bg | sed -n "$((RANDOM%$(ls $script_dir/bg | wc -l)+1))p")
echo $RAND_FILE
img_dir="${script_dir}/bg/${RAND_FILE}"
echo $img_dir
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "'$img_dir'"'
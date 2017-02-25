#!/bin/bash

current_dir=$(pwd)
script_dir=$(dirname $0)
if [ $script_dir == '.' ]; then
	script_dir="$current_dir"
fi

(crontab -l ; echo "* * * * * $script_dir/wall.sh") | crontab -
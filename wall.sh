#!/bin/bash
image_link=$(curl "http://www.nationalgeographic.com/photography/photo-of-the-day/" | grep -w "aemLeadImage" | sed "s/,'aemLeadImage': '//" | sed "s/\/'//")
wget -A.jpg $image_link
mv *.tmp bg/image.jpg

if [[ "$OSTYPE" == "darwin"* ]]; then
	echo "MAC"
	current_dir=$(pwd)
	script_dir=$(dirname $0)
	if [ $script_dir == '.' ]; then
		script_dir="$current_dir"
	fi
	img_dir="${script_dir}/bg/image.jpg"
	osascript -e 'tell application "Finder" to set desktop picture to POSIX file "'$img_dir'"'
elif [["$OSTYPE" == "linux-gnu"]]; then
	echo "Linux"
elif[["$OSTYPE" == "cygwin"]]l then
	echo "cygwin : linux emulator for win"
elif [[ "$OSTYPE" == "msys" ]]; then
	echo  "mysys : light-weight shell for windows"
elif [[ "$OSTYPE" == "win32" ]]; then
        echo "Don't think we need it"
elif [[ "$OSTYPE" == "freebsd"* ]]; then
        echo "BSD"
else
        echo "No Support"

fi

#!/bin/bash

CURRENT_DIR=$(pwd)
DIR=$(dirname $0)
if [ $DIR == '.' ]; then
	DIR="$CURRENT_DIR"
fi

IMAGE_LINK=$(curl "http://www.nationalgeographic.com/photography/photo-of-the-day/" | grep -w "aemLeadImage" | sed "s/,'aemLeadImage': '//" | sed "s/\/'//")
curl -X GET $IMAGE_LINK/ > "${DIR}/bg/image.jpg"

IMG_DIR="${DIR}/bg/image.jpg"
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "'$IMG_DIR'"'


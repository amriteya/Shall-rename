#!/bin/bash

source dir-resolver.sh

IMAGE_LINK=$(curl "http://www.nationalgeographic.com/photography/photo-of-the-day/" | grep -w "aemLeadImage" | sed "s/,'aemLeadImage': '//" | sed "s/\/'//")
curl -X GET $IMAGE_LINK/ > "${DIR}/bg/image.jpg"

IMG_DIR="${DIR}/bg/image.jpg"
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "'$IMG_DIR'"'


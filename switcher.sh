#!/bin/bash

IMAGE_LINK=$(curl "http://www.nationalgeographic.com/photography/photo-of-the-day/" | grep -w "aemLeadImage" | sed "s/,'aemLeadImage': '//" | sed "s/\/'//")
wget -A.jpg $IMAGE_LINK
mv *.tmp bg/image.jpg

source dir-resolver.sh

IMG_DIR="${DIR}/bg/image.jpg"
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "'$IMG_DIR'"'


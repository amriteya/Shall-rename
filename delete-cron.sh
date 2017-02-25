#!/bin/bash

source dir-resolver.sh

crontab -l | grep -v "$DIR/switcher.sh >> $DIR/log 2>&1"  | crontab  -
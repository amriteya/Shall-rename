#!/bin/bash

source dir-resolver.sh

(crontab -l ; echo "* * * * * $DIR/switcher.sh >> $DIR/log 2>&1") | crontab -

#Delete cron
#crontab -l | grep -v '/Users/amrpandey/dev-amriteya/Projects/Personal/Shall-rename/wall.sh >> /Users/amrpandey/dev-amriteya/Projects/Personal/Shall-rename/log 2>&1'  | crontab  -
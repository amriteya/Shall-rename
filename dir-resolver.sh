#!/bin/bash

CURRENT_DIR=$(pwd)
DIR=$(dirname $0)
if [ $DIR == '.' ]; then
	DIR="$CURRENT_DIR"
fi
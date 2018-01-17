#!/bin/bash
# This script changes the volume of this machine

#if [[ -z $1 || ! $1 =~ ^[0-9]+$ ]]; then
#  exit 1
#fi

if [ "$#" -ne 1 ]; then
    echo "default"
    vol_num=+5
else
    vol_num=$1
fi
echo "$vol_num"
#/usr/bin/osascript -e "set Volume $vol_num"
#/usr/bin/osascript -e "set volume output volume (output volume of (get volume settings) -5) --100%"
/usr/bin/osascript -e "set volume output volume (output volume of (get volume settings) $vol_num) --100%"
echo "done"


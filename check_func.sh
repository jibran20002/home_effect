vol_num=$1
echo "$vol_num"
/usr/bin/osascript -e "set Volume $vol_num"
echo "done"


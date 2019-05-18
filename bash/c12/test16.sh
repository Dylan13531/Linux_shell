#===============================================================
# File Name: test13.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 10:30:36 PM CST
#=============================================================
#!/bin/bash

#Check if either a directory or file exists
#
item_name=$HOME/sentinel
echo
echo "The item being checked: $item_name."
echo
#
if [ -e $item_name ]
then
	echo "The item, $item_name, does exist."
	echo "But is it a file?"
	echo
	if [ -f $item_name ]
	then
		echo "Yes, $item_name is a file."
		echo "But is it writable?"
		echo
		if [ -w $item_name ]
		then
			echo "Writing current time to $item_name."
			date +'%Y-%m-%d(%H:%M)' >> $item_name
		else
			echo "Unable to write to $item_name."
		fi
	else
		echo "No, $item_name is not a file."
	fi
else
	echo "The item, $item_name, does not exist."
	echo "Nothing to update."
fi

#===============================================================
# File Name: test15.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 10:39:16 PM CST
#=============================================================
#!/bin/bash

file_name=$HOME/sentinel

if [ -f $file_name ]
then
	if [ -s $file_name ]
	then
		echo "The $file_name file exists and has data in it."
		echo "Will not remove this file."
	else
		echo "The $file_name file exists, but is empty."
		echo "Deleting empty file..."
		rm $file_name
	fi
else
	echo "File, $file_name, does not exist."
fi

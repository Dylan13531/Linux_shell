#===============================================================
# File Name: test12.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 05:29:50 PM CST
#=============================================================
#!/bin/bash
location=$HOME
file_name="sentinel"

if [ -e $location ]
then
	echo "Ok on the $location directory."	
	echo "Now checking on the file, $file_name."
	if [ -e $location/$file_name ]
	then
		echo "Ok on the filename"
		echo "Updating Current Date..."
		date >> $location/$file_name
	else
		echo "File does not exist"
		echo "Nothing to update"
	fi
else
	echo "The $location directory does not exist."
	echo "Nothing to update."
fi

#===============================================================
# File Name: test07.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sun 19 May 2019 08:48:15 PM CST
#=============================================================
#!/bin/bash
#
#

if [ -n "$1" ]
then 
	echo Hello $1, glad to meet you.
	if [ -d $1 ]
	then
		echo $1 is a directory.
	elif [ -f $1 ]
	then
		echo $1 is a file
		cat $1
	fi
else
	echo "Sorry, you did not identify yourself."
fi

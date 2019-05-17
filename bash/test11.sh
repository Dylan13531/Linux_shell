#===============================================================
# File Name: test11.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 05:25:39 PM CST
#=============================================================
#!/bin/bash

jump_directory="/home/yibin.yang"

if [ -d $jump_directory ]
then
	echo "The $jump_directory exists"
	cd $jump_directory
	ls
else
	echo "The $jump_directory does not exists."
fi

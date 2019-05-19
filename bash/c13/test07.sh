#===============================================================
# File Name: test06.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sat 18 May 2019 09:39:54 AM CST
#=============================================================
#!/bin/bash
direct=`cd ..; pwd`
direct=$direct'/*'
d2=`pwd`'/*'
for file in $direct $d2 '/home/rich'
do
	if [ -d "$file" ]
	then
		echo "$file is a directory."
	elif [ -f "$file" ]
	then
		echo "$file is a file."
	else
		echo "$file doesn't exist."
	fi
done

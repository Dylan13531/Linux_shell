#===============================================================
# File Name: test25.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sat 18 May 2019 10:15:29 PM CST
#=============================================================
#!/bin/bash
#
#

IFS=:
for folder in $PATH
do
	echo "$folder:"
	for file in $folder/*
	do
		if [ -x $file ]
		then 
			echo "	$file"
		fi
	done
done

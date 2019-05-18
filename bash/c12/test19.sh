#===============================================================
# File Name: test19.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 11:02:40 PM CST
#=============================================================
#!/bin/bash

if [ -G $HOME/testing ]
then
	echo "You are in the same group as the file."
else
	echo "The file is not owned by your group."
fi

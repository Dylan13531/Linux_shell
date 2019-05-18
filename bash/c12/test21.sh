#===============================================================
# File Name: test21.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 11:17:49 PM CST
#=============================================================
#!/bin/bash

if [ -d $HOME ] && [ -w $HOME/testing ]
then
	echo "The file exists and you can write to it."
else
	echo "I cannot write to the file."
fi

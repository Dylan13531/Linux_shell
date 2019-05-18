#===============================================================
# File Name: test18.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 10:59:06 PM CST
#=============================================================
#!/bin/bash

if [ -O /etc/passwd ]
then
	echo "You are the owner of the /etc/passwd file."
else
	echo "Sorry, you are not the owner of the /etc/passwd."
fi

#===============================================================
# File Name: test07.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 04:50:43 PM CST
#=============================================================
#!/bin/bash

#testing string equality
testuser="yibin.yang"
if [ $USER=$testuser ]
then
	echo "Welcome $testuser"
fi

#===============================================================
# File Name: test08.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 04:53:00 PM CST
#=============================================================
#!/bin/bash

#testing string equality
testuser=baduser
if [ $USER!=$testuser ]
then
	echo "This is not $testuser!"
else
	echo "Welcome $testuser!"
fi

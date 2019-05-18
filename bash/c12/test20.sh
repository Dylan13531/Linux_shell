#===============================================================
# File Name: testing20.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 11:14:57 PM CST
#=============================================================
#!/bin/bash

if [ test19.sh -nt test18.sh ]
then
	echo "The test19 file is newer than test18."
else
	echo "The test18 file is newer than test19."
fi

if [ test17.sh -ot test19.sh ]
then
	echo "The test17 file is older than test19."
else
	echo "The test17 file is newer than test19."
fi

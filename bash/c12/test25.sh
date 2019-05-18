#===============================================================
# File Name: test25.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 11:34:14 PM CST
#=============================================================
#!/bin/bash

if [ $USER="yibin.yang" ]
then 
	echo "Welcome $USER."
	echo "Please enjoy your visit."

elif [ $USER = "barbara" ]
then
	echo "Welcome $USER."
	echo "Please enjoy your visit."
elif [ $USER = "testing" ]
then
	echo "Welcome $USER."
	echo "Please enjoy your visit."
elif [ $USER = "jessica" ]
then
	echo "Welcome $USER."
	echo "Please enjoy your visit."
else
	echo "Sorry, you are not allowed here."
fi

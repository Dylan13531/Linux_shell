#===============================================================
# File Name: test10.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 05:16:57 PM CST
#=============================================================
#!/bin/bash

val1=testing
val2=''

if [ -n $val1 ]
then
	echo "The string '$val1' is not empty"
else
	echo "The string '$val1' is empty"
fi

if [ -z $val2 ]
then 
	echo "The string '$val2' is empty"
else
	echo "The string '$val2' is not empty"
fi

if [ -z $val3 ]
then 
	echo "The string '$val2' is empty"
else
	echo "The string '$val2' is not empty"
fi

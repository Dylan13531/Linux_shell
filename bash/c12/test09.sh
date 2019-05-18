#===============================================================
# File Name: test09.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 05:08:39 PM CST
#=============================================================
#!/bin/bash

#! /bin/bash

val1=baseball
val2=hockey

if [ $val1\>$val2 ]
then
	echo "$val1 is greater than $val2"
else
	echo "$val1 is less than $val2"
fi

#===============================================================
# File Name: badtest.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 04:58:13 PM CST
#=============================================================
#!/bin/bash
var1=5
var2=6

if [ $var1 > $var2 ]
then
	echo "$var1 is greater than $var2"
else
	echo "$var1 is less than $var2"
fi

#===============================================================
# File Name: test09b.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 05:14:23 PM CST
#=============================================================
#!/bin/bash

val1=Testing
val2=testing

if [ $val1 \> $val2 ]
then
	echo "$val1 is greater than $val2."
else
	echo "$val1 is less than $val2."
fi

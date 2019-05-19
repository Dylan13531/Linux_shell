#===============================================================
# File Name: test18.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sat 18 May 2019 09:41:05 PM CST
#=============================================================
#!/bin/bash
#
#
var1=1

while [ $var1 -lt 10 ]
do
	if [ $var1 -eq 5 ]
	then
		break
	fi
	echo "Iteration: $var1"
	var1=`expr $var1 + 1`
done

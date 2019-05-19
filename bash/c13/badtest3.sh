#===============================================================
# File Name: badtest3.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sat 18 May 2019 09:54:12 PM CST
#=============================================================
#!/bin/bash
#
#

var1=0
while echo "while iteration: $var1"
		[ $var1 -lt 15 ]
do
	if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
	then
		continue
	fi
	echo "	Inside iteration number: $var1"
	(( var1=$var1+1 ))
done

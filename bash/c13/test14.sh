#===============================================================
# File Name: test14.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sat 18 May 2019 10:39:43 AM CST
#=============================================================
#!/bin/bash

for (( a=1; a<=3; a++ ))
do
	echo "Starting loop $a:"
	for (( b=1;b<=3;b++ ))
	do
		echo "	Inside loop: $b."
	done
done

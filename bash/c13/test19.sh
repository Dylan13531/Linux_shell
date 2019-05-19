#===============================================================
# File Name: test19.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sat 18 May 2019 09:46:06 PM CST
#=============================================================
#!/bin/bash
#
#
for (( a=1; a<4; a++ ))
do
	echo "Outer loop: $a."
	for (( b=1;b<100;b++ ))
	do
		if [ $b -eq 5 ]
		then
			break
		fi
		echo "	Inner loop: $b."
	done
done

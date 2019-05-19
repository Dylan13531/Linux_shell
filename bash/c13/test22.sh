#===============================================================
# File Name: test22.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sat 18 May 2019 09:59:13 PM CST
#=============================================================
#!/bin/bash
#
#

for (( a=1; a<=5; a++ ))
do
	echo "Iteration $a:"
	for (( b=1; b<3; b++ ))
	do
		if [ $a -gt 2 ] && [ $a -lt 4 ]
		then
			continue 2
		fi
		var3=$[ $a*$b ]
		echo "	The result of $a*$b=$var3"
	done
done

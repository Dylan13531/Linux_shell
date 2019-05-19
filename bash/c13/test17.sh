#===============================================================
# File Name: test17.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sat 18 May 2019 09:37:35 PM CST
#=============================================================
#!/bin/bash
#
#
for var1 in 1 2 3 4 5 6 7 8 9 10
do
	if [ $var1 -eq 5 ]
	then
		break
	fi
	echo "Iteration number: $var1"
done
echo "The for loop is completed."

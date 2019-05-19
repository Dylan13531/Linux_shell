#===============================================================
# File Name: test21.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sat 18 May 2019 09:52:10 PM CST
#=============================================================
#!/bin/bash
#
#

for (( var1=1; var1<15; var1++ ))
do
	if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
	then
		continue
	fi
	echo "Iteration number: $var1."
done

#===============================================================
# File Name: test13.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sun 19 May 2019 09:13:08 PM CST
#=============================================================
#!/bin/bash
#
#

echo
count=1
while [ -n  "$1" ]
do
	echo "Parameter #$count = $1"
	count=$[ $count+1 ]
	shift
done

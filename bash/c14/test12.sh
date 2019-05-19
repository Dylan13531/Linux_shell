#===============================================================
# File Name: test12.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sun 19 May 2019 09:09:16 PM CST
#=============================================================
#!/bin/bash
#
#

echo
count=1

for param in "$*"
do
	echo "\$* Parameter #$count = $param"
	count=$[ $count+1 ]
done

echo
count=1

for param in "$@"
do
	echo "\$@ Parameter #$count = $param"
	count=$[ $count+1 ]
done

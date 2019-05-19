#===============================================================
# File Name: test01.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sun 19 May 2019 08:18:58 PM CST
#=============================================================
#!/bin/bash
#
#

factorial=1
for (( number=1;number<=$1;number++ ))
do
	factorial=$[ $factorial*$number ]
done
echo The factorial of $1 is $factorial.

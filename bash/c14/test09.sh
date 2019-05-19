#===============================================================
# File Name: test09.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sun 19 May 2019 08:57:29 PM CST
#=============================================================
#!/bin/bash
#
#

if [ $# -ne 2 ]
then
	echo
	echo Usage: test09.sh a b.
	echo
else
	total=$[ $1+$2 ]
	echo
	echo The total is $total.
	echo
fi

#===============================================================
# File Name: test23.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 11:25:44 PM CST
#=============================================================
#!/bin/bash
val1=10
if (( $val1**2 > 90 ))
then
	(( val2=$val1**2 ))
	echo "The square of $val1 is $val2."
fi

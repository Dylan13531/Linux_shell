#===============================================================
# File Name: test13.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sat 18 May 2019 10:36:52 AM CST
#=============================================================
#!/bin/bash
var1=100

until echo $var1
		[ $var1 -eq 0 ]
do
	echo Inside the loop: $var1
	var1=$[ $var1-25 ]
done

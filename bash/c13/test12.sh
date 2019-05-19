#===============================================================
# File Name: test12.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sat 18 May 2019 10:35:04 AM CST
#=============================================================
#!/bin/bash

var1=100

until [ $var1 -eq 0 ]
do
	echo $var1
	var1=$[ $var1-25 ]
done

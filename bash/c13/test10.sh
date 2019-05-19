#===============================================================
# File Name: test10.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sat 18 May 2019 10:25:46 AM CST
#=============================================================
#!/bin/bash

var1=10
while [ $var1 -gt 0 ]
do
	echo $var1
	(( var1= $var1-1 )) 
done

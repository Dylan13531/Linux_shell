#===============================================================
# File Name: test11.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sat 18 May 2019 10:31:06 AM CST
#=============================================================
#!/bin/bash
var1=10
while echo $var1 
		[ $var1 -ge 0 ]
do
	echo "This is inside the loop."
	var1=$[ $var1-1 ]
done

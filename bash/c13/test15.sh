#===============================================================
# File Name: test15.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sat 18 May 2019 10:54:36 AM CST
#=============================================================
#!/bin/bash
#
#
var1=5
while [ $var1 -ge 0 ]
do
	echo "Outer loop: $var1."
	for (( var2=1; $var2<3; var2++ ))
	do
		var3=$[ $var1*$var2 ]
		echo "Inner loop: $var1*$var2=$var3"
	done
	var1=$[ $var1-1 ]
done

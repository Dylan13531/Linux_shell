#===============================================================
# File Name: numeric_test.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 
# Created Time: Fri 17 May 2019 01:13:06 PM CST
#=============================================================
#!/bin/bash
#Using numeric test evaluations

value1=10
value2=11
if [ $value1 -gt 5 ]
then
	echo "The test value $value1 is greater than 5."
fi

if [ $value1 -eq $value2 ]
then
	echo "The values are equal."
else
	echo "The values are different."
fi

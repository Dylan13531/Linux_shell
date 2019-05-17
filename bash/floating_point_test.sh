#===============================================================
# File Name: floating_point_test.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 04:46:38 PM CST
#=============================================================
#!/bin/bash

#Using floating point numbers in test evaluations

value1=5.55
echo "The test value is $value1"
if [ $value1 -gt 5 ]
then
	echo "The test value $value1 is greater than 5."
fi

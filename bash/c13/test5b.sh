#===============================================================
# File Name: test05.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sat 18 May 2019 09:27:18 AM CST
#=============================================================
#!/bin/bash

file="states"
IFS=$'\n'
for state in $( cat $file )
do
	echo "Visit beautiful $state"
done

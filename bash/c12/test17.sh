#===============================================================
# File Name: test17.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 10:56:38 PM CST
#=============================================================
#!/bin/bash

file_name=test16.sh
if [ -x $file_name ]
then
	echo "you can run the script:"
	./test16.sh
else
	echo "Sorry, you are unable to execute the script."
fi

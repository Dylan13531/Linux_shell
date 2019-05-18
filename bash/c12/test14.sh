#===============================================================
# File Name: test14.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 10:35:43 PM CST
#=============================================================
#!/bin/bash

pwfile=/etc/shadow
pwfile=/etc/passwd

if [ -f $pwfile ]
then
	if [ -r $pwfile ]
	then
		tail $pwfile
	else
		echo "Sorry, I am unable to read the $pwfile file."
	fi
else
	echo "Sorry, the file $pwfile does not exist."
fi

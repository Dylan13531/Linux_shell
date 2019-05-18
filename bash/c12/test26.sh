#===============================================================
# File Name: test26.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 11:38:00 PM CST
#=============================================================
#!/bin/bash

case $USER in
rich | barbara)
	echo "Welcome, $USER"
	echo "Please enjoy your visit.";;
$USER)
	echo "Special testing account.";;
jessica)
	echo "Do not forget to log off when you are down.";;
*)
	echo "Sorry, you are not allowed here.";;
esac

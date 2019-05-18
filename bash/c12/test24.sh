#===============================================================
# File Name: test24.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Fri 17 May 2019 11:29:49 PM CST
#=============================================================
#!/bin/bash
echo $USER
if [[ -d $HOME ]]
then 
	echo "Hello $USER"
else
	echo "Sorry, I do not know you."
fi

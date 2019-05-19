#===============================================================
# File Name: test24.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sat 18 May 2019 10:10:37 PM CST
#=============================================================
#!/bin/bash
#
#

for state in "North Dakota" connecticut Illinois Alabama Tennessee
do
	echo "$state is the next place to go."
done | sort -r
echo "This complete our travels."

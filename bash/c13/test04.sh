#===============================================================
# File Name: test04.sh
# Author: yibin.yang
# mail: 13162687569@163.com
# tel: 13162687569
# Created Time: Sat 18 May 2019 09:25:01 AM CST
#=============================================================
#!/bin/bash
list="Alabama Alaska Arizona Arkansas Colorado"
list=$list" Connecticut"
for state in $list
do
 echo "Have you ever visitd $state"
done

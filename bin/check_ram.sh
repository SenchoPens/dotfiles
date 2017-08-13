#!/bin/bash

free=`free -mt | grep Total | awk '{print $4}'`
echo $free
if [ $free > 256 ]; then
        ps -eo %mem,pid,user,args >/tmp/processes.txt
        echo 'Warning, free memory is '$free'mb' | notify-send
fi

#!/bin/bash

output=$HOME/research/sys_info.txt

if [ $(whoami) = "root" ]
then 
 echo "Do not run this script using sudo"
 exit
fi

if [ ! -d $HOME/research ]
then
 mkdir $HOME/research
fi

if [ -f $output ]
then
 rm  $output
fi

ip=$(ip addr | head -9 | tail -1)

files=$(find /home -type f -perm 777 2>/dev/null )

echo $ip > $output

echo $files > $output 




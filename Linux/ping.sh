#!/bin/bash

for ip in $(cat IP_Addresses.txt)
do
  ping -c 1 $ip
  if [[ $(ping -c 1 $ip) == *"100% packet loss"* ]]
  then
    echo "$IP is unreachable"
    sudo traceroute -I $ip
  fi
done

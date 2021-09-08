#!/bin/bash
echo "The current date is $(date +'%m/%d/%Y') "
echo "The name of my Operating System is $(uname) "
echo "The IP address is $(ifconfig enp0s3 | head -2 | tail -1 | awk '{print $2}') "
echo "The Hostname is $(hostname) "




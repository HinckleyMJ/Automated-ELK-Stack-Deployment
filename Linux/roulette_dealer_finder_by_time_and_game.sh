#!/bin/bash

cat $1_Dealer_schedule | awk -F" " '{print $1, $2, $3, $4}' | grep "$2"

cat $1_Dealer_schedule | awk -F" " '{print $1, $2, $5, $6}' | grep "$2"

cat $1_Dealer_schedule | awk -F" " '{print $1, $2, $7, $8}' | grep "$2"











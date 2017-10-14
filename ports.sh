#!/bin/bash

# This script is intended to take the output of masscanr and sort the 
# file by the open ports reported back for each IP. The output format is:
#   
#       $PORT    $IP_ADDR   $EPOCH_TIMisE

cat $1 | while read line; do sed "s/open tcp //" <<< "$line" >> clean_$1; done;
cat clean_$1 | sort -V >> sorted_$1 && mv sorted_$1 $1 && rm clean_$1

#!/bin/bash

in=$1
temp=temp.$1
out=hosts.$1

dig -f $in +noall +short | tee -a $temp && \
sort -u $temp > $out && \
rm $temp

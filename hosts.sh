#!/bin/bash

in=$1
temp=temp.$1
out=hosts.$1

dig -f $in +noall +short | tee -a $out && \
cat $out | grep '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' | sort | uniq > $temp

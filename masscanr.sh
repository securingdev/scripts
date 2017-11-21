#!/bin/bash

addr=$1
out=$(echo $addr | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}')

masscan -p1-65535 --rate 1000 $1 -oL $out.txt

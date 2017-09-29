#!/bin/bash

add=$1
out=$(echo $add | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}')

masscan -p1-65535 --rate 10000 $1 -oL $1.txt

#!/bin/bash

# Input URL / Output File
url=$1
out=$(echo $url | sed 's/https:\/\///;s|\/.*||')

# SecLists files, symlinked to /root/Web_Content
files=/root/Web_Content/raft-large-files-lowercase.txt
direc=/root/Web_Content/raft-large-directories-lowercase.txt
words=/root/Web_Content/raft-large-words-lowercase.txt
robot=/root/RobotsDisallowed/Top10000-RobotsDisallowed.txt

# Gobuster
gobuster -u $url -t 25 -s 200 -fw -e -w $direc | tee -a gobust.$out.txt && \
gobuster -u $url -t 25 -s 200 -fw -e -w $words | tee -a gobust.$out.txt && \
gobuster -u $url -t 25 -s 200 -fw -e -w $files | tee -a gobust.$out.txt && \
gobuster -u $url -t 25 -s 200 -fw -e -w $robot | tee -a gobust.$out.txt

#!/bin/bash

# A quick helper script for using GoBuster with discovery files
# and then writing the output to a file for later review

# Input URL / Output File
url=$1
out=$(echo $var | sed 's/https:\/\///;s|\/.*||')

# SecLists files, symlinked to /root/Web_Content
files=/root/Web_Content/raft-large-files-lowercase.txt
directories=/root/Web_Content/raft-large-directories-lowercase.txt
words=/root/Web_Content/raft-large-words-lowercase.txt

# Gobuster
gobuster -u $url -t 25 -m dir -w $files | tee -a gobust.$out.txt && \
gobuster -u $url -t 25 -m dir -w $directories | tee -a gobust.$out.txt && \
gobuster -u $url -t 25 -m dir -w $words | tee -a gobust.$out.txt

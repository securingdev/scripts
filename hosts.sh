#!/bin/bash

in=$1
out=hosts.$1
dns=(8.8.8.8 8.8.4.4 208.67.220.220 208.67.222.222)

while read line; do
        rnum=$[($RANDOM % 4)]
        resolver=${dns[$rnum]}
        ip=$(dig +short @$resolver $line)

        echo ""
        echo "Resolver: " $resolver && \
        echo "Domain: " $line && \
        echo "IP: " $ip && \
        echo "" && \
        echo $line $ip >> $out && \
        sleep 1 && \
        sleep $[($RANDOM % 3)]
done < $1

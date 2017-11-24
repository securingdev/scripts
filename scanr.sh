#!/bin/bash

in=$1
out=masscan.$in

while read line; do
        echo $line >> $out
        ip=$(echo $line | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | head -1)
        
        if [ -z "$ip" ]; 
            then
                continue
        else
            echo "" && \
            echo "IP: " $ip && \
            echo "" && \
            masscan -p1-65535 --rate 1000 $ip -oL $ip.txt && \
            cat $ip.txt >> $out && rm $ip.txt &&\
            echo "" >> $out && \
            sleep $[($RANDOM %3)]
        fi
done < $in

#rm $1

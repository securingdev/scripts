#!/bin/bash
url=$1

curl -sI -X OPTIONS $url | grep "Allow:" | tee && \
curl -sI -X MKCOL $url | grep "Allow:" | tee && \
curl -sI -X CHECKOUT $url | grep "Allow:" | tee && \
curl -sI -X MOVE $url | grep "Allow:" | tee && \
curl -sI -X PUT $url | grep "Allow:" | tee && \
curl -sI -X UNCHECKOUT $url | grep "Allow:" | tee && \
curl -sI -X COPY $url | grep "Allow:" | tee && \
curl -sI -X REPORT $url | grep "Allow:" | tee && \
curl -sI -X GET $url | grep "Allow:" | tee && \
curl -sI -X LABEL $url | grep "Allow:" | tee && \
curl -sI -X PROPFIND $url | grep "Allow:" | tee && \
curl -sI -X UPDATE $url | grep "Allow:" | tee && \
curl -sI -X MKACTIVITY $url | grep "Allow:" | tee && \
curl -sI -X POST $url | grep "Allow:" | tee && \
curl -sI -X MKWORKSPACE $url | grep "Allow:" | tee && \
curl -sI -X LOCK $url | grep "Allow:" | tee && \
curl -sI -X CONNECT $url | grep "Allow:" | tee && \
curl -sI -X UNLOCK $url | grep "Allow:" | tee && \
curl -sI -X TRACE $url | grep "Allow:" | tee && \
curl -sI -X PATCH $url | grep "Allow:" | tee && \
curl -sI -X MERGE $url | grep "Allow:" | tee && \
curl -sI -X PROPPATCH $url | grep "Allow:" | tee && \
curl -sI -X BASELINE-CONTROL $url | grep "Allow:" | tee && \
curl -sI -X HEAD $url | grep "Allow:" | tee && \
curl -sI -X DELETE $url | grep "Allow:" | tee && \
curl -sI -X VERSION-CONTROL $url | grep "Allow:" | tee && \
curl -sI -X DDDD $url | grep "Allow:" | tee && \
curl -sI -X CHECKIN $url | grep "Allow:" | tee

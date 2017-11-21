#!/bin/bash

in=$1
out=hosts.$1

dig -f $in +noall +short | tee -a $out

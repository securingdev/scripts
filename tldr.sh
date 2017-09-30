#!/bin/bash

# Define your input and output files to store the URL information
in=$1
out=$2

# Step 1: Select-all and "Copy Selected URLs" in the Burp Suite Pro Site map
# Step 2: pbpaste > $FILE_NAME.txt
# Step 3: tldr $FILE_NAME.txt $OUTPUT_FILE.txt
# Step 4: ...
# Step 5: Profit!

# And this is where the magic happens:
cat $in | uniq | grep -Eo '(http|https)://[^/"]+' | uniq > $out

#!/bin/bash

# The password is requested once the script is run, and the original is deleted
# after encryption is successfully completed.

# Suggestion:
#   $ cd /usr/local/bin && sudo ln -s /path/to/encrypt.sh encrypt

INPUT_FILE=$1
OUTPUT_FILE="${INPUT_FILE}.enc"

openssl enc -aes-256-cbc -salt -in $INPUT_FILE -out $OUTPUT_FILE && rm -rf $INPUT_FILE

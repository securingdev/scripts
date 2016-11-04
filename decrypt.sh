#!/bin/bash

# The password is requested when the script is run. The encrypted file will be
# deleted on successfully decrypting the file.

# Suggestion:
#   $ cd /usr/local/bin && sudo ln -s /path/to/decrypt.sh decrypt

INPUT_FILE=$1
OUTPUT_FILE="${INPUT_FILE%.enc}.dec"
openssl enc -d -aes-256-cbc -in $INPUT_FILE > $OUTPUT_FILE && rm -rf $INPUT_FILE

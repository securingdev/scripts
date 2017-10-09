#!/bin/bash

nmap -n -PN -p80 --script=http-iis-webdav-vuln $1

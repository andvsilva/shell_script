#!/bin/bash

cut -d ':' -f 7 /etc/passwd | sort | uniq -u
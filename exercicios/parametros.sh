#!/bin/bash

i=1; # start index
for user in "$@" # loop in arguments
do
    echo "Parâmetro $i: $user"; # print 
    i=$((i + 1)); # increment i 
done
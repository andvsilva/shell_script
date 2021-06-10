#!/bin/bash


# grep: grep searches for text in a file and 
# returns the line(s) where it finds a match.
# For example, if you were searching for the word apple in your file

if grep -q "$1" <<< "$2" ; then
    echo $1 está contida em $2
fi
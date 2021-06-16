#!/bin/bash

function concatenate_args
{
    string=""
    for a in "$@" # Loop over arguments
    do
        if [[ "${a:0:1}" != "-" ]] # Ignore flags (first character is -)
        then
            if [[ "$string" != "" ]]
            then
                string+="_" # Delimeter
            fi
            string+="$a"
        fi
    done
    echo "$string"
}

# Usage:
args="$(concatenate_args "$@")"
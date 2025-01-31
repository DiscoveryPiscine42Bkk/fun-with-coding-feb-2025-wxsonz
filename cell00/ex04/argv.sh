#!/bin/bash

if [ $# -eq 0 ]; then
    echo "no argument provided"
else
    for arg in "$@"; do
        echo "$arg"
    done
fi

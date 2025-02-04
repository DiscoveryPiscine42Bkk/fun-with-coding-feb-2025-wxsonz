#!/bin/bash

# mkdir with the name of "ex" until the limit given in argument
# with number in this format ex00 ex01 ex02 ...

i=0

for i in $(seq -w 0 $1); do
    # if dir is already exist, skip
    if [ -d ex$i ]; then
        echo "ex$i is already exist"
        continue
    fi
    if [ -d ex0$i ]; then
        echo "ex0$i is already exist"
        continue
    fi
    if [ "$i" -ge 10 ]; then
        mkdir ex$i
    else
        mkdir ex0$i
    fi
done

#!/bin/sh

count=0
while [ $count -lt 10 ]; do
    ls -f . | head -n 10 | perl -lne unlink
    count=`expr ${count} + 1`
    sleep 2
done

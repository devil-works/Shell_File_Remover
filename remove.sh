#!/bin/sh

count=0
while [ $count -lt 1000 ]; do
    ls -f . | head -n 1000 | perl -lne unlink
    count=`expr ${count} + 1`
    sleep 1
done

#!/bin/bash

cpuN=`cat /proc/cpuinfo | grep "processor" | wc -l`
cpuList=`seq 1 $cpuN`
for i in $cpuList 
do
    dd if=/dev/zero of=/dev/null
done
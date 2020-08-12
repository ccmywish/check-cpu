#!/bin/bash

bashpid=$(ps aux | grep 'bash cpu.sh' | awk 'NR==1 {print $2}')
kill -9 ${bashpid}

ddpid=$(ps aux | grep 'dd if' | awk 'NR==1 {print $2}')
kill -9 ${ddpid}

# zombie pid cannot stop
# ps -ef | grep defunct

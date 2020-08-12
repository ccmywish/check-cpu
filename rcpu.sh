#!/bin/bash

ddpid=$(ps aux | grep 'dd if' | awk 'NR==1 {print $2}')
kill -9 ${ddpid}


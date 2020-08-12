#!/bin/bash
# ps auxw|head -1;ps auxw|sort -rn -k3|head -1

# cpu
ps aux | grep 'dd if' | awk 'NR==1 {print $3}'

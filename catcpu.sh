#!/bin/bash

maxcpu=$(ps auxw|sort -rn -k3|head -1 | awk 'NR==1 {print $3}')
maxcpucmd=$(ps auxw|sort -rn -k3|head -1 | awk 'NR==1 {print $11}')

echo ${maxcpu}
echo ${maxcpucmd}



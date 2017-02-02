#!/bin/sh

set -m # Enable Job Control

for i in `seq $1`; do 
  echo $i &
done

# Wait for all parallel jobs to finish
while [ 1 ]; do fg 2> /dev/null; [ $? == 1 ] && break; done

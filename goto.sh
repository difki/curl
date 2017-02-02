#!/bin/sh

set -m # Enable Job Control
num_of_runs=$2
site=$1
for run in `seq $num_of_runs`; do 
	echo "Run - $run";
	curl -s $site > /dev/null  &
	echo "Rinning pid - $!"
done


# Wait for all parallel jobs to finish
#while [ 1 ]; do fg 2> /dev/null; [ $? == 1 ] && break; done

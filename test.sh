#!/bin/bash
a=$( ls -l | grep "alpha.sh" )
echo "$a"
echo "${a[0]}"


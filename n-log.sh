#!/bin/bash
echo -n "Common logarithm of $1 is: "
echo "scale=5; l($1)/l(10)" | bc -l

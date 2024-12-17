#!/bin/bash
read -p "Enter a number" num
echo "scale=5; e(l($num)/3)" | bc -l

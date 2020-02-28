#!/bin/bash

if [ "$1" == "-h" ]; then
  echo "Usage: `basename $0` This will sort your blast format 6 output and pick the top hit based on bitscore, e-value, and coverage."
  exit 0
fi

echo "Input blast file: $1"
sort -k 1,1 -k 12,12gr -k 11,11g -k 3,3gr $1 | sort -u -k 1,1 --merge > $2
echo "printed to: $2"
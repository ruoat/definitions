#!/bin/bash
# -*- coding: utf-8 -*-
# automatic testing script to see that diagram sequences are in 
# the README.md file

set -eu

cd $(dirname $0) # be in root folder

QUERYFILE="README.md"
QUERYDIR="sequence-diagrams"

cd $QUERYDIR

RETVAL=0

echo $(pwd)

for i in *; do
  if [[ $i =~ (plantuml|puml) ]]; then
      if !(grep -q "$i" $QUERYFILE); then
        echo $i " does not exist in ""$QUERYFILE"
        RETVAL=1
      fi
  fi
done

exit $RETVAL

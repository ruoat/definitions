#!/bin/bash
# -*- coding: utf-8 -*-
# automatic testing script to see that diagram sequences are in 
# the README.md file

set -eu

QUERYFILE="README.md"
QUERYDIR="sequence-diagrams"

cd $QUERYDIR # assumption: script starts in root folder

RETVAL=0

for i in *; do
  if [[ $i =~ (plantuml|puml)$ ]]; then
      if !(grep -q "$i" $QUERYFILE); then
        echo $i " does not exist in ""$QUERYFILE"
        RETVAL=1
      fi
  fi
done

exit $RETVAL

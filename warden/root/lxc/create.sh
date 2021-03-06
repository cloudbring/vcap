#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <instance name>"
  exit 1
fi

# Change to directory that holds this script
cd $(dirname $(readlink -f ${0}))

cp -r .instance-skeleton .instance-$1
.instance-$1/setup.rb

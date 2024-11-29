#!/bin/bash

# Run PADD
# If we’re on the PiTFT screen (ssh is xterm)
if [ "$TERM" == "linux" ] ; then
  while :
  do
    ~/padd.sh
    sleep 1
  done
fi

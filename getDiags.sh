#!/bin/bash

IP_LIST="10.255.73.254
10.255.72.139
10.255.72.175
10.255.72.102
10.255.72.72
10.255.72.86
10.255.72.142
10.255.72.45
10.255.72.79
10.255.72.130
10.255.74.110
10.255.72.94
10.255.72.58
10.255.72.127
10.255.72.49
10.255.72.59
10.255.72.62
10.255.72.60
10.255.72.31
10.255.72.123
10.255.72.110
10.255.75.86
10.255.75.77"

PAGE=cb/FileIO

for i in $IP_LIST 
  do echo Processing $i
  wget --quiet --tries=1 --timeout=5 $i:8080/$PAGE
  if [ "$?" -eq "0" ]; then
    mv FileIO $i.htm
  else
    echo Error getting page from $i
  fi
done



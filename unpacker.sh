#!/usr/bin/env bash

for tar in *.gz
do
  dirname=`echo $tar | sed 's/\.tar.gz$//'`
  if mkdir "$dirname"
  then
    if cd "$dirname"
    then
      tar zxvf ../"$tar"
      cd ..
      # rm -f $zip # Uncomment to delete the original zip file
    else
      echo "Could not unpack $tar - cd failed"
    fi
  else
    echo "Could not unpack $tar - mkdir failed"
  fi
done

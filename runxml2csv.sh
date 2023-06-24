#!/bin/bash


# Iterate over all subdirectories in the PDBligs directory
for dir in */; do
  # navigate to subdirectory
  cd "$dir"
  # run the Python script
  ./xml2csv.sh
  # navigate back to parent directory
  cd ..
  #echo "finished target"
done


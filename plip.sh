#!/bin/bash
# Iterate over all subdirectories in the directory
for dir in */; do
  # navigate to subdirectory
  cd "$dir"
  for file in *; do
    mkdir "$file-analysis"
    cp $file "$file-analysis"
    cd "$file-analysis"
    plip -f $file -pxty
    cd ..
  done
  cd ..
done



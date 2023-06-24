#!/bin/bash

# Set the path to the PDBligs.py script
run='/home/ahr/Desktop/HTVS/docked_ligands/complex.py'

# Iterate over all subdirectories in the PDBligs directory
for dir in */; do
  # navigate to subdirectory
  cd "$dir"
  # run the Python script
  python3 "$run"
  # navigate back to parent directory
  cd ..
  echo "finished target"
done


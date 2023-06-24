#!/bin/bash
### find /home/ahr/Desktop/HTVS/complex/*/complex_* -type d -exec cp -r xml2csv.py {} \;
# Set the path to the PDBligs.py script
run='/home/ahr/Desktop/HTVS/complex/xml2csv.py'

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


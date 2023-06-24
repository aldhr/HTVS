#!/bin/bash

# directory where subfolders are located
main_dir="/home/ahr/Desktop/HTVS/docked_ligands"

# location of python script
script_path="/home/ahr/Desktop/HTVS/docked_ligands/lig2pdb.py"

# iterate through subfolders in main_dir
for subfolder in "$main_dir"/*/; do
    # enter subfolder
    cd "$subfolder"
    # run python script
    python3 "$script_path" 
    # go back to main_dir
    cd "$main_dir"
done

# Loop through all pdb files in the targets directory
for file in /home/ahr/Desktop/HTVS/targets/*.pdb; do
  # Get the base name of the file (e.g. PSC1, REC2)
  base=$(basename "$file" .pdb)

  # Check if a folder with the same name exists in the TLpair directory
  if [ -d "/home/ahr/Desktop/HTVS/docked_ligands/$base" ]; then
    # Copy the file to the matching folder
    cp "$file" "/home/ahr/Desktop/HTVS/docked_ligands/$base"
  fi
done


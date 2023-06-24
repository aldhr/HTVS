import pymol
import os
import glob

def lig2pdb (mol2, pdb):
    pymol.cmd.load(mol2)
    pymol.cmd.save(pdb)
    pymol.cmd.delete("all")
    
#working directory
dir = os.getcwd()

#define ligands pattern to avoid using the target.pdb
ligs = "*.mol2"

#to identify them separately
ligands = glob.glob(ligs)

if ligands:
    for L in ligands:
        base, ext = os.path.splitext(os.path.basename(L))
        pdb_name = base + ".pdb"
        lig2pdb(L, pdb_name)
       

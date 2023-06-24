import os
import glob
import pymol

pymol.finish_launching(['pymol', '-qc'])

#working directory
dir = os.getcwd()

#define ligands pattern to avoid using the target.pdb
ligs = "*_best_cav_*.pdb"

#to identify them separately
ligands = glob.glob(os.path.join(dir,ligs))

#identify target
T=os.path.basename(os.getcwd()) + '.pdb'

# iterate over all ligands
#for L in ligands:
 #   pymol.cmd.load(L, object="ligand")
  #  pymol.cmd.load(T, object="target")
   # complex_name = "complex_" + os.path.basename(L)
   # pymol.cmd.save(complex_name)
    #print("Save", complex_name)

def complex(L_pdb, T_pdb):
    pymol.cmd.load(L_pdb, object="ligand")
    pymol.cmd.load(T_pdb, object="target")
    complex_name = "complex_" + os.path.basename(L_pdb)
    pymol.cmd.save(complex_name)
    pymol.cmd.delete("all")
    return print("Save", complex_name)

#to identify them separately
########ligands = glob.glob(ligs)

if ligands:
    for L in ligands:
       # base, ext = os.path.splitext(os.path.basename(L))
        #pdb_name = base + ".pdb"
        complex(L, T)
       

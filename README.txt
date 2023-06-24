### THIS IS JUST FOR NOTES
### do not run from here
### RUN from indicated folder

# mkdir docked_ligands
# cd docked_ligands
# ./download.sh 

##NOTE:
##download all files with download.sh
##make shure cavities are indicated right

##move files lig2pdb.py and parser.sh to docked_ligands
##INSIDE of "docked_ligands" run
#./parser.sh #which integrates already lig2pdb.py
##NOTE:
##make shure of path/to/files
#rm -d */*mol2

##cd ..
## FROM HTVS folder
## run ./copytarget
## this will copy files in target folder to each subfolder

##move files complex.py and complex.sh to docked_ligands
## After all of this, you should be ready for analysis on PLIP command line
## included in plip.sh

## then as plip output is in xml
## use xml2csv python script
## inside of every complex_ folder there's xml2csv.py script
## that runs under command of xml2csv.sh inside of each target folder (that contains complex)
## to be mastered by runcomplex.sh

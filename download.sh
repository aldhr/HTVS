# Define a list of targets
#targets=("REC2" "REC5" "6vxx_1_1_1_AAA" "6vxx_1_1_1_AAA_head" "6vxx_1_1_1_A" "PSC3" "PSC6" "PSC8") #cav 1
#cav=1
#targets=("REC3" "REC4") #cav 3 
#cav=3
#targets=("PSC2R" "PSC4" "PSC5") #cav 6 
#cav=6
targets=("PSC7") #cav 4 
cav=4
# Loop through each target
for target in "${targets[@]}"; do
    # Make a directory for the target
    mkdir "${target}"
    cd "${target}"

    # Use scp to download the files from the database
    scp -P 46985 aldoh@148.247.198.32:/home/aldoh/Work/allium/docking/${target}/*/best/*cav_0${cav}*mol2 .
    cd ..
done

## this code is for erasing "ac_" files, because those are from allium project. However, for safety is "ls" command instead of "rm"
#targets=("6vxx_1_1_1_A" "6vxx_1_1_1_AAA" "6vxx_1_1_1_AAA_head" "PSC2R"  "PSC3"  "PSC4"  "PSC5"  "PSC6"  "PSC7"  "PSC8"  "REC0"  "REC1"  "REC2"  "REC3"  "REC4"  "REC5")
#for target in "${targets[@]}"; do
#    cd "${target}"
#    ls *-ac_*_*
#    cd ..
#done



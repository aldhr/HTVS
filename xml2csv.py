#Library
import xml.etree.ElementTree as ET
import pandas as pd

#xmlparser
tree = ET.parse('report.xml')
root = tree.getroot()

#find id of tl pair
pdbid_name = root.find('.//pdbid').text
start = pdbid_name.find("COMPLEX_") + len("COMPLEX_")
cavs=("01", "03", "04", "06")
for x in cavs:
    try:
        end = pdbid_name.find("_BEST_CAV_" + str(x) + "_PROTEIN")
    except:
        pass

id = pdbid_name[start:end]
#id

#find information in xml
# create empty lists to store the data
resnr_list = []
restype_list = []
dist_list = []
interaction_list = []

# list of interaction types to extract
interaction_types = ['hydrophobic_interaction', 'hydrogen_bond', 'water_bridges', 'salt_bridges', 'pi_stacks','pi_cation_interactions','halogen_bonds','metal_complexes']

# iterate through the interaction types
for interaction_type in interaction_types:
    for interaction in root.iter(interaction_type):
        try:
            resnr_list.append(interaction.find('resnr').text)
            restype_list.append(interaction.find('restype').text)
          #  dist_list.append(interaction.find('dist').text)
            interaction_list.append(interaction_type)
        except:
            pass

# create a DataFrame from the lists
df = pd.DataFrame({'id': id, 'resnr': resnr_list, 'restype': restype_list, 'interaction': interaction_list})
df["resid"] = df[["restype", "resnr"]].apply("".join, axis=1)
df.to_csv(pdbid_name + ".csv")


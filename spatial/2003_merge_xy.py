<<<<<<< HEAD
<<<<<<< HEAD
# Some earleir files were provided with a master files
#   CANADA - ID and xy location
#   CANADA_xxx - had the # ID
# These had to be merged so each poi file had xy data included


import pandas as pd

# Set path
path =r'D:\Work\Noise\002_dmti_dat_choice\2003\EPOI\CAN'
#Bring in txt files from 2003, required EPOI
full = pd.read_csv(path + '\CANADA.txt')
air = pd.read_csv(path + '\CANADA_AER.txt')
edu = pd.read_csv(path + '\CANADA_EDU.txt')
hlt = pd.read_csv(path + '\CANADA_HCR.txt')
plc = pd.read_csv(path + '\CANADA_POL.txt')

# Subset main file (CANADA.txt) with just xy
df_xy = full[['POI_ID','X' , 'Y']]

# Join the xy values to each file
air_xy = pd.merge(air, df_xy, on='POI_ID')
edu_xy = pd.merge(edu, df_xy, on='POI_ID')
hlt_xy = pd.merge(hlt, df_xy, on='POI_ID')
plc_xy = pd.merge(plc, df_xy, on='POI_ID')

# Output
out = r'D:\Work\Noise\dmti_dat2\2003\EPOI\MERGE'

air_xy.to_csv(out + '\AIR_XY.csv')
edu_xy.to_csv(out +'\EDU_XY.csv')
hlt_xy.to_csv(out +'\HLT_XY.csv')
plc_xy.to_csv(out +'\PLC_XY.csv')
=======
# Some earleir files were provided with a master files
#   CANADA - ID and xy location
#   CANADA_xxx - had the # ID
# These had to be merged so each poi file had xy data included


import pandas as pd

# Set path
path =r'D:\Work\Noise\002_dmti_dat_choice\2003\EPOI\CAN'
#Bring in txt files from 2003, required EPOI
full = pd.read_csv(path + '\CANADA.txt')
air = pd.read_csv(path + '\CANADA_AER.txt')
edu = pd.read_csv(path + '\CANADA_EDU.txt')
hlt = pd.read_csv(path + '\CANADA_HCR.txt')
plc = pd.read_csv(path + '\CANADA_POL.txt')

# Subset main file (CANADA.txt) with just xy
df_xy = full[['POI_ID','X' , 'Y']]

# Join the xy values to each file
air_xy = pd.merge(air, df_xy, on='POI_ID')
edu_xy = pd.merge(edu, df_xy, on='POI_ID')
hlt_xy = pd.merge(hlt, df_xy, on='POI_ID')
plc_xy = pd.merge(plc, df_xy, on='POI_ID')

# Output
out = r'D:\Work\Noise\dmti_dat2\2003\EPOI\MERGE'

air_xy.to_csv(out + '\AIR_XY.csv')
edu_xy.to_csv(out +'\EDU_XY.csv')
hlt_xy.to_csv(out +'\HLT_XY.csv')
plc_xy.to_csv(out +'\PLC_XY.csv')
>>>>>>> d837de0008bf795c96540364486ad7da935565ea
=======
# Some earleir files were provided with a master files
#   CANADA - ID and xy location
#   CANADA_xxx - had the # ID
# These had to be merged so each poi file had xy data included


import pandas as pd

# Set path
path =r'D:\Work\Noise\002_dmti_dat_choice\2003\EPOI\CAN'
#Bring in txt files from 2003, required EPOI
full = pd.read_csv(path + '\CANADA.txt')
air = pd.read_csv(path + '\CANADA_AER.txt')
edu = pd.read_csv(path + '\CANADA_EDU.txt')
hlt = pd.read_csv(path + '\CANADA_HCR.txt')
plc = pd.read_csv(path + '\CANADA_POL.txt')

# Subset main file (CANADA.txt) with just xy
df_xy = full[['POI_ID','X' , 'Y']]

# Join the xy values to each file
air_xy = pd.merge(air, df_xy, on='POI_ID')
edu_xy = pd.merge(edu, df_xy, on='POI_ID')
hlt_xy = pd.merge(hlt, df_xy, on='POI_ID')
plc_xy = pd.merge(plc, df_xy, on='POI_ID')

# Output
out = r'D:\Work\Noise\dmti_dat2\2003\EPOI\MERGE'

air_xy.to_csv(out + '\AIR_XY.csv')
edu_xy.to_csv(out +'\EDU_XY.csv')
hlt_xy.to_csv(out +'\HLT_XY.csv')
plc_xy.to_csv(out +'\PLC_XY.csv')
>>>>>>> d837de0008bf795c96540364486ad7da935565ea

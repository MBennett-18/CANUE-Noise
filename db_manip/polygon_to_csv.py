import arcpy
from arcpy import env
import os

# Changing Polygon predictors into a csv
# NOTE that polygon predictors have TWO components, the shapefile and a Table
# The shapefile gives the amount of area overlapped (i.e 50 km^2 is within the 100m buffer) and the table provides percentages per category (i.e of the 50 km^2 -> 20% is residential, 50% is commercial, and 30% are parks)
# Tables are in excel format, no need for conversion
#############
# Indust (irr)
# Land_use (lur)
# Water (wtr)
############


inPath = "D:/Work/Noise/Pred_Output_arc/2017/LNG/"
arcpy.env.workspace = inPath
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2017/LNG/Traffic_Flow/"
# wildcard operator to find each file, devidfed by predictor type (see above list)
type = "LN_flow*"

# This is set up to be recursive, but not used as such. Borrowed from another code snippet
fcList = []
for dirname, dirnames, filenames in os.walk(inPath):
	for subdirname in dirnames:
		env.workspace = os.path.join(dirname, subdirname)
		fcList = arcpy.ListFeatureClasses(wild_card=type)
		for fc in fcList:
			outName = fc[:-4]
			arcpy.TableToTable_conversion (fc, outPath, outName + '.csv')

<<<<<<< HEAD
<<<<<<< HEAD
import arcpy
from arcpy import env
import os

# This will read in every shapefile for a city/year and convert it to a CSV for further joining and use
# Set the wildcard to be the prefix of whatever predictor is to be converted
# i.e. "BCaer*" will do all airports
# This is recursive, be sure to set the inPath to a year/city, with these outfolder names (file prefix in brackets):
#############
# Airports (aer)
# Cinemas (cin)
# Education (edu)
# Fire (fre)
# Health (hcr)
# HiRoads (hrd)
# Hiway (hwy)
# Police (pol)
# Rail (rll)
# Roads (rte)
# Trans (trs)
############


inPath = "D:/Work/Noise/Pred_Output_arc/2017/LNG/"
arcpy.env.workspace = inPath
outPath = "D:/Work/Noise/Predictors_CSV/2017/LNG/Trans/"
# wildcard operator to find each file, devidfed by predictor type (see above list)
type = "LN_TransportationStopsPoint*"

# RECURSIVE to look through every distance, because of previous file structure
fcList = []
for dirname, dirnames, filenames in os.walk(inPath):
	for subdirname in dirnames:
		env.workspace = os.path.join(dirname, subdirname)
		fcList = arcpy.ListFeatureClasses(wild_card=type)
		for fc in fcList:
			outName = fc[:-4]
			arcpy.TableToTable_conversion (fc, outPath, outName + '.csv')
=======
import arcpy
from arcpy import env
import os

# This will read in every shapefile for a city/year and convert it to a CSV for further joining and use
# Set the wildcard to be the prefix of whatever predictor is to be converted
# i.e. "BCaer*" will do all airports
# This is recursive, be sure to set the inPath to a year/city, with these outfolder names (file prefix in brackets):
#############
# Airports (aer)
# Cinemas (cin)
# Education (edu)
# Fire (fre)
# Health (hcr)
# HiRoads (hrd)
# Hiway (hwy)
# Police (pol)
# Rail (rll)
# Roads (rte)
# Trans (trs)
############


inPath = "D:/Work/Noise/Pred_Output_arc/2017/LNG/"
arcpy.env.workspace = inPath
outPath = "D:/Work/Noise/Predictors_CSV/2017/LNG/Trans/"
# wildcard operator to find each file, devidfed by predictor type (see above list)
type = "LN_TransportationStopsPoint*"

# RECURSIVE to look through every distance, because of previous file structure
fcList = []
for dirname, dirnames, filenames in os.walk(inPath):
	for subdirname in dirnames:
		env.workspace = os.path.join(dirname, subdirname)
		fcList = arcpy.ListFeatureClasses(wild_card=type)
		for fc in fcList:
			outName = fc[:-4]
			arcpy.TableToTable_conversion (fc, outPath, outName + '.csv')
>>>>>>> d837de0008bf795c96540364486ad7da935565ea
=======
import arcpy
from arcpy import env
import os

# This will read in every shapefile for a city/year and convert it to a CSV for further joining and use
# Set the wildcard to be the prefix of whatever predictor is to be converted
# i.e. "BCaer*" will do all airports
# This is recursive, be sure to set the inPath to a year/city, with these outfolder names (file prefix in brackets):
#############
# Airports (aer)
# Cinemas (cin)
# Education (edu)
# Fire (fre)
# Health (hcr)
# HiRoads (hrd)
# Hiway (hwy)
# Police (pol)
# Rail (rll)
# Roads (rte)
# Trans (trs)
############


inPath = "D:/Work/Noise/Pred_Output_arc/2017/LNG/"
arcpy.env.workspace = inPath
outPath = "D:/Work/Noise/Predictors_CSV/2017/LNG/Trans/"
# wildcard operator to find each file, devidfed by predictor type (see above list)
type = "LN_TransportationStopsPoint*"

# RECURSIVE to look through every distance, because of previous file structure
fcList = []
for dirname, dirnames, filenames in os.walk(inPath):
	for subdirname in dirnames:
		env.workspace = os.path.join(dirname, subdirname)
		fcList = arcpy.ListFeatureClasses(wild_card=type)
		for fc in fcList:
			outName = fc[:-4]
			arcpy.TableToTable_conversion (fc, outPath, outName + '.csv')
>>>>>>> d837de0008bf795c96540364486ad7da935565ea

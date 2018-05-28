<<<<<<< HEAD
# COnverting the provided ascii files from team into raster format (.tif) for analysis

# Import arcpy module
import arcpy

# Load required toolboxes
arcpy.ImportToolbox("Model Functions")


# Local variables:
unzip = "D:\\Work\\Noise\\dem\\001_Select\\TOR\\unzip"
File_txt = "D:\\Work\\Noise\\dem\\001_Select\\TOR\\unzip\\d30m030m14.txt"
v_NAME__tif = "D:\\Work\\Noise\\dem\\002_tif\\TOR\\%NAME%.tif"
Name = "d30m030m14"

# Process: Iterate Files
arcpy.IterateFiles_mb(unzip, "", "txt", "NOT_RECURSIVE")

# Process: ASCII to Raster
arcpy.ASCIIToRaster_conversion(File_txt, v_NAME__tif, "FLOAT")
=======
# COnverting the provided ascii files from team into raster format (.tif) for analysis

# Import arcpy module
import arcpy

# Load required toolboxes
arcpy.ImportToolbox("Model Functions")


# Local variables:
unzip = "D:\\Work\\Noise\\dem\\001_Select\\TOR\\unzip"
File_txt = "D:\\Work\\Noise\\dem\\001_Select\\TOR\\unzip\\d30m030m14.txt"
v_NAME__tif = "D:\\Work\\Noise\\dem\\002_tif\\TOR\\%NAME%.tif"
Name = "d30m030m14"

# Process: Iterate Files
arcpy.IterateFiles_mb(unzip, "", "txt", "NOT_RECURSIVE")

# Process: ASCII to Raster
arcpy.ASCIIToRaster_conversion(File_txt, v_NAME__tif, "FLOAT")
>>>>>>> d837de0008bf795c96540364486ad7da935565ea

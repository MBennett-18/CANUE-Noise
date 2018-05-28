<<<<<<< HEAD
<<<<<<< HEAD
# Projecting rasters into correct region based on Excel worksheet "Workflow"
# This is for vector data, not the raster

# Import arcpy module
import arcpy

# Load required toolboxes
arcpy.ImportToolbox("Model Functions")


# Local variables:
shp_conv = "D:\\Work\\Noise\\dmti_proj\\2016\\TOR\\shp_conv"
Name = "VegetationRegion102"
AboriginalBoundariesRegion_shp = "D:\\Work\\Noise\\dmti_proj\\2016\\TOR\\shp_conv\\VegetationRegion102.shp"
v_Name__proj_cm = "D:\\Work\\Noise\\dmti_proj\\2016\\TOR\\CanMap\\%Name%_proj_cm"

# Process: Iterate Feature Classes
arcpy.IterateFeatureClasses_mb(shp_conv, "", "", "NOT_RECURSIVE")

# Process: Project
arcpy.Project_management(AboriginalBoundariesRegion_shp, v_Name__proj_cm,
                         "PROJCS['NAD_1983_UTM_Zone_17N',
                         GEOGCS['GCS_North_American_1983',
                                DATUM['D_North_American_1983',
                                      SPHEROID['GRS_1980',6378137.0,298.257222101]],
                                      PRIMEM['Greenwich',0.0],
                                      UNIT['Degree',0.0174532925199433]],
                                      PROJECTION['Transverse_Mercator'],
                                      PARAMETER['False_Easting',500000.0],
                                      PARAMETER['False_Northing',0.0],
                                      PARAMETER['Central_Meridian',-81.0],
                                      PARAMETER['Scale_Factor',0.9996],
                                      PARAMETER['Latitude_Of_Origin',0.0],
                                      UNIT['Meter',1.0]]",
                                      "WGS_1984_(ITRF00)_To_NAD_1983",
                                      "GEOGCS['GCS_WGS_1984',
                                      DATUM['D_WGS_1984',
                                            SPHEROID['WGS_1984',6378137.0,298.257223563]],
                                            PRIMEM['Greenwich',0.0],
                                            UNIT['Degree',0.0174532925199433]]",
                                            "NO_PRESERVE_SHAPE", "", "NO_VERTICAL")
=======
# Projecting rasters into correct region based on Excel worksheet "Workflow"
# This is for vector data, not the raster

# Import arcpy module
import arcpy

# Load required toolboxes
arcpy.ImportToolbox("Model Functions")


# Local variables:
shp_conv = "D:\\Work\\Noise\\dmti_proj\\2016\\TOR\\shp_conv"
Name = "VegetationRegion102"
AboriginalBoundariesRegion_shp = "D:\\Work\\Noise\\dmti_proj\\2016\\TOR\\shp_conv\\VegetationRegion102.shp"
v_Name__proj_cm = "D:\\Work\\Noise\\dmti_proj\\2016\\TOR\\CanMap\\%Name%_proj_cm"

# Process: Iterate Feature Classes
arcpy.IterateFeatureClasses_mb(shp_conv, "", "", "NOT_RECURSIVE")

# Process: Project
arcpy.Project_management(AboriginalBoundariesRegion_shp, v_Name__proj_cm,
                         "PROJCS['NAD_1983_UTM_Zone_17N',
                         GEOGCS['GCS_North_American_1983',
                                DATUM['D_North_American_1983',
                                      SPHEROID['GRS_1980',6378137.0,298.257222101]],
                                      PRIMEM['Greenwich',0.0],
                                      UNIT['Degree',0.0174532925199433]],
                                      PROJECTION['Transverse_Mercator'],
                                      PARAMETER['False_Easting',500000.0],
                                      PARAMETER['False_Northing',0.0],
                                      PARAMETER['Central_Meridian',-81.0],
                                      PARAMETER['Scale_Factor',0.9996],
                                      PARAMETER['Latitude_Of_Origin',0.0],
                                      UNIT['Meter',1.0]]",
                                      "WGS_1984_(ITRF00)_To_NAD_1983",
                                      "GEOGCS['GCS_WGS_1984',
                                      DATUM['D_WGS_1984',
                                            SPHEROID['WGS_1984',6378137.0,298.257223563]],
                                            PRIMEM['Greenwich',0.0],
                                            UNIT['Degree',0.0174532925199433]]",
                                            "NO_PRESERVE_SHAPE", "", "NO_VERTICAL")
>>>>>>> d837de0008bf795c96540364486ad7da935565ea
=======
# Projecting rasters into correct region based on Excel worksheet "Workflow"
# This is for vector data, not the raster

# Import arcpy module
import arcpy

# Load required toolboxes
arcpy.ImportToolbox("Model Functions")


# Local variables:
shp_conv = "D:\\Work\\Noise\\dmti_proj\\2016\\TOR\\shp_conv"
Name = "VegetationRegion102"
AboriginalBoundariesRegion_shp = "D:\\Work\\Noise\\dmti_proj\\2016\\TOR\\shp_conv\\VegetationRegion102.shp"
v_Name__proj_cm = "D:\\Work\\Noise\\dmti_proj\\2016\\TOR\\CanMap\\%Name%_proj_cm"

# Process: Iterate Feature Classes
arcpy.IterateFeatureClasses_mb(shp_conv, "", "", "NOT_RECURSIVE")

# Process: Project
arcpy.Project_management(AboriginalBoundariesRegion_shp, v_Name__proj_cm,
                         "PROJCS['NAD_1983_UTM_Zone_17N',
                         GEOGCS['GCS_North_American_1983',
                                DATUM['D_North_American_1983',
                                      SPHEROID['GRS_1980',6378137.0,298.257222101]],
                                      PRIMEM['Greenwich',0.0],
                                      UNIT['Degree',0.0174532925199433]],
                                      PROJECTION['Transverse_Mercator'],
                                      PARAMETER['False_Easting',500000.0],
                                      PARAMETER['False_Northing',0.0],
                                      PARAMETER['Central_Meridian',-81.0],
                                      PARAMETER['Scale_Factor',0.9996],
                                      PARAMETER['Latitude_Of_Origin',0.0],
                                      UNIT['Meter',1.0]]",
                                      "WGS_1984_(ITRF00)_To_NAD_1983",
                                      "GEOGCS['GCS_WGS_1984',
                                      DATUM['D_WGS_1984',
                                            SPHEROID['WGS_1984',6378137.0,298.257223563]],
                                            PRIMEM['Greenwich',0.0],
                                            UNIT['Degree',0.0174532925199433]]",
                                            "NO_PRESERVE_SHAPE", "", "NO_VERTICAL")
>>>>>>> d837de0008bf795c96540364486ad7da935565ea

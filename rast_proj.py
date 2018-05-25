-------------------------------------------------------------------------
# Import arcpy module
import arcpy

# Load required toolboxes
arcpy.ImportToolbox("Model Functions")


# Local variables:
HRM = "D:\\Work\\Noise\\dem\\002_tif\\HRM"
d30m011d11_tif = "D:\\Work\\Noise\\dem\\002_tif\\HRM\\d30m011d14.tif"
v_Name_ = "D:\\Work\\Noise\\dem\\003_project\\HRM\\%Name%"
Name = "d30m011d14.tif"

# Process: Iterate Rasters
arcpy.IterateRasters_mb(HRM, "", "TIF", "NOT_RECURSIVE")

# Process: Project Raster
arcpy.ProjectRaster_management(d30m011d11_tif, v_Name_, "PROJCS['NAD_1983_UTM_Zone_20N',GEOGCS['GCS_North_American_1983',DATUM['D_North_American_1983',SPHEROID['GRS_1980',6378137.0,298.257222101]],PRIMEM['Greenwich',0.0],UNIT['Degree',0.0174532925199433]],PROJECTION['Transverse_Mercator'],PARAMETER['False_Easting',500000.0],PARAMETER['False_Northing',0.0],PARAMETER['Central_Meridian',-63.0],PARAMETER['Scale_Factor',0.9996],PARAMETER['Latitude_Of_Origin',0.0],UNIT['Meter',1.0]]", "NEAREST", d30m011d11_tif, "", "", "")


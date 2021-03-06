# -*- coding: utf-8 -*-
# ---------------------------------------------------------------------------
# slope_zonal.py
# Created on: 2018-05-29 08:37:19.00000
#   (generated by ArcGIS/ModelBuilder)
# Description: 
# ---------------------------------------------------------------------------

# Import arcpy module
import arcpy


# Local variables:
van03_50_shp = "D:\\Work\\Noise\\Pred_Output_arc\\2003\\VAN\\50_van03\\van03_50.shp"
VAN_dem_slope_tif = "D:\\Work\\Noise\\dem\\005_slope\\VAN_dem_slope.tif"
van2003_slope50 = "D:\\Work\\Noise\\Pred_Output_arc\\2003\\VAN\\Raster_slope\\van2003_slope50"

# Process: Zonal Statistics as Table
arcpy.gp.ZonalStatisticsAsTable_sa(van03_50_shp, "PCA_ID", VAN_dem_slope_tif, van2003_slope50, "DATA", "ALL")


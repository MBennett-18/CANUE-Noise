# Replace a layer\\table view name with a path to a dataset (which can be a layer file) or create the layer\\table view within the script
# The following inputs are layers or table views: "NSrte_proj_strt_bnd", "NShrd_proj_strt_bnd"


import arcpy
# To select ONLY the roads within a the roads file (not highways or Major roads)
roads_shp = "D:\\Work\\Noise\\DMTI\\005_dmti_bounds\\2010\\HRM\\Roads_sep\\NSrte_proj_strt_bnd.shp"
mjr_shp = "D:\\Work\\Noise\\DMTI\\005_dmti_bounds\\2010\\HRM\\Roads_sep\\NShrd_proj_strt_bnd.shp"

roads_only = arcpy.SelectLayerByLocation_management(in_layer=roads_shp,
                                        overlap_type="ARE_IDENTICAL_TO",
                                        select_features=mjr_shp,
                                        search_distance="",
                                        selection_type="NEW_SELECTION",
                                        invert_spatial_relationship="INVERT")

FeatureClassToFeatureClass_conversion (roads_only,
                                        "D:\\Work\\Noise\\DMTI\\005_dmti_bounds\\2010\\HRM\\Roads_sep\\",
                                        NSroads_2010)

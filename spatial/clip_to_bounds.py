<<<<<<< HEAD
<<<<<<< HEAD
# Clip all layers to the specified bounds of each study site. This would be down for as many study sites



# Import arcpy module
import arcpy

# Load required toolboxes
arcpy.ImportToolbox("Model Functions")


# Local variables:
MTL = "D:\\Work\\Noise\\004_dmti_voi\\2014\\MTL"
Name = "QCmnwtr_proj_wat"
FeatureClass = "D:\\Work\\Noise\\004_dmti_voi\\2014\\MTL\\Water\\QCmnwtr_proj_wat.shp"
MON_bound_buff_shp = "D:\\Work\\Noise\\boundaries\\Study Site Boundary Files\\MTL\\MON_bound_buff.shp"
v_NAME__bnd_shp = "D:\\Work\\Noise\\005_dmti_bounds\\2014\\MTL\\%Name%_bnd.shp"

# Process: Iterate Feature Classes
arcpy.IterateFeatureClasses_mb(MTL, "", "", "RECURSIVE")

# Process: Clip
arcpy.Clip_analysis(FeatureClass, MON_bound_buff_shp, v_NAME__bnd_shp, "")
=======
# Clip all layers to the specified bounds of each study site. This would be down for as many study sites



# Import arcpy module
import arcpy

# Load required toolboxes
arcpy.ImportToolbox("Model Functions")


# Local variables:
MTL = "D:\\Work\\Noise\\004_dmti_voi\\2014\\MTL"
Name = "QCmnwtr_proj_wat"
FeatureClass = "D:\\Work\\Noise\\004_dmti_voi\\2014\\MTL\\Water\\QCmnwtr_proj_wat.shp"
MON_bound_buff_shp = "D:\\Work\\Noise\\boundaries\\Study Site Boundary Files\\MTL\\MON_bound_buff.shp"
v_NAME__bnd_shp = "D:\\Work\\Noise\\005_dmti_bounds\\2014\\MTL\\%Name%_bnd.shp"

# Process: Iterate Feature Classes
arcpy.IterateFeatureClasses_mb(MTL, "", "", "RECURSIVE")

# Process: Clip
arcpy.Clip_analysis(FeatureClass, MON_bound_buff_shp, v_NAME__bnd_shp, "")
>>>>>>> d837de0008bf795c96540364486ad7da935565ea
=======
# Clip all layers to the specified bounds of each study site. This would be down for as many study sites



# Import arcpy module
import arcpy

# Load required toolboxes
arcpy.ImportToolbox("Model Functions")


# Local variables:
MTL = "D:\\Work\\Noise\\004_dmti_voi\\2014\\MTL"
Name = "QCmnwtr_proj_wat"
FeatureClass = "D:\\Work\\Noise\\004_dmti_voi\\2014\\MTL\\Water\\QCmnwtr_proj_wat.shp"
MON_bound_buff_shp = "D:\\Work\\Noise\\boundaries\\Study Site Boundary Files\\MTL\\MON_bound_buff.shp"
v_NAME__bnd_shp = "D:\\Work\\Noise\\005_dmti_bounds\\2014\\MTL\\%Name%_bnd.shp"

# Process: Iterate Feature Classes
arcpy.IterateFeatureClasses_mb(MTL, "", "", "RECURSIVE")

# Process: Clip
arcpy.Clip_analysis(FeatureClass, MON_bound_buff_shp, v_NAME__bnd_shp, "")
>>>>>>> d837de0008bf795c96540364486ad7da935565ea

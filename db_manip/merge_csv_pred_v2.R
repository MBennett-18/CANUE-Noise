# This will combine all the predictors that were stored as vector data from the shapefiles. All are combined in on large dataset for city and year
# The code is rerun for each city/year combination to avoi dpotential crossover of variables
# Final number of variables for each dataset should be 401

library(stringr)
#########################################
# VANCOUVER 2003 Vector_dat
#########################################

inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Vector_dat"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Merged/"
outName = "van2003_vector.csv"

# Working Directory
setwd(inPath)

filenames <- list.files(pattern="*.csv", recursive = TRUE)

all_files <- lapply(filenames, function(x) {
  file <- read.csv(x)
  # Get the start of filename prefix
  prefix1 = sub("_.*", "", x)
  prefix = sub("/.*", "", prefix1)
  # Get the suffix number
  suffix1 = sub(".*_", "", x)
  suffix = str_extract(suffix1, '^[^.]+')
  colnames(file) <- paste(colnames(file), prefix, suffix, sep='_')
  colnames(file) <- sub("PCA_ID.*", "PCA_ID", colnames(file))
  return(file)
})

# Function to join all data in list,
# Agruments (list of data, join function type, ... = specify by = "colname")
multi_join <- function(list.data, join_func, ...){
    require("dplyr")
    output <- Reduce(function(x, y) {join_func(x, y, ...)}, list.data)
    return(output)
}

# Run the previuosly defined function to join all within list
merged_data <- multi_join(all_files, full_join, by = "PCA_ID")
# List of variables to keep, note distance is kept to ensure proper colname l;abel
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Point_Coun",
          "SUM_count",
          "SUM_Length",
          "SUM_leng_1")
# Only keep vars that are contained within the voi list
merged_drop <- merged_data[, grep(paste(voi,collapse="|"),colnames(merged_data))]
# Export full db to csv
write.csv(merged_drop, file.path(outPath, outName))

#########################################
# HALIFAX 2010 Vector_dat
#########################################
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/HRM/Vector_dat"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/HRM/Merged/"
outName = "hrm2010_vector.csv"
#########################################
# MONTREAL 2010 Vector_dat
#########################################
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/MTL/Vector_dat"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/MTL/Merged/"
outName = "mtl2010_vector.csv"
#########################################
# MONTREAL 2014 Vector_dat
#########################################
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2014/MTL/Vector_dat"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2014/MTL/Merged/"
outName = "mtl2014_vector.csv"
#########################################
# TORONTO 2016 Vector_dat
#########################################
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2016/TOR/Vector_dat"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2016/TOR/Merged/"
outName = "tor2016_vector.csv"
#########################################
# LONGUEUIL 2017 Vector_dat
#########################################
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2017/LNG/Vector_dat"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2017/LNG/Merged/"
outName = "lng2017_vector.csv"

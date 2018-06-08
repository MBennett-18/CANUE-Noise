




library(stringr)
library(readxl)
#########################################
# VANCOUVER 2003 Vector_dat
#########################################

# Set paths, specifiy WHAT polygon predictor (Indust, land use or water)
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Polygon_dat/land_use"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Merged/"
outName = "van2003_polygon.csv"
# Specifiy what files are being used, this is added manually within lapply
type = "lur"

# Working Directory
setwd(inPath)


# Bring in CSV that were once shapefiles
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
  colnames(file) <- paste(colnames(file), type, sep='_')
  colnames(file) <- sub("PCA_ID.*", "PCA_ID", colnames(file))
  return(file)
})


# Bring in tables for Joining that were once shapefiles
tables <- list.files(pattern="*.xls", recursive = TRUE)

all_tables <- lapply(tables, function(x) {
  file <- read_xls(x)
  # Get the start of filename prefix
  prefix1 = sub("_.*", "", x)
  prefix = sub("/.*", "", prefix1)
  # Get the suffix number
  suffix1 = sub(".*_", "", x)
  suffix = str_extract(suffix1, '^[^.]+')
  colnames(file) <- paste(colnames(file), prefix, suffix, sep='_')
  colnames(file) <- paste(colnames(file),type, sep='_')
  colnames(file) <- sub("PCA_ID.*", "PCA_ID", colnames(file))
  return(file)
})












#
#
# # Function to join all data in list,
# # Agruments (list of data, join function type, ... = specify by = "colname")
# multi_join <- function(list.data, join_func, ...){
#     require("dplyr")
#     output <- Reduce(function(x, y) {join_func(x, y, ...)}, list.data)
#     return(output)
# }
#
# # Run the previuosly defined function to join all within list
# merged_data <- multi_join(all_files, full_join, by = "PCA_ID")
# # List of variables to keep, note distance is kept to ensure proper colname l;abel
# voi <- c("PCA_ID",
#           "POSTALCODE",
#           "distance",
#           "Point_Coun",
#           "SUM_Area",
#           "SUM_area",
#           "Join_ID")
#
#
# merged_drop <- merged_data[, grep(paste(voi,collapse="|"),colnames(merged_data))]

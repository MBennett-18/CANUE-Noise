# This will combine all the predictors that were stored as vector data from the shapefiles. All are combined in on large dataset for city and year
# The code is rerun for each city/year combination to avoid potential crossover of variables


# These are the vector data:
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
# roads_only (rte_only)
# Mjr_only (hrd_only)


# THEN SCRIPT HAS THE GTFS ROUTES AND STOPS FOR EACH CITY/YEAR

# THEN SCRIPT HAS THE TRAFFIC FLOW DATA



library(stringr)
#########################################
# VANCOUVER 2003 Vector_dat
#########################################

inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Vector_dat"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Merged/"
outName = "van2003_vector.csv"

# Working Directory
setwd(inPath)
# List all files that are csv inside folder
filenames <- list.files(pattern="*.csv", recursive = TRUE)
# Add all files into a list, and add information about where they came from in variable name
all_files <- lapply(filenames, function(x) {
  file <- read.csv(x)
  # Get the start of filename prefix
  prefix1 = sub("_.*", "", x)
  prefix = sub("/.*", "", prefix1)
  # Get the suffix number
  suffix1 = sub(".*_", "", x)
  suffix = str_extract(suffix1, '^[^.]+')
  colnames(file) <- paste(colnames(file), prefix, suffix, sep='_')
  # Only want PCA_ID to be there once for merging purposes
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
# SUM COUNT IS SOMETIMES REPEATED AS A COLUMN, SAME INFO IN BOTH
#########################################
rm(list=ls())
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/HRM/Vector_dat"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/HRM/Merged/"
outName = "hrm2010_vector.csv"


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
# MONTREAL 2010 Vector_dat
#########################################
rm(list=ls())
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/MTL/Vector_dat"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/MTL/Merged/"
outName = "mtl2010_vector.csv"

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
# MONTREAL 2014 Vector_dat
#########################################
rm(list=ls())

inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2014/MTL/Vector_dat"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2014/MTL/Merged/"
outName = "mtl2014_vector.csv"


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
# TORONTO 2016 Vector_dat
#HAS transportation files
#########################################
rm(list=ls())

inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2016/TOR/Vector_dat"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2016/TOR/Merged/"
outName = "tor2016_vector.csv"



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
# LONGUEUIL 2017 Vector_dat
# NO POSTALCODE IN THIS DATA
#########################################


rm(list=ls())
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2017/LNG/Vector_dat"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2017/LNG/Merged/"
outName = "lng2017_vector.csv"


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

rm(list=ls())


van <- read.csv("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Merged/van2003_vector.csv")
hrm <- read.csv("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/HRM/Merged/hrm2010_vector.csv")
mtl10 <- read.csv("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/MTL/Merged/mtl2010_vector.csv")
mtl14 <- read.csv("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2014/MTL/Merged/mtl2014_vector.csv")
tor <- read.csv("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2016/TOR/Merged/tor2016_vector.csv")
lng <- read.csv("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2017/LNG/Merged/lng2017_vector.csv")


##################################################################################
##################################################################################
##################################################################################
################### GTFS MERGING -- GTFS MERGING -- GTFS MERGING #################
################### GTFS MERGING -- GTFS MERGING -- GTFS MERGING #################
################### GTFS MERGING -- GTFS MERGING -- GTFS MERGING #################
##################################################################################
##################################################################################
##################################################################################



#########################################
# VANCOUVER 2003 GTFS ROUTES/STOPS
#########################################

inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/GTFS_dat"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Merged/"
outName = "van2003_gtfs.csv"

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
# HALIFAX 2010 GTFS ROUTES/STOPS
#########################################

inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/HRM/GTFS_dat"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/HRM/Merged/"
outName = "hrm2010_gtfs.csv"

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
# TORONTO 2016 GTFS ROUTES/STOPS
#########################################
rm(list=ls())

inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2016/TOR/GTFS_dat"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2016/TOR/Merged/"
outName = "tor2016_gtfs.csv"


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
# LNG 2017 GTFS ROUTES/STOPS
#########################################
rm(list=ls())

inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2017/LNG/GTFS_dat"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2017/LNG/Merged/"
outName = "lng2017_gtfs.csv"


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





##################################################################################
##################################################################################
##################################################################################
####### TRAFFLIC FLOW MERGE -- TRAFFLIC FLOW MERGE -- TRAFFLIC FLOW MERGE ########
####### TRAFFLIC FLOW MERGE -- TRAFFLIC FLOW MERGE -- TRAFFLIC FLOW MERGE ########
####### TRAFFLIC FLOW MERGE -- TRAFFLIC FLOW MERGE -- TRAFFLIC FLOW MERGE ########
##################################################################################
##################################################################################
##################################################################################



#########################################
# TORONTO 2016 GTFS ROUTES/STOPS
#########################################
rm(list=ls())
library(stringr)

inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2016/TOR/Traffic_Flow"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2016/TOR/Merged/"
outName = "tor2016_flow.csv"


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
          "SUM_leng_1")
# Only keep vars that are contained within the voi list
merged_drop <- merged_data[, grep(paste(voi,collapse="|"),colnames(merged_data))]
# Export full db to csv
write.csv(merged_drop, file.path(outPath, outName))

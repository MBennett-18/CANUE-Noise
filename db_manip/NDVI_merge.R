
# This is for NDVI merging into one large file. Done for all cities
# For each ear there is a NDVI min (mn) and max (mx) files, this is denoted in the column names of the files

# StatType_FileType_Distance

# XXXX_mn_100
# XXXX_mx_100

# Halifax has NDVI for two years so ran twice




library(stringr)
#########################################
# VANCOUVER 2003 NDVI
#########################################
rm(list=ls())

inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Raster_dat/NDVI"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Merged/"
outName = "van2003_NDVI.csv"

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
# This column isn't required
voi <- c("OID")

merged_drop <- merged_data[, -grep(voi,colnames(merged_data))]
write.csv(merged_drop, file.path(outPath, outName))



#########################################
# HALIFAX 2010 NDVI 2010
#########################################

rm(list=ls())
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/HRM/Raster_dat/NDVI/2010"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/HRM/Merged/"
outName = "hrm2010_NDVI10.csv"

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
# This column isn't required
voi <- c("OID")

merged_drop <- merged_data[, -grep(voi,colnames(merged_data))]
write.csv(merged_drop, file.path(outPath, outName))

#########################################
# HALIFAX 2010 NDVI 2011
#########################################

rm(list=ls())
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/HRM/Raster_dat/NDVI/2011"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/HRM/Merged/"
outName = "hrm2010_NDVI11.csv"

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
# This column isn't required
voi <- c("OID")

merged_drop <- merged_data[, -grep(voi,colnames(merged_data))]
write.csv(merged_drop, file.path(outPath, outName))



#########################################
# MONTREAL 2010 NDVI
#########################################

rm(list=ls())
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/MTL/Raster_dat/NDVI"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/MTL/Merged/"
outName = "mtl2010_NDVI.csv"

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
# This column isn't required
voi <- c("OID")

merged_drop <- merged_data[, -grep(voi,colnames(merged_data))]
write.csv(merged_drop, file.path(outPath, outName))

#########################################
# MONTREAL 2014 NDVI
#########################################

rm(list=ls())
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2014/MTL/Raster_dat/NDVI"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2014/MTL/Merged/"
outName = "mtl2014_NDVI.csv"

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
# This column isn't required
voi <- c("OID")

merged_drop <- merged_data[, -grep(voi,colnames(merged_data))]
write.csv(merged_drop, file.path(outPath, outName))

#########################################
# TORONTO 2016 NDVI
#########################################

rm(list=ls())
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2016/TOR/Raster_dat/NDVI"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2016/TOR/Merged/"
outName = "tor2016_NDVI.csv"

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
# This column isn't required
voi <- c("OID")

merged_drop <- merged_data[, -grep(voi,colnames(merged_data))]
write.csv(merged_drop, file.path(outPath, outName))

#########################################
# LONG 2017 NDVI
#########################################

rm(list=ls())
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2017/LNG/Raster_dat/NDVI"
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2017/LNG/Merged/"
outName = "lng2017_NDVI.csv"


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
# This column isn't required
voi <- c("OID")

merged_drop <- merged_data[, -grep(voi,colnames(merged_data))]
write.csv(merged_drop, file.path(outPath, outName))

van <- read.csv("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Merged/van2003_NDVI.csv")
hrm10 <- read.csv("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/HRM/Merged/hrm2010_NDVI10.csv")
hrm11 <- read.csv("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/HRM/Merged/hrm2010_NDVI11.csv")
mtl10 <- read.csv("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/MTL/Merged/mtl2010_NDVI.csv")
mtl14 <- read.csv("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2014/MTL/Merged/mtl2014_NDVI.csv")
tor <- read.csv("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2016/TOR/Merged/tor2016_NDVI.csv")
lng <- read.csv("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2017/LNG/Merged/lng2017_NDVI.csv")

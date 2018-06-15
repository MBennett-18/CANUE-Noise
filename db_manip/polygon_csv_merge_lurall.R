


library(tidyverse)
library(stringr)
library(readxl)
library(reshape2)
#########################################
#########################################
#########################################
# VANCOUVER 2003 LANDUSE
#########################################
#########################################
#########################################
# Set paths, specifiy WHAT polygon predictor THIS IS LAND USE
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Polygon_dat/land_use"
# Working Directory
setwd(inPath)
################################################
############ 50 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*050.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_50 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_50[is.na(full_50)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_50 <- full_50[, grep(paste(voi,collapse="|"),colnames(full_50))]
colnames(full_50)[2:12] <- paste(colnames(full_50)[2:12], "050", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 100 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*100.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_100 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_100[is.na(full_100)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_100 <- full_100[, grep(paste(voi,collapse="|"),colnames(full_100))]
colnames(full_100)[2:12] <- paste(colnames(full_100)[2:12], "100", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 150 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*150.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_150 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_150[is.na(full_150)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_150 <- full_150[, grep(paste(voi,collapse="|"),colnames(full_150))]
colnames(full_150)[2:12] <- paste(colnames(full_150)[2:12], "150", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 200 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*200.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_200 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_200[is.na(full_200)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_200 <- full_200[, grep(paste(voi,collapse="|"),colnames(full_200))]
colnames(full_200)[2:12] <- paste(colnames(full_200)[2:12], "200", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 250 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*250.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_250 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_250[is.na(full_250)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_250 <- full_250[, grep(paste(voi,collapse="|"),colnames(full_250))]
colnames(full_250)[2:12] <- paste(colnames(full_250)[2:12], "250", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 300 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*300.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_300 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_300[is.na(full_300)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_300 <- full_300[, grep(paste(voi,collapse="|"),colnames(full_300))]
colnames(full_300)[2:12] <- paste(colnames(full_300)[2:12], "300", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 400 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*400.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_400 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_400[is.na(full_400)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_400 <- full_400[, grep(paste(voi,collapse="|"),colnames(full_400))]
colnames(full_400)[2:12] <- paste(colnames(full_400)[2:12], "400", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 500 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*500.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_500 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_500[is.na(full_500)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_500 <- full_500[, grep(paste(voi,collapse="|"),colnames(full_500))]
colnames(full_500)[2:12] <- paste(colnames(full_500)[2:12], "500", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 750 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*750.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_750 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_750[is.na(full_750)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_750 <- full_750[, grep(paste(voi,collapse="|"),colnames(full_750))]
colnames(full_750)[2:12] <- paste(colnames(full_750)[2:12], "750", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 1000 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*1000.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_1000 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_1000[is.na(full_1000)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_1000 <- full_1000[, grep(paste(voi,collapse="|"),colnames(full_1000))]
colnames(full_1000)[2:12] <- paste(colnames(full_1000)[2:12], "1000", sep='_')
rm(df1,df2,cast_df2,voi,list,inPath)

# all df into list
l.df <- lapply(ls(), function(x) if (class(get(x)) == "data.frame") get(x))


# Function to merge all items
multi_join <- function(list.data, join_func, ...){
    require("dplyr")
    output <- Reduce(function(x, y) {join_func(x, y, ...)}, list.data)
    return(output)
}
# Run the previuosly defined function to join all within list
merged_landuse <- multi_join(l.df, full_join, by = "PCA_ID")
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Merged/"
outName = "van2003_lur_polygon.csv"

write_csv(merged_landuse,paste0(outPath,outName))

rm(list=ls())


#########################################
#########################################
#########################################
# HALIFAX 2010 LAND USE
#########################################
#########################################
#########################################
# Set paths, specifiy WHAT polygon predictor THIS IS LAND USE
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/HRM/Polygon_dat/Land_use"
# Working Directory
setwd(inPath)
################################################
############ 50 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*050.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_50 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_50[is.na(full_50)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_50 <- full_50[, grep(paste(voi,collapse="|"),colnames(full_50))]
colnames(full_50)[2:12] <- paste(colnames(full_50)[2:12], "050", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 100 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*100.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_100 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_100[is.na(full_100)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_100 <- full_100[, grep(paste(voi,collapse="|"),colnames(full_100))]
colnames(full_100)[2:12] <- paste(colnames(full_100)[2:12], "100", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 150 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*150.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_150 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_150[is.na(full_150)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_150 <- full_150[, grep(paste(voi,collapse="|"),colnames(full_150))]
colnames(full_150)[2:12] <- paste(colnames(full_150)[2:12], "150", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 200 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*200.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_200 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_200[is.na(full_200)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_200 <- full_200[, grep(paste(voi,collapse="|"),colnames(full_200))]
colnames(full_200)[2:12] <- paste(colnames(full_200)[2:12], "200", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 250 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*250.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_250 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_250[is.na(full_250)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_250 <- full_250[, grep(paste(voi,collapse="|"),colnames(full_250))]
colnames(full_250)[2:12] <- paste(colnames(full_250)[2:12], "250", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 300 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*300.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_300 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_300[is.na(full_300)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_300 <- full_300[, grep(paste(voi,collapse="|"),colnames(full_300))]
colnames(full_300)[2:12] <- paste(colnames(full_300)[2:12], "300", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 400 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*400.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_400 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_400[is.na(full_400)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_400 <- full_400[, grep(paste(voi,collapse="|"),colnames(full_400))]
colnames(full_400)[2:12] <- paste(colnames(full_400)[2:12], "400", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 500 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*500.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_500 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_500[is.na(full_500)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_500 <- full_500[, grep(paste(voi,collapse="|"),colnames(full_500))]
colnames(full_500)[2:12] <- paste(colnames(full_500)[2:12], "500", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 750 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*750.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_750 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_750[is.na(full_750)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_750 <- full_750[, grep(paste(voi,collapse="|"),colnames(full_750))]
colnames(full_750)[2:12] <- paste(colnames(full_750)[2:12], "750", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 1000 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*1000.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_1000 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_1000[is.na(full_1000)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_1000 <- full_1000[, grep(paste(voi,collapse="|"),colnames(full_1000))]
colnames(full_1000)[2:12] <- paste(colnames(full_1000)[2:12], "1000", sep='_')
rm(df1,df2,cast_df2,voi,list,inPath)

# all df into list
l.df <- lapply(ls(), function(x) if (class(get(x)) == "data.frame") get(x))


# Function to merge all items
multi_join <- function(list.data, join_func, ...){
    require("dplyr")
    output <- Reduce(function(x, y) {join_func(x, y, ...)}, list.data)
    return(output)
}
# Run the previuosly defined function to join all within list
merged_landuse <- multi_join(l.df, full_join, by = "PCA_ID")
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/HRM/Merged/"
outName = "hrm2010_lur_polygon.csv"

write_csv(merged_landuse,paste0(outPath,outName))

rm(list=ls())


#########################################
#########################################
#########################################
# MONTREAL 2010 LAND USE
#########################################
#########################################
#########################################
# Set paths, specifiy WHAT polygon predictor THIS IS LAND USE
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/MTL/Polygon_dat/Land_use"
# Working Directory
setwd(inPath)
################################################
############ 50 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*050.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_50 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_50[is.na(full_50)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_50 <- full_50[, grep(paste(voi,collapse="|"),colnames(full_50))]
colnames(full_50)[2:12] <- paste(colnames(full_50)[2:12], "050", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 100 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*100.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_100 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_100[is.na(full_100)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_100 <- full_100[, grep(paste(voi,collapse="|"),colnames(full_100))]
colnames(full_100)[2:12] <- paste(colnames(full_100)[2:12], "100", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 150 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*150.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_150 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_150[is.na(full_150)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_150 <- full_150[, grep(paste(voi,collapse="|"),colnames(full_150))]
colnames(full_150)[2:12] <- paste(colnames(full_150)[2:12], "150", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 200 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*200.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_200 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_200[is.na(full_200)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_200 <- full_200[, grep(paste(voi,collapse="|"),colnames(full_200))]
colnames(full_200)[2:12] <- paste(colnames(full_200)[2:12], "200", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 250 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*250.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_250 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_250[is.na(full_250)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_250 <- full_250[, grep(paste(voi,collapse="|"),colnames(full_250))]
colnames(full_250)[2:12] <- paste(colnames(full_250)[2:12], "250", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 300 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*300.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_300 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_300[is.na(full_300)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_300 <- full_300[, grep(paste(voi,collapse="|"),colnames(full_300))]
colnames(full_300)[2:12] <- paste(colnames(full_300)[2:12], "300", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 400 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*400.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_400 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_400[is.na(full_400)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_400 <- full_400[, grep(paste(voi,collapse="|"),colnames(full_400))]
colnames(full_400)[2:12] <- paste(colnames(full_400)[2:12], "400", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 500 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*500.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_500 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_500[is.na(full_500)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_500 <- full_500[, grep(paste(voi,collapse="|"),colnames(full_500))]
colnames(full_500)[2:12] <- paste(colnames(full_500)[2:12], "500", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 750 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*750.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_750 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_750[is.na(full_750)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_750 <- full_750[, grep(paste(voi,collapse="|"),colnames(full_750))]
colnames(full_750)[2:12] <- paste(colnames(full_750)[2:12], "750", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 1000 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*1000.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_1000 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_1000[is.na(full_1000)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_1000 <- full_1000[, grep(paste(voi,collapse="|"),colnames(full_1000))]
colnames(full_1000)[2:12] <- paste(colnames(full_1000)[2:12], "1000", sep='_')
rm(df1,df2,cast_df2,voi,list,inPath)

# all df into list
l.df <- lapply(ls(), function(x) if (class(get(x)) == "data.frame") get(x))


# Function to merge all items
multi_join <- function(list.data, join_func, ...){
    require("dplyr")
    output <- Reduce(function(x, y) {join_func(x, y, ...)}, list.data)
    return(output)
}
# Run the previuosly defined function to join all within list
merged_landuse <- multi_join(l.df, full_join, by = "PCA_ID")
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2010/MTL/Merged/"
outName = "mtl2010_lur_polygon.csv"

write_csv(merged_landuse,paste0(outPath,outName))

rm(list=ls())



#########################################
#########################################
#########################################
# MONTREAL 2014 LAND USE
#########################################
#########################################
#########################################
# Set paths, specifiy WHAT polygon predictor THIS IS LAND USE
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2014/MTL/Polygon_dat/Land_use"
# Working Directory
setwd(inPath)
################################################
############ 50 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*050.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_50 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_50[is.na(full_50)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_50 <- full_50[, grep(paste(voi,collapse="|"),colnames(full_50))]
colnames(full_50)[2:12] <- paste(colnames(full_50)[2:12], "050", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 100 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*100.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_100 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_100[is.na(full_100)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_100 <- full_100[, grep(paste(voi,collapse="|"),colnames(full_100))]
colnames(full_100)[2:12] <- paste(colnames(full_100)[2:12], "100", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 150 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*150.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_150 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_150[is.na(full_150)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_150 <- full_150[, grep(paste(voi,collapse="|"),colnames(full_150))]
colnames(full_150)[2:12] <- paste(colnames(full_150)[2:12], "150", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 200 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*200.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_200 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_200[is.na(full_200)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_200 <- full_200[, grep(paste(voi,collapse="|"),colnames(full_200))]
colnames(full_200)[2:12] <- paste(colnames(full_200)[2:12], "200", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 250 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*250.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_250 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_250[is.na(full_250)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_250 <- full_250[, grep(paste(voi,collapse="|"),colnames(full_250))]
colnames(full_250)[2:12] <- paste(colnames(full_250)[2:12], "250", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 300 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*300.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_300 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_300[is.na(full_300)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_300 <- full_300[, grep(paste(voi,collapse="|"),colnames(full_300))]
colnames(full_300)[2:12] <- paste(colnames(full_300)[2:12], "300", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 400 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*400.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_400 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_400[is.na(full_400)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_400 <- full_400[, grep(paste(voi,collapse="|"),colnames(full_400))]
colnames(full_400)[2:12] <- paste(colnames(full_400)[2:12], "400", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 500 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*500.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_500 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_500[is.na(full_500)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_500 <- full_500[, grep(paste(voi,collapse="|"),colnames(full_500))]
colnames(full_500)[2:12] <- paste(colnames(full_500)[2:12], "500", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 750 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*750.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_750 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_750[is.na(full_750)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_750 <- full_750[, grep(paste(voi,collapse="|"),colnames(full_750))]
colnames(full_750)[2:12] <- paste(colnames(full_750)[2:12], "750", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 1000 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*1000.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_1000 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_1000[is.na(full_1000)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_1000 <- full_1000[, grep(paste(voi,collapse="|"),colnames(full_1000))]
colnames(full_1000)[2:12] <- paste(colnames(full_1000)[2:12], "1000", sep='_')
rm(df1,df2,cast_df2,voi,list,inPath)

# all df into list
l.df <- lapply(ls(), function(x) if (class(get(x)) == "data.frame") get(x))


# Function to merge all items
multi_join <- function(list.data, join_func, ...){
    require("dplyr")
    output <- Reduce(function(x, y) {join_func(x, y, ...)}, list.data)
    return(output)
}
# Run the previuosly defined function to join all within list
merged_landuse <- multi_join(l.df, full_join, by = "PCA_ID")
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2014/MTL/Merged/"
outName = "mtl2014_lur_polygon.csv"

write_csv(merged_landuse,paste0(outPath,outName))

rm(list=ls())

#########################################
#########################################
#########################################
# TORONTO 2016 LAND USE
#########################################
#########################################
#########################################
# Set paths, specifiy WHAT polygon predictor THIS IS LAND USE
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2016/TOR/Polygon_dat/Land_use"
# Working Directory
setwd(inPath)
################################################
############ 50 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*050.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_50 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_50[is.na(full_50)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_50 <- full_50[, grep(paste(voi,collapse="|"),colnames(full_50))]
colnames(full_50)[2:12] <- paste(colnames(full_50)[2:12], "050", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 100 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*100.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_100 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_100[is.na(full_100)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_100 <- full_100[, grep(paste(voi,collapse="|"),colnames(full_100))]
colnames(full_100)[2:12] <- paste(colnames(full_100)[2:12], "100", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 150 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*150.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_150 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_150[is.na(full_150)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_150 <- full_150[, grep(paste(voi,collapse="|"),colnames(full_150))]
colnames(full_150)[2:12] <- paste(colnames(full_150)[2:12], "150", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 200 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*200.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_200 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_200[is.na(full_200)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_200 <- full_200[, grep(paste(voi,collapse="|"),colnames(full_200))]
colnames(full_200)[2:12] <- paste(colnames(full_200)[2:12], "200", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 250 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*250.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_250 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_250[is.na(full_250)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_250 <- full_250[, grep(paste(voi,collapse="|"),colnames(full_250))]
colnames(full_250)[2:12] <- paste(colnames(full_250)[2:12], "250", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 300 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*300.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_300 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_300[is.na(full_300)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_300 <- full_300[, grep(paste(voi,collapse="|"),colnames(full_300))]
colnames(full_300)[2:12] <- paste(colnames(full_300)[2:12], "300", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 400 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*400.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_400 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_400[is.na(full_400)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_400 <- full_400[, grep(paste(voi,collapse="|"),colnames(full_400))]
colnames(full_400)[2:12] <- paste(colnames(full_400)[2:12], "400", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 500 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*500.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_500 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_500[is.na(full_500)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_500 <- full_500[, grep(paste(voi,collapse="|"),colnames(full_500))]
colnames(full_500)[2:12] <- paste(colnames(full_500)[2:12], "500", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 750 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*750.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_750 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_750[is.na(full_750)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_750 <- full_750[, grep(paste(voi,collapse="|"),colnames(full_750))]
colnames(full_750)[2:12] <- paste(colnames(full_750)[2:12], "750", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 1000 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*1000.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_1000 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_1000[is.na(full_1000)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_1000 <- full_1000[, grep(paste(voi,collapse="|"),colnames(full_1000))]
colnames(full_1000)[2:12] <- paste(colnames(full_1000)[2:12], "1000", sep='_')
rm(df1,df2,cast_df2,voi,list,inPath)

# all df into list
l.df <- lapply(ls(), function(x) if (class(get(x)) == "data.frame") get(x))


# Function to merge all items
multi_join <- function(list.data, join_func, ...){
    require("dplyr")
    output <- Reduce(function(x, y) {join_func(x, y, ...)}, list.data)
    return(output)
}
# Run the previuosly defined function to join all within list
merged_landuse <- multi_join(l.df, full_join, by = "PCA_ID")
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2016/TOR/Merged/"
outName = "tor2016_lur_polygon.csv"

write_csv(merged_landuse,paste0(outPath,outName))

rm(list=ls())


#########################################
#########################################
#########################################
# LONG 2017 LAND USE
#########################################
#########################################
#########################################
# Set paths, specifiy WHAT polygon predictor THIS IS LAND USE
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2017/LNG/Polygon_dat/Land_use"
# Working Directory
setwd(inPath)
################################################
############ 50 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*050.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_50 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_50[is.na(full_50)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_50 <- full_50[, grep(paste(voi,collapse="|"),colnames(full_50))]
colnames(full_50)[2:12] <- paste(colnames(full_50)[2:12], "050", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 100 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*100.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_100 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_100[is.na(full_100)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_100 <- full_100[, grep(paste(voi,collapse="|"),colnames(full_100))]
colnames(full_100)[2:12] <- paste(colnames(full_100)[2:12], "100", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 150 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*150.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_150 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_150[is.na(full_150)] <- 0
voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_150 <- full_150[, grep(paste(voi,collapse="|"),colnames(full_150))]
colnames(full_150)[2:12] <- paste(colnames(full_150)[2:12], "150", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 200 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*200.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_200 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_200[is.na(full_200)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_200 <- full_200[, grep(paste(voi,collapse="|"),colnames(full_200))]
colnames(full_200)[2:12] <- paste(colnames(full_200)[2:12], "200", sep='_')
rm(df1,df2,cast_df2)

################################################
############ 250 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*250.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_250 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_250[is.na(full_250)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_250 <- full_250[, grep(paste(voi,collapse="|"),colnames(full_250))]
colnames(full_250)[2:12] <- paste(colnames(full_250)[2:12], "250", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 300 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*300.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_300 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_300[is.na(full_300)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_300 <- full_300[, grep(paste(voi,collapse="|"),colnames(full_300))]
colnames(full_300)[2:12] <- paste(colnames(full_300)[2:12], "300", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 400 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*400.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_400 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_400[is.na(full_400)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_400 <- full_400[, grep(paste(voi,collapse="|"),colnames(full_400))]
colnames(full_400)[2:12] <- paste(colnames(full_400)[2:12], "400", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 500 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*500.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_500 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_500[is.na(full_500)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_500 <- full_500[, grep(paste(voi,collapse="|"),colnames(full_500))]
colnames(full_500)[2:12] <- paste(colnames(full_500)[2:12], "500", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 750 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*750.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_750 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_750[is.na(full_750)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_750 <- full_750[, grep(paste(voi,collapse="|"),colnames(full_750))]
colnames(full_750)[2:12] <- paste(colnames(full_750)[2:12], "750", sep='_')
rm(df1,df2,cast_df2)
################################################
############ 1000 METER BUFFER DISTANCE ############
################################################
list <- Sys.glob("*1000.*")
# Read in both the shapefile and table file csv files
df1 <- read.csv(list[1])
df2 <- read_xls(list[2])
# Reshape the table file to a one-to-one relationship
cast_df2 <-dcast(df2, Join_ID ~ feat, value.var="PercentArea")
full_1000 <- full_join(df1,cast_df2, by=c("Join_ID"),suffixes=c("_df1","_df2") )
full_1000[is.na(full_1000)] <- 0

voi <- c("PCA_ID",
          "POSTALCODE",
          "distance",
          "Shape_Area",
          "SUM_area",
          "Commercial",
          "Government and Institutional",
          "Open Area",
          "Parks and Recreational",
          "Residential",
          "Resource and Industrial",
          "Waterbody")
# Only keep vars that are contained within the voi list
full_1000 <- full_1000[, grep(paste(voi,collapse="|"),colnames(full_1000))]
colnames(full_1000)[2:12] <- paste(colnames(full_1000)[2:12], "1000", sep='_')
rm(df1,df2,cast_df2,voi,list,inPath)

# all df into list
l.df <- lapply(ls(), function(x) if (class(get(x)) == "data.frame") get(x))


# Function to merge all items
multi_join <- function(list.data, join_func, ...){
    require("dplyr")
    output <- Reduce(function(x, y) {join_func(x, y, ...)}, list.data)
    return(output)
}
# Run the previuosly defined function to join all within list
merged_landuse <- multi_join(l.df, full_join, by = "PCA_ID")
outPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2017/LNG/Merged/"
outName = "lng2017_lur_polygon.csv"

write_csv(merged_landuse,paste0(outPath,outName))

rm(list=ls())

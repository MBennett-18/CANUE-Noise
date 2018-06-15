
library(tidyverse)
library(stringr)
library(readxl)
library(reshape2)
library(plyr)
#########################################
#########################################
#########################################
# VANCOUVER 2003 INDUSTRIAL REGION
#########################################
#########################################
#########################################
# Set paths, specifiy WHAT polygon predictor THIS IS LAND USE
inPath = "D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Polygon_dat/Indust"
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
          "",
          "",
          "",
          "",
          "",
          "",
          "")
# Only keep vars that are contained within the voi list
full_50 <- full_50[, grep(paste(voi,collapse="|"),colnames(full_50))]
colnames(full_50)[2:12] <- paste(colnames(full_50)[2:12], "050", sep='_')
rm(df1,df2,cast_df2)

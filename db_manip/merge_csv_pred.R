#################### Preamble ####################
library(tools)
#################### Preamble ####################

#################### Too lazy to type these out all the time ####################
# Print a df within a list
# lapply(l.df[2],"[",,,drop=FALSE)
# clear it
# rm(list=ls())
#################### Too lazy to type these out all the time ####################



# Working Directory
setwd("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Seperate/Cinemas")

# Get a list of files to read in
temp = list.files(pattern="*.csv")
# Drop the extension
file_name = file_path_sans_ext(temp)
# Get the predictor type (name is before first _ in most cases)
prefix = sub("_.*", "", file_name)
# Get the suffix number
suffix = sub(".*_", "", file_name)

# Read in all csv files as it's own df
for (i in 1:length(temp)) assign(file_path_sans_ext(temp[i]), read.csv(temp[i]))
# Put all df into list based on prefix
l.df <- lapply(ls(pattern=prefix), function(x) get(x))
# Only keep the columns required for regression information and linking back to site location(PCA_ID)
l.df <- lapply(l.df, function(x) x[(names(x) %in% c("PCA_ID", 
                                            "distance",
                                            "Shape_Le_1",
                                            "Shape_Area",
                                            "Point_Coun",
                                            "SUM_count"))])



addon <- paste0(sub("_.*", "", file_name), "_",sub(".*_", "", file_name))

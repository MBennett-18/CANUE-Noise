library(stringr)

# Working Directory
setwd("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Seperate")

filenames <- list.files(pattern="*.csv", recursive = TRUE)

all_files <- lapply(filenames, function(x) {
  file <- read.csv(x)
  # Get the start of filename prefix
  prefix = sub("_.*", "", x)
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
          "SUM_count")
# Only keep vars that are contained within the voi list
merged_drop <- merged_data[, grep(paste(voi,collapse="|"),colnames(merged_data))]

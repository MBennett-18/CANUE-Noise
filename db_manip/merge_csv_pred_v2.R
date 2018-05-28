# Working Directory
setwd("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Seperate/Cinemas")


filenames <- list.files(pattern="*.csv")

all_files <- lapply(filenames, function(x) {
  file <- read.csv(x)
  # Get the start of filename prefix
  prefix = sub("_.*", "", x)
  # Get the suffix number
  suffix = sub(".*_", "", x)
<<<<<<< HEAD:merge_csv_pred_v2.R
  colnames(file) <- paste(colnames(file), prefix, suffix, sep='_')
  return(file)
=======
  
  names(file) <- paste(names(file), prefix, suffix, sep='_')
>>>>>>> 1c0073207c1a790ec58f68a753f68b1108d008df:db_manip/merge_csv_pred_v2.R
})

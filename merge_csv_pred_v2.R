# Working Directory
setwd("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Seperate/Cinemas")


filenames <- list.files(pattern="*.csv")

all_files <- lapply(filenames, function(x) {
  file <- read.csv(x)
  # Get the start of filename prefix
  prefix = sub("_.*", "", x)
  # Get the suffix number
  suffix = sub(".*_", "", x)
  colnames(file) <- paste(colnames(file), prefix, suffix, sep='_')
  return(file)
})

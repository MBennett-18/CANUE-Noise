# Working Directory
setwd("D:/Work/Noise/aaa_CSV_CONVERTED/Predictors_CSV/2003/VAN/Seperate/Cinemas")

# Get a list of files to read in
files = list.files(pattern="*.csv")
files <- files[order(as.numeric(gsub("\\D+","", files)))] # very imp to sort for right order
name_short = file_path_sans_ext(files)

l.voi <- lapply(files, function(x)read.csv(x))

col_names <- lapply(l.voi, names) #original names

unq_names <- unique(unlist(col_names)) #unique names

addon <- paste0(sub("_.*", "", name_short), "_",sub(".*_", "", name_short))

converted_name <- paste0(unq_names,"_", addon) #replacement here

newlist <- lapply(l.voi, `names<-` , converted_name) #final data set names



filenames <- list.files(pattern="*.csv")

all_files <- lapply(filenames, function(x) {
  file <- read.csv(x)
  # Get the start of filename prefix 
  prefix = sub("_.*", "", x)
  # Get the suffix number
  suffix = sub(".*_", "", x)
  
  names(file) <- paste(names(file), prefix, suffix, sep='_')
})

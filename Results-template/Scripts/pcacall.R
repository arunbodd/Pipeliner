
## grab args
args <- commandArgs(trailingOnly = TRUE)
DIR <- args[1]
#FILE1 <- args[2]
#FILE2 <- args[3]
#CONTRASTS <- args[4]
# Sys.setenv(RSTUDIO_PANDOC="/Applications/RStudio.app/Contents/MacOS/pandoc")
setwd(DIR) # new 
# rmarkdown::render("Scripts/LimmaReport.Rmd", params = list(
rmarkdown::render("PcaReport.Rmd", params = list(
    folder = args[1],
    sampleinfo = args[2],
    data = args[3],
    projectId = args[4],
    projectDesc = args[5]
  ))


# objective: setup python environment within R

if (!require("reticulate")) {install.packages("reticulate")}
library(reticulate)
reticulate::install_miniconda() 

source("sample_python.py")

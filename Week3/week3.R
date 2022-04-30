## week 3

library(tidyverse)
data(diamonds)

# clean data, useful packages
library(here)
library(skimr)
library(janitor)
library(palmerpenguins)
?clean_names

# quick data view
skim_without_charts(penguins)
glimpse(penguins)


# bias function
#install.packages("SimDesign")
library(SimDesign)
ls_actual <- c(100, 200, 300, 400)
ls_predicted1 <- c(200, 300, 400, 500)
ls_predicted2 <- c(200, 300, 200, 300)
bias(ls_actual, ls_predicted1) # bias = actual - prediction
bias(ls_actual, ls_predicted2)

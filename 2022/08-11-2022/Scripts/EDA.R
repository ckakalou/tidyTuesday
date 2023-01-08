library(magrittr)
library(dplyr)

#count unique column entries in state stations 
state_stations %>% count(state)
state_stations %>% count(state, city)

unique(state_stations$format)
# Need to use basic text mining to categorize data


# Get the Data

# Read in with tidytuesdayR package 
# Install from CRAN via: install.packages("tidytuesdayR")
# This loads the readme and all the datasets for the week of interest

# Either ISO-8601 date or year/week works!

tuesdata <- tidytuesdayR::tt_load('2022-11-08')
tuesdata <- tidytuesdayR::tt_load(2022, week = 45)

state_stations <- tuesdata$state_stations
station_info <- tuesdata$station_info


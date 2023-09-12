# https://jtr13.github.io/cc19/different-ways-of-plotting-u-s-map-in-r.html

library(ggplot2)
library(maps)
library(mapdata)
library(ggmap)

yusa <- map_data('usa')
#https://cran.r-project.org/web/packages/ggmap/readme/README.html
# headS <- state_stations %>% head()
latitudeLongitude <- geocode(state_stations$state)

ggplot(data=usa, aes(x=long, y=lat, group=group)) + 
  geom_polygon(fill='lightblue') + 
  theme(axis.title.x=element_blank(), axis.text.x=element_blank(), axis.ticks.x=element_blank(),
        axis.title.y=element_blank(), axis.text.y=element_blank(), axis.ticks.y=element_blank()) + 
  ggtitle('U.S. Map') + 
  coord_fixed(1.3)
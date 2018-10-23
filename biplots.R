
library(ggplot2)
biplot1 <- ggplot(dataset,aes(jitter(hotelSize),overallCustSat))
biplot1 <- biplot1 + geom_point()

biplot2 <- ggplot(df,aes(jitter(checkInSat),overallCustSat))
biplot2 <- biplot2 + geom_point()

dataset$hotelState <- tolower(dataset$hotelState)
us <- map_data("state")

biplot3 <- ggplot(dataset, aes(map_id = hotelState))
biplot3 <- biplot3 + geom_map(map = us, aes(fill = factor(dataset$overallCustSat)))
biplot3 <- biplot3 + expand_limits(x = us$long, y = us$lat) + coord_map()
biplot3 <- biplot3 + ggtitle("Map of color coded USA")
biplot3

biplot4 <- ggplot(dataset,aes(jitter(hotelClean),overallCustSat))

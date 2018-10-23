
library(ggplot2)
biplot1 <- ggplot(dataset,aes(jitter(hotelSize),overallCustSat))
biplot1 <- biplot1 + geom_point()

biplot2 <- ggplot(dataset,aes(jitter(checkInSat),overallCustSat))
biplot2 <- biplot2 + geom_point()

us <- map_data("state")

biplot3 <- ggplot(dataset, aes()

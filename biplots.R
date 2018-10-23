
library(ggplot2)
biplot1 <- ggplot(dataset,aes(jitter(hotelSize),overallCustSat)) + geom_point()


library(ggplot2)
plot1 <- ggplot(df,aes(jitter(hotelSize),overallCustSat)) + geom_point()

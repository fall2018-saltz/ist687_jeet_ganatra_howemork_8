
#installing llibrary for ggplot and dplyr
library(ggplot2)
library(dplyr)

#customer satisfaction will be plotted on the y-axis as it is the dependent variable
#jitter() adds a small amount of noise to the numeric vector
#plotting hotelsize vs customer satisfaction
biplot1 <- ggplot(dataset,aes(jitter(hotelSize),overallCustSat))
biplot1 <- biplot1 + geom_point()

biplot2 <- ggplot(dataset,aes(jitter(checkInSat),overallCustSat))
biplot2 <- biplot2 + geom_point()

dataset$hotelState <- tolower(dataset$hotelState)
us <- map_data("state")

biplot3 <- ggplot(dataset, aes(map_id = hotelState))
biplot3 <- biplot3 + geom_map(map = us, aes(fill = factor(dataset$overallCustSat)))
biplot3 <- biplot3 + expand_limits(x = us$long, y = us$lat) + coord_map()
biplot3 <- biplot3 + ggtitle("Map of color coded USA")
biplot3

biplot4 <- ggplot(dataset,aes(jitter(hotelClean),overallCustSat))
biplot4 <- biplot4 + geom_point()

biplot5 <- ggplot(dataset,aes(jitter(hotelFriendly),overallCustSat))
biplot5 <- biplot5 + geom_point()

gendercount <- dataset %>% group_by(gender) %>% summarize(mean1 = mean(overallCustSat))
gendercount <- as.data.frame(gendercount)
biplot6 <- ggplot(gendercount,aes(gender,mean1)) 
biplot6<- biplot6 + geom_point()

biplot7 <-  ggplot(dataset,aes(jitter(guestAge),overallCustSat))
biplot7 <- biplot7 + geom_point()

biplot8 <-  ggplot(dataset,aes(jitter(lengthOfStay),overallCustSat))
biplot8 <- biplot8 + geom_point()

biplot9 <- ggplot(dataset,aes(jitter(whenBookedTrip),overallCustSat))
biplot9 <- biplot9 + geom_point()


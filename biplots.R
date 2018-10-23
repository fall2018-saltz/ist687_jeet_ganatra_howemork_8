
#installing llibrary for ggplot and dplyr
library(ggplot2)
library(dplyr)

#customer satisfaction will be plotted on the y-axis as it is the dependent variable
#jitter() adds a small amount of noise to the numeric vector
#plotting hotelsize vs customer satisfaction
biplot1 <- ggplot(dataset,aes(jitter(hotelSize),overallCustSat))
biplot1 <- biplot1 + geom_point()

#plotting check-in satisfaction vs customer satisfaction
biplot2 <- ggplot(dataset,aes(jitter(checkInSat),overallCustSat))
biplot2 <- biplot2 + geom_point()

#converting all state names to lower case because R cannot process capital letters
dataset$hotelState <- tolower(dataset$hotelState)
#turning data from the maps package into a data frame suitable for plotting with ggplot2
us <- map_data("state")

#initializing  a ggplot object and passing dataset as the input data with map ID as hotelState
biplot3 <- ggplot(dataset, aes(map_id = hotelState))
#creating a map visualization
biplot3 <- biplot3 + geom_map(map = us, aes(fill = factor(dataset$overallCustSat)))
#defining the x and y axes values of the map
#coord_map() handles the distortion and aspect ratio of the map
biplot3 <- biplot3 + expand_limits(x = us$long, y = us$lat) + coord_map()
#ggtitle() gives a title to the map
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


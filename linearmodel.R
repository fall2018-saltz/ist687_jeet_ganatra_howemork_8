
linmod  <- lm(overallCustSat~hotelSize+checkInSat+hotelState+hotelClean+hotelFriendly+gender+guestAge+lengthOfStay+whenBookedTrip,data = dataset)
linmod
summary(linmod)
#r-squared = 0.6702
#adjusted r-squared: = 0.6682

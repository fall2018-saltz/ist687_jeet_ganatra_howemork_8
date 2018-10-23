
linmod  <- lm(overallCustSat-hotelSize+checkInSat+hotelState+hotelClean+hotelFriendly+gender+guestAge+lengthOfStay+whenBookedTrip,data = dataset)
linmod
summary(linmod)


# predicting customer satisfaction using a multiple regression model with overallCustSat as the 
#dependent variable and hotelSize, checkInSat, hotelState, hotelClean, hotelFriendly, gender, guestAge,
#lengthOfStay and whenBookedTrip as the independent variables
#the summary() summarizes the various data values of variable "linmod"
linmod  <- lm(overallCustSat~hotelSize+checkInSat+hotelState+hotelClean+hotelFriendly+gender+guestAge+lengthOfStay+whenBookedTrip,data = dataset)
linmod
summary(linmod)
#r-squared = 0.6702
#adjusted r-squared: = 0.6682

#based on the p-values found during regression, the intercept,checkInSat, hotelClean, hotelFriendly,
#guestAge,lengthOfStay and whenBookedTrip variables are statistically significant

#the statistically significant coefficients for each predictor are as follows - 
#  Estimate Std. Error t value Pr(>|t|)    
#(Intercept)                     8.321e+00  1.024e-01  81.276  < 2e-16 ***
#checkInSat                     -2.381e-01  5.544e-03 -42.940  < 2e-16 ***
#hotelClean                      4.042e-02  6.941e-03   5.824 5.93e-09 ***
#hotelFriendly                   1.122e+00  8.863e-03 126.557  < 2e-16 ***
#guestAge                       -1.205e-01  1.815e-03 -66.400  < 2e-16 ***
#lengthOfStay                   -3.284e-01  1.677e-02 -19.575  < 2e-16 ***
#whenBookedTrip                  6.421e-03  1.005e-03   6.387 1.77e-10 ***  

#the variables are overallCustSat, checkInSat, guestAge, and gender
#this model predicts the customer satisfaction  based on some independent variables
#hence, the dependent variable is overallCustSat
#and the independent variables are checkInSat, gender, and guestAge
#among these, gender is a dummy variable and can only take 2 values i.e. 0 and 1
#equation: custSat <- intercept + (checkInSatcoeff * checkInSatValue) + (guestAgeCoeff*guestAgeValue) + (genderCoeff*genderValue)
#custSat <-  8.321e+00 + (-2.381e-01 * checkInSatValue) + (-1.205e-01 * guestAgeValue) + (1.218e-02 * genderValue)


#according to me, hotelClean is the best independent variable to predict customer satisfaction
linmod_hotelClean <- lm(overallCustSat~hotelClean,data=dataset)
summary(linmod_hotelClean)
#Estimate Std. Error t value Pr(>|t|)    
 #(Intercept) 4.242005   0.076529   55.43   <2e-16 ***
 #hotelClean  0.372821   0.009863   37.80   <2e-16 ***
# Multiple R-squared:  0.125,	Adjusted R-squared:  0.1249 

#comparing linear and multiple regressions, we see that the value of r-squared reduces significantly
#when applying linear regression. Hence, multiple regression is a more accurate method for predicting
#customer satisfaction

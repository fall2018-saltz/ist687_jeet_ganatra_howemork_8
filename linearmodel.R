
linmod  <- lm(overallCustSat~hotelSize+checkInSat+hotelState+hotelClean+hotelFriendly+gender+guestAge+lengthOfStay+whenBookedTrip,data = dataset)
linmod
summary(linmod)
#r-squared = 0.6702
#adjusted r-squared: = 0.6682

#based on the p-values found during regression, the hotel state variables, hotel size and 
#gender variables are statistically significant

#the statistically significant coefficients for each predictor are as follows - 
#                                  Estimate Std. Error t value Pr(>|t|)    
# hotelSize                       7.043e-05  1.117e-04   0.630   0.5284    
# hotelStateAlaska               -5.985e-02  1.366e-01  -0.438   0.6613    
# hotelStateArizona               8.216e-02  6.001e-02   1.369   0.1710    
# hotelStateArkansas              4.340e-02  7.690e-02   0.564   0.5725    
# hotelStateCalifornia            2.606e-02  4.901e-02   0.532   0.5950    
# hotelStateColorado             -8.696e-02  6.227e-02  -1.397   0.1626    
# hotelStateConnecticut           3.016e-02  6.835e-02   0.441   0.6591    
# hotelStateDelaware             -7.653e-02  1.277e-01  -0.599   0.5489    
# hotelStateDistrict of Columbia -1.008e-01  1.366e-01  -0.738   0.4605    
# hotelStateFlorida              -1.347e-02  5.107e-02  -0.264   0.7919    
# hotelStateGeorgia               7.055e-02  5.534e-02   1.275   0.2023    
# hotelStateHawaii                8.258e-02  9.439e-02   0.875   0.3816    
# hotelStateIdaho                -3.911e-02  9.281e-02  -0.421   0.6735    
# hotelStateIllinois              2.974e-02  5.415e-02   0.549   0.5829    
# hotelStateIndiana               6.519e-02  6.015e-02   1.084   0.2785    
# hotelStateIowa                  7.377e-02  7.384e-02   0.999   0.3178    
# hotelStateKansas               -9.678e-03  7.267e-02  -0.133   0.8941    
# hotelStateKentucky              7.134e-03  6.492e-02   0.110   0.9125    
# hotelStateLouisiana             4.052e-02  6.703e-02   0.605   0.5455    
# hotelStateMaine                -1.323e-01  9.789e-02  -1.352   0.1764    
# hotelStateMaryland              9.191e-03  6.184e-02   0.149   0.8819    
# hotelStateMassachusetts         5.491e-02  5.874e-02   0.935   0.3499    
# hotelStateMichigan              1.010e-01  5.630e-02   1.794   0.0729 .  
# hotelStateMinnesota             2.388e-02  6.280e-02   0.380   0.7038    
# hotelStateMississippi           6.802e-02  6.865e-02   0.991   0.3218    
# hotelStateMissouri             -2.985e-02  6.131e-02  -0.487   0.6264    
# hotelStateMontana              -2.722e-02  1.098e-01  -0.248   0.8042    
# hotelStateNebraska              8.879e-02  8.935e-02   0.994   0.3204    
# hotelStateNevada               -8.026e-02  7.464e-02  -1.075   0.2823    
# hotelStateNew Hampshire         4.062e-03  8.807e-02   0.046   0.9632    
# hotelStateNew Jersey            5.971e-02  5.669e-02   1.053   0.2923    
# hotelStateNew Mexico            7.146e-02  7.725e-02   0.925   0.3550    
# hotelStateNew York              4.431e-02  5.140e-02   0.862   0.3887    
# hotelStateNorth Carolina        3.346e-02  5.634e-02   0.594   0.5526    
# hotelStateNorth Dakota          2.139e-01  1.147e-01   1.864   0.0624 .  
# hotelStateOhio                 -2.965e-02  5.429e-02  -0.546   0.5850    
# hotelStateOklahoma              4.172e-02  6.852e-02   0.609   0.5426    
# hotelStateOregon               -2.080e-02  6.789e-02  -0.306   0.7593    
# hotelStatePennsylvania          1.897e-02  5.385e-02   0.352   0.7247    
# hotelStateRhode Island          2.979e-02  1.032e-01   0.289   0.7728    
# hotelStateSouth Carolina        5.992e-02  6.175e-02   0.970   0.3318    
# hotelStateSouth Dakota          3.161e-02  9.985e-02   0.317   0.7515    
# hotelStateTennessee            -2.498e-02  5.946e-02  -0.420   0.6743    
# hotelStateTexas                -3.663e-03  5.002e-02  -0.073   0.9416    
# hotelStateUtah                  7.941e-02  7.311e-02   1.086   0.2774    
# hotelStateVermont               8.604e-02  1.205e-01   0.714   0.4752    
# hotelStateVirginia             -1.275e-02  5.782e-02  -0.221   0.8254    
# hotelStateWashington            3.520e-02  5.899e-02   0.597   0.5508    
# hotelStateWest Virginia         7.765e-02  8.478e-02   0.916   0.3597    
# hotelStateWisconsin             1.293e-02  6.155e-02   0.210   0.8336    
# hotelStateWyoming               1.080e-01  1.529e-01   0.706   0.4800    
# genderMALE                      1.218e-02  1.116e-02   1.091   0.2752    

#the variables are overallCustSat, checkInSat, guestAge, and gender
#this model predicts the customer satisfaction  based on some independent variables
#hence, the dependent variable is overallCustSat
#and the independent variables are checkInSat, gender, and guestAge
#among these, gender is a dummy variable and can only take 2 values i.e. 0 and 1
#equation: custSat <- intercept + (checkInSatcoeff * checkInSatValue) + (guestAgeCoeff*guestAgeValue) + (genderCoeff*genderValue)
#custSat <-  8.321e+00 + (-2.381e-01 * checkInSatValue) + (-1.205e-01 * guestAgeValue) + (1.218e-02 * genderValue)


#according to me, hotelSize is the best independent variable to predict customer satisfaction
linmod_hotelSize <- lm(overallCustSat~hotelSize,data=dataset)
summary(linmod_hotelSize)
# Estimate Std. Error t value Pr(>|t|)
# (Intercept) 7.0984171  0.0306494 231.600   <2e-16 ***
# hotelSize   0.0001120  0.0001934   0.579    0.563   

# Multiple R-squared:  3.354e-05,	Adjusted R-squared:  -6.648e-05

#comparing linear and multiple regressions, we see that the value of r-squared reduces significantly
#when applying linear regression. Hence, multiple regression is a more accurate method for predicting

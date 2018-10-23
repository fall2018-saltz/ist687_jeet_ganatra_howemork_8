
library(jsonlite)
dataset <- fromJSON("hotelSurveySherison.json")
dataset <- data.frame(dataset)
str(dataset)

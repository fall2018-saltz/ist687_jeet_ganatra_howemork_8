
library(jsonlite)
df <- fromJSON("hotelSurveySherison.json")
df<-data.frame(df)
str(df)

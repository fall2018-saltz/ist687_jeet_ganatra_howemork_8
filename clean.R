
library(jsonlite)
df <- fromJSON(file.choose())
df<-data.frame(df)
str(df)

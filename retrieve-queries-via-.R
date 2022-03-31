rm(list=ls()) # clear workspace elements

library(httr) # for getting data
library(jsonlite) # for working with JSON

# overview
URL = "http://grlc.io/api-git/rlzijdeman/sparql-queries/voyages-subvoyages-overview?endpoint=https%3A%2F%2Fapi.druid.datalegend.net%2Fdatasets%2FESTA-DEMO%2Festa-demo-viz%2Fservices%2Festa-demo-viz%2Fsparql"
df <- GET(URL)
df <- fromJSON(content(df, as = 'text', encoding = "UTF-8"))
summary(df)

# demo
URL2 = "http://grlc.io/api-git/rlzijdeman/sparql-queries/esta-demo-voyage?endpoint=https%3A%2F%2Fapi.druid.datalegend.net%2Fdatasets%2FESTA-DEMO%2Festa-demo-viz%2Fservices%2Festa-demo-viz%2Fsparql"
df2 <- GET(URL2)
df2 <- fromJSON(content(df2, as = 'text', encoding = "UTF-8"))
summary(df2)


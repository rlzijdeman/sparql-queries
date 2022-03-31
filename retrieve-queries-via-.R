rm(list=ls()) # clear workspace elements

library(httr) # for getting data
library(jsonlite) # for working with JSON

# overview
URL = "http://grlc.io/api-git/rlzijdeman/sparql-queries/voyages-subvoyages-overview?endpoint=https%3A%2F%2Fapi.druid.datalegend.net%2Fdatasets%2FESTA-DEMO%2Festa-demo-viz%2Fservices%2Festa-demo-viz%2Fsparql"
df <- GET(URL)
df <- fromJSON(content(df, as = 'text', encoding = "UTF-8"))

# demo
URL2 = "http://grlc.io/api-git/rlzijdeman/sparql-queries/esta-demo-voyage?endpoint=https%3A%2F%2Fapi.druid.datalegend.net%2Fdatasets%2FESTA-DEMO%2Festa-demo-viz%2Fservices%2Festa-demo-viz%2Fsparql"
data <- GET(URL2)
data <- fromJSON(content(data, as = 'text', encoding = "UTF-8"))
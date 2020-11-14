library(httr)
library(jsonlite)


endpoint<-"https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=6TFWZqLfr5YLxGVEFBbV0jywnEyJlaqO&fbclid=IwAR175ffXpsiP61mU00oOmJP9jbv9Miov_cY_bidgfkA-BchuJnslY16hW3E"

getInfo <- GET(endpoint)
getInfo
infoText <- content(getInfo,"text")
infoText

infoJson <- fromJSON(infoText, flatten=TRUE)
infoJson

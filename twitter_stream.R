## store api keys (these are fake example values; replace with your own keys)
library(rtweet)
library(readr)

api_key <- "9A3jSmNYNbi1YI04TCZuAnlAY"
api_secret_key <- "hooashss9EyIngpcW8BIRSnfdA2TNBOLNl8l9iAbQOg9Tlac1Z"
access_token <- "3056253842-DzPzPjCkHSc5zGq3GAcf6cycWS7ydXIglMHlYfp"
access_token_secret <- "SZeQYEgOJmxU02NvbuqarBYewDNPwaU5qfD25dtAJecDs"

## Autenticazione via API keys
token <- create_token(
  app = "FakeNewsUniUd",
  consumer_key = api_key,
  consumer_secret = api_secret_key,
  access_token = access_token,
  access_secret = access_token_secret)

## Raccogli lo stream di tweet per un giorno. Readr velocizza il processo di parsing


link_siti_non_affidabili <- "https://raw.githubusercontent.com/riccardolunardi/ProgettoFondamenti/master/websites/websites_fakenews.txt?token=AIZMNOY7PEF2AIGEHZCBUJK645AEC"
siti_non_affidabili <- read.delim(link_siti_non_affidabili, sep = "\n", header = FALSE)
siti_non_affidabili <- as.vector(t(sapply(siti_non_affidabili, tolower))) #t trasforma il dataset in una matrice
siti_non_affidabili <- paste(siti_non_affidabili, collapse = ', ')

link_siti_affidabili <- "https://raw.githubusercontent.com/riccardolunardi/ProgettoFondamenti/master/websites/websites_realnews.txt?token=AIZMNOZ3OHEB64XVRGDWJRS645AH6"
siti_affidabili <- read.delim(link_siti_affidabili, sep = "\n", header = FALSE)
siti_affidabili <- as.vector(t(sapply(siti_affidabili, tolower))) #t trasforma il dataset in una matrice
siti_affidabili <- paste(siti_affidabili, collapse = ', ')

siti=paste(siti_affidabili,siti_non_affidabili, collapse = ', ')
siti

stream_tweets(
  siti,
  timeout = 60*60*24*7,
  file_name = paste("data/day", Sys.Date(), sep=""),
  parse = TRUE
)

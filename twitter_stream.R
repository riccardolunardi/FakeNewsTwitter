## store api keys (these are fake example values; replace with your own keys)
library(rtweet)

api_key <- "9A3jSmNYNbi1YI04TCZuAnlAY"
api_secret_key <- "hooashss9EyIngpcW8BIRSnfdA2TNBOLNl8l9iAbQOg9Tlac1Z"
access_token <- "3056253842-DzPzPjCkHSc5zGq3GAcf6cycWS7ydXIglMHlYfp"
access_token_secret <- "SZeQYEgOJmxU02NvbuqarBYewDNPwaU5qfD25dtAJecDs"

## authenticate via web browser
token <- create_token(
  app = "FakeNewsUniUd",
  consumer_key = api_key,
  consumer_secret = api_secret_key,
  access_token = access_token,
  access_secret = access_token_secret)

## stream london tweets for a week (60 secs x 60 mins * 24 hours *  7 days)
stream_tweets(
  "provaciao",
  timeout = 30,
  file_name = "prova.json",
  parse = TRUE
)

ciao

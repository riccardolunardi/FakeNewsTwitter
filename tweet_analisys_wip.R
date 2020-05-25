library(rtweet)
library(dplyr)

#TO-DO
# Automatizzare lettura dei JSON
# Creare un campo con solo il sito da cui proviene la notizia
# Togliere le righe di retweet e aumentare il contatore sui retweet del tweet corrispondente
#

#r_tweet1 <- parse_stream("data/day2020-04-22.json")
#r_tweet2 <- parse_stream("data/day2020-04-23.json")
#r_tweet3 <- parse_stream("data/day2020-04-24-01.json")
#r_tweet4 <- parse_stream("data/day2020-04-24.json")
#r_tweet5 <- parse_stream("data/day2020-04-25.json")
r_tweet6 <- parse_stream("data/day2020-04-26.json")
#r_tweet7 <- parse_stream("data/day2020-04-27.json")
#r_tweet8 <- parse_stream("data/day2020-04-28.json")
#r_tweet9 <- parse_stream("data/day2020-04-29.json")
#r_tweet10 <- parse_stream("data/day2020-04-30.json")
#r_tweet11 <- parse_stream("data/day2020-05-01.json")
#r_tweet12 <- parse_stream("data/day2020-05-02.json")


#df3 <- rbind(r_tweet1, r_tweet2, r_tweet3, r_tweet4, r_tweet5, r_tweet6, r_tweet7, r_tweet8, r_tweet9, r_tweet10, r_tweet11, r_tweet12)
df3 <- rbind(r_tweet6)

View(df3)
campi_utili = c("user_id","status_id","created_at","screen_name","text", 
                "urls_url", "urls_expanded_url","retweet_status_id","retweet_text",
                "retweet_source","retweet_retweet_count","retweet_user_id","is_retweet")
#Ottenere solo retweet
retweets <- df3 %>%
  select(campi_utili) %>%
  filter(is_retweet)

nrow(retweets)

retweets_with_number <- retweets %>%
  count(retweet_status_id,retweet_user_id) %>%
  arrange(desc(n))

View(retweets_with_number)

#Ottenere solo tweet
tweets <- df3 %>%
  select(-source) %>%
  filter(!is_retweet)

nrow(retweets)
nrow(tweets)

retweets_with_number <- retweets %>%
  count(retweet)

View(retweets)
View(tweets)

retweets_with_number

#dat = readLines("websites/websites_fakenews.txt")

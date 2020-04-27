library(rtweet)


r_tweet1 <- parse_stream("data/day2020-04-22.json")
r_tweet2 <- parse_stream("data/day2020-04-23.json")
r_tweet3 <- parse_stream("data/day2020-04-24-01.json")
r_tweet4 <- parse_stream("data/day2020-04-24.json")

df3 <- rbind(r_tweet1, r_tweet2, r_tweet3, r_tweet4)
View(df3)

dat = readLines("websites/websites_fakenews.txt")

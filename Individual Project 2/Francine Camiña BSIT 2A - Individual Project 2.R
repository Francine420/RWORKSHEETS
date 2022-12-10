library(RColorBrewer)
library(tm)
library(dplyr)
library(wordcloud)
library(ggplot2)
library(twitteR)
library(plotly)

# SETUP CREDENTIALS.
API_KEY <- "HxECAhf2LeK53Qziw3Ld6EBH7"
API_SECRET_KEY <- "93QfuaKE66C1q6F1YSl9D38UIdkpgqHb5BjnfRxwiF75rroKgY"
ACCESS_TOKEN <-  "1599400989198409729-bOU0I1N7tfQNdKJw44paZO0AgOkhOl"
ACCESS_SECRET <-  "4GK0nGO9r2yLyIFSfrX3jtcHmP4JmGsggMcVjKw8dHUia"

setup_twitter_oauth(consumer_key = API_KEY,
                    consumer_secret = API_SECRET_KEY,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)

# EXTRACTING TWEETS.
tweets_trend <- searchTwitter("#BTSV", n=10000, lang="en", since="2022-12-1",
                             until="2022-12-7", retryOnRateLimit = 120)
tweets_trend

# CONVERTING LIST DATA TO DATA FRAME.
trendtweetsdf <- twListToDF(tweets_trend)

# SAVE DATA FRAME FILE.
save(trendtweetsdf,file = "trendtweetsdf.Rdata")

# LOAD DATA FRAME FILE.
load(file = "trendtweetsdf.Rdata")

# CHECKING FOR MISSING VALUES IN A DATA FRAME.
s_apply <- sapply(trendtweetsdf, function(x) sum(is.na(x)))
s_apply


#TWEETS

# SUBSETTING USING THE dplyr() PACKAGE.
tweet <- trendtweetsdf %>%
  select(screenName,text,created, isRetweet) %>% filter(isRetweet == FALSE)
tweet

# GROUPING THE DATA CREATED. 
tweet %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

grp1 <- tweet %>%  mutate(Created_At_Round = 
                             created %>% round(units = 'hours') %>% as.POSIXct())
grp1

minimum <- tweet %>% pull(created) %>% min()

minimum 

maximum <- tweet %>% pull(created) %>% max()

maximum

# Plot on tweets by time using the library(plotly) and ggplot().
plot <- ggplot(grp1, aes(x = Created_At_Round)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "purple", high = "violet")

plot %>% ggplotly()

#RETWEETS

retweet <- trendtweetsdf %>%
  select(screenName,text,created, isRetweet) %>% filter(isRetweet == TRUE)
retweet


retweet %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

grp2 <- retweet %>%  mutate(Created_At_Round = 
                                created %>% round(units = 'hours') %>% as.POSIXct())
grp2

minimum <- retweet %>% pull(created) %>% min()

minimum 

maximum <- retweet %>% pull(created) %>% max()

maximum

# Plot on tweets by time using the library(plotly) and ggplot().
plot <- ggplot(grp2, aes(x = Created_At_Round)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "purple", high = "violet")

plot %>% ggplotly()

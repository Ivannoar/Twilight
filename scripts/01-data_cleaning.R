#### Preamble ####
# Purpose: Clean the survey data downloaded from [...UPDATE ME!!!!!]
# Author: Ivan Li
# Date: April 3 2022
# Contact: ivann.li@mail.utoronto.ca 
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the ACS data and saved it to inputs/data
# - Don't forget to gitignore it!
# - Change these to yours
# Any other information needed?


#### Workspace setup ####
# Use R Projects, not setwd().
install.packages("rtweet")
library(haven)
library(tidyverse)
library(rtweet)
library(twitteR)
library(base64enc)
library(rvest)
library(jsonlite)
library(utils)
library(httr)
library(httpuv)


# Read in the raw data.

consumer_key <- 'My0aeiHkcbrj77T6TOH5Mj2pv'
consumer_secret <- '0BcdOCvMujLjWYd6pTsuE7hGJKnrOuxJP7iFtuXUeEvYZJzxU6'
access_token <- '1615605523-vkmoXuCP1Fq3J0fSYXp3ULsEItZXCTKnDbEcA7k'
access_secret <- 'FNbx2Umo1nBwsx7DYocBKcodA2tLVB8MCVEtPHdSedH9q'

# https://github.com/sarikayamehmet/GetOldTweets-R

get_token()
create_token(app = "uoftwitter", consumer_key, consumer_secret, access_token, access_secret)
setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)
get_favorites(user = "RohanAlexander")


april4 <- search_tweets(q = "Wordle 289", n = 36000, retryonratelimit = TRUE, type = "mixed")
  df <- apply(april4,2,as.character)
  write.csv(x=df, file = "C:/Users/liiva/OneDrive/april_4.csv")
april5 <- search_tweets(q = "Wordle 290", n = 36000, retryonratelimit = TRUE, type = "mixed")
  df <- apply(april5,2,as.character)
  write.csv(x=df, file = "C:/Users/liiva/OneDrive/april_5.csv")
april6 <- search_tweets(q = "Wordle 291", n = 36000, retryonratelimit = TRUE, type = "mixed")
  df <- apply(april6,2,as.character)
  write.csv(x=df, file = "C:/Users/liiva/OneDrive/april_6.csv")
april7 <- search_tweets(q = "Wordle 292", n = 36000, retryonratelimit = TRUE, type = "mixed")
  df <- apply(april7,2,as.character)
  write.csv(x=df, file = "C:/Users/liiva/OneDrive/april_7.csv")
april8 <- search_tweets(q = "Wordle 293", n = 36000, retryonratelimit = TRUE, type = "mixed")
  df <- apply(april8,2,as.character)
  write.csv(x=df, file = "C:/Users/liiva/OneDrive/april_8.csv")
april9 <- search_tweets(q = "Wordle 294", n = 36000, retryonratelimit = TRUE, type = "mixed")
  df <- apply(april9,2,as.character)
  write.csv(x=df, file = "C:/Users/liiva/OneDrive/april_9.csv")
april10 <- search_tweets(q = "Wordle 295", n = 36000, retryonratelimit = TRUE, type = "mixed")
  df <- apply(april10,2,as.character) 
  write.csv(x=df, file = "C:/Users/liiva/OneDrive/april_10.csv")

april17 <- search_tweets(q = "Wordle 302", n = 36000, retryonratelimit = TRUE, type = "mixed")
  df <- apply(april17,2,as.character)
  write.csv(x=df, file = "C:/Users/liiva/OneDrive/april_17.csv")
april18 <- search_tweets(q = "Wordle 303", n = 36000, retryonratelimit = TRUE, type = "mixed")
  df <- apply(april18,2,as.character)
  write.csv(x=df, file = "C:/Users/liiva/OneDrive/april_18.csv")
april19 <- search_tweets(q = "Wordle 304", n = 36000, retryonratelimit = TRUE, type = "mixed")
  df <- apply(april19,2,as.character)
  write.csv(x=df, file = "C:/Users/liiva/OneDrive/april_19.csv")
april20 <- search_tweets(q = "Wordle 305", n = 36000, retryonratelimit = TRUE, type = "mixed")
  df <- apply(april20,2,as.character)
  write.csv(x=df, file = "C:/Users/liiva/OneDrive/april_20.csv")
april21 <- search_tweets(q = "Wordle 306", n = 36000, retryonratelimit = TRUE, type = "mixed")
  df <- apply(april21,2,as.character)
  write.csv(x=df, file = "C:/Users/liiva/OneDrive/april_21.csv")
april22 <- search_tweets(q = "Wordle 307", n = 36000, retryonratelimit = TRUE, type = "mixed")
  df <- apply(april22,2,as.character)
  write.csv(x=df, file = "C:/Users/liiva/OneDrive/april_22.csv")
april23 <- search_tweets(q = "Wordle 308", n = 36000, retryonratelimit = TRUE, type = "mixed")
  df <- apply(april23,2,as.character)
  write.csv(x=df, file = "C:/Users/liiva/OneDrive/april_23.csv")
  

april_4_clean <- filter(april_4, str_detect(text, 'Wordle 289 1/6|Wordle 289 2/6|Wordle 289 3/6|
Wordle 289 4/6|Wordle 289 5/6|Wordle 289 6/6|Wordle 289 X/6'))

april_5_clean <- filter(april_5, str_detect(text, 'Wordle 290 1/6|Wordle 290 2/6|Wordle 290 3/6|
Wordle 290 4/6|Wordle 290 5/6|Wordle 290 6/6|Wordle 290 X/6'))
  
april_6_clean <- filter(april_6, str_detect(text, 'Wordle 291 1/6|Wordle 291 2/6|Wordle 291 3/6|
Wordle 291 4/6|Wordle 291 5/6|Wordle 291 6/6|Wordle 291 X/6'))

april_7_clean <- filter(april_7, str_detect(text, 'Wordle 292 1/6|Wordle 292 2/6|Wordle 292 3/6|
Wordle 292 4/6|Wordle 292 5/6|Wordle 292 6/6|Wordle 292 X/6'))

april_8_clean <- filter(april_8, str_detect(text, 'Wordle 293 1/6|Wordle 293 2/6|Wordle 293 3/6|
Wordle 293 4/6|Wordle 293 5/6|Wordle 293 6/6|Wordle 293 X/6'))

april_9_clean <- filter(april_9, str_detect(text, 'Wordle 294 1/6|Wordle 294 2/6|Wordle 294 3/6|
Wordle 294 4/6|Wordle 294 5/6|Wordle 294 6/6|Wordle 294 X/6'))

april_10_clean <- filter(april_10, str_detect(text, 'Wordle 295 1/6|Wordle 295 2/6|Wordle 295 3/6|
Wordle 295 4/6|Wordle 295 5/6|Wordle 295 6/6|Wordle 295 X/6'))

april_17_clean <- filter(april_17, str_detect(text, 'Wordle 302 1/6|Wordle 302 2/6|Wordle 302 3/6|
Wordle 302 4/6|Wordle 302 5/6|Wordle 302 6/6|Wordle 302 X/6'))

april_18_clean <- filter(april_18, str_detect(text, 'Wordle 303 1/6|Wordle 303 2/6|Wordle 303 3/6|
Wordle 303 4/6|Wordle 303 5/6|Wordle 303 6/6|Wordle 303 X/6'))

april_19_clean <- filter(april_19, str_detect(text, 'Wordle 304 1/6|Wordle 304 2/6|Wordle 304 3/6|
Wordle 304 4/6|Wordle 304 5/6|Wordle 304 6/6|Wordle 304 X/6'))

april_20_clean <- filter(april_20, str_detect(text, 'Wordle 305 1/6|Wordle 305 2/6|Wordle 305 3/6|
Wordle 305 4/6|Wordle 305 5/6|Wordle 305 6/6|Wordle 305 X/6'))

april_21_clean <- filter(april_21, str_detect(text, 'Wordle 306 1/6|Wordle 306 2/6|Wordle 306 3/6|
Wordle 306 4/6|Wordle 306 5/6|Wordle 306 6/6|Wordle 306 X/6'))

april_22_clean <- filter(april_22, str_detect(text, 'Wordle 307 1/6|Wordle 307 2/6|Wordle 307 3/6|
Wordle 307 4/6|Wordle 307 5/6|Wordle 307 6/6|Wordle 307 X/6'))

april_23_clean <- filter(april_23, str_detect(text, 'Wordle 308 1/6|Wordle 308 2/6|Wordle 308 3/6|
Wordle 308 4/6|Wordle 308 5/6|Wordle 308 6/6|Wordle 308 X/6'))

cleanlist <- list(april_4_clean, april_5_clean, april_6_clean, april_7_clean, april_8_clean,
                  april_9_clean, april_10_clean, april_17_clean, april_18_clean, april_19_clean,
                  april_20_clean, april_21_clean, april_22_clean, april_23_clean)

april_4_clean <- select(april_4_clean, c(text, created_at, place_name,
                  place_full_name, place_type, country, country_code, location)) |>
  mutate(score = if_else(grepl('1/6', text), '1', 
                 if_else(grepl('2/6', text), '2',
                 if_else(grepl('3/6', text), '3',
                 if_else(grepl('4/6', text), '4',
                 if_else(grepl('5/6', text), '5',
                 if_else(grepl('6/6', text), '6', 'DNF'
                         )))))),
         hardmode = if_else(grepl('/6*', text, fixed = TRUE, useBytes = TRUE), TRUE, FALSE))

april_5_clean <- select(april_5_clean, c(text, created_at, place_name,
                  place_full_name, place_type, country, country_code, location)) |>
  mutate(score = if_else(grepl('1/6', text), '1', 
                 if_else(grepl('2/6', text), '2',
                 if_else(grepl('3/6', text), '3',
                 if_else(grepl('4/6', text), '4',
                 if_else(grepl('5/6', text), '5',
                 if_else(grepl('6/6', text), '6', 'DNF'
                         )))))),
         hardmode = if_else(grepl('/6*', text, fixed = TRUE, useBytes = TRUE), TRUE, FALSE))

april_6_clean <- select(april_6_clean, c(text, created_at, place_name,
                  place_full_name, place_type, country, country_code, location)) |>
  mutate(score = if_else(grepl('1/6', text), '1', 
                 if_else(grepl('2/6', text), '2',
                 if_else(grepl('3/6', text), '3',
                 if_else(grepl('4/6', text), '4',
                 if_else(grepl('5/6', text), '5',
                 if_else(grepl('6/6', text), '6', 'DNF'
                         )))))),
         hardmode = if_else(grepl('/6*', text, fixed = TRUE, useBytes = TRUE), TRUE, FALSE))

april_7_clean <- select(april_7_clean, c(text, created_at, place_name,
                  place_full_name, place_type, country, country_code, location)) |>
  mutate(score = if_else(grepl('1/6', text), '1', 
                 if_else(grepl('2/6', text), '2',
                 if_else(grepl('3/6', text), '3',
                 if_else(grepl('4/6', text), '4',
                 if_else(grepl('5/6', text), '5',
                 if_else(grepl('6/6', text), '6', 'DNF'
                         )))))),
         hardmode = if_else(grepl('/6*', text, fixed = TRUE, useBytes = TRUE), TRUE, FALSE))

april_8_clean <- select(april_8_clean, c(text, created_at, place_name,
                  place_full_name, place_type, country, country_code, location)) |>
  mutate(score = if_else(grepl('1/6', text), '1', 
                 if_else(grepl('2/6', text), '2',
                 if_else(grepl('3/6', text), '3',
                 if_else(grepl('4/6', text), '4',
                 if_else(grepl('5/6', text), '5',
                 if_else(grepl('6/6', text), '6', 'DNF'
                         )))))),
         hardmode = if_else(grepl('/6*', text, fixed = TRUE, useBytes = TRUE), TRUE, FALSE))

april_9_clean <- select(april_9_clean, c(text, created_at, place_name,
                  place_full_name, place_type, country, country_code, location)) |>
  mutate(score = if_else(grepl('1/6', text), '1', 
                 if_else(grepl('2/6', text), '2',
                 if_else(grepl('3/6', text), '3',
                 if_else(grepl('4/6', text), '4',
                 if_else(grepl('5/6', text), '5',
                 if_else(grepl('6/6', text), '6', 'DNF'
                         )))))),
         hardmode = if_else(grepl('/6*', text, fixed = TRUE, useBytes = TRUE), TRUE, FALSE))

april_10_clean <- select(april_10_clean, c(text, created_at, place_name,
                  place_full_name, place_type, country, country_code, location)) |>
  mutate(score = if_else(grepl('1/6', text), '1', 
                 if_else(grepl('2/6', text), '2',
                 if_else(grepl('3/6', text), '3',
                 if_else(grepl('4/6', text), '4',
                 if_else(grepl('5/6', text), '5',
                 if_else(grepl('6/6', text), '6', 'DNF'
                         )))))),
         hardmode = if_else(grepl('/6*', text, fixed = TRUE, useBytes = TRUE), TRUE, FALSE))

april_17_clean <- select(april_17_clean, c(text, created_at, place_name,
                  place_full_name, place_type, country, country_code, location)) |>
  mutate(score = if_else(grepl('1/6', text), '1', 
                 if_else(grepl('2/6', text), '2',
                 if_else(grepl('3/6', text), '3',
                 if_else(grepl('4/6', text), '4',
                 if_else(grepl('5/6', text), '5',
                 if_else(grepl('6/6', text), '6', 'DNF'
                         )))))),
         hardmode = if_else(grepl('/6*', text, fixed = TRUE, useBytes = TRUE), TRUE, FALSE))

april_18_clean <- select(april_18_clean, c(text, created_at, place_name,
                  place_full_name, place_type, country, country_code, location)) |>
  mutate(score = if_else(grepl('1/6', text), '1', 
                 if_else(grepl('2/6', text), '2',
                 if_else(grepl('3/6', text), '3',
                 if_else(grepl('4/6', text), '4',
                 if_else(grepl('5/6', text), '5',
                 if_else(grepl('6/6', text), '6', 'DNF'
                         )))))),
         hardmode = if_else(grepl('/6*', text, fixed = TRUE, useBytes = TRUE), TRUE, FALSE))

april_19_clean <- select(april_19_clean, c(text, created_at, place_name,
                  place_full_name, place_type, country, country_code, location)) |>
  mutate(score = if_else(grepl('1/6', text), '1', 
                 if_else(grepl('2/6', text), '2',
                 if_else(grepl('3/6', text), '3',
                 if_else(grepl('4/6', text), '4',
                 if_else(grepl('5/6', text), '5',
                 if_else(grepl('6/6', text), '6', 'DNF'
                         )))))),
         hardmode = if_else(grepl('/6*', text, fixed = TRUE, useBytes = TRUE), TRUE, FALSE))

april_20_clean <- select(april_20_clean, c(text, created_at, place_name,
                  place_full_name, place_type, country, country_code, location)) |>
  mutate(score = if_else(grepl('1/6', text), '1', 
                 if_else(grepl('2/6', text), '2',
                 if_else(grepl('3/6', text), '3',
                 if_else(grepl('4/6', text), '4',
                 if_else(grepl('5/6', text), '5',
                 if_else(grepl('6/6', text), '6', 'DNF'
                         )))))),
         hardmode = if_else(grepl('/6*', text, fixed = TRUE, useBytes = TRUE), TRUE, FALSE))

april_21_clean <- select(april_21_clean, c(text, created_at, place_name,
                  place_full_name, place_type, country, country_code, location)) |>
  mutate(score = if_else(grepl('1/6', text), '1', 
                 if_else(grepl('2/6', text), '2',
                 if_else(grepl('3/6', text), '3',
                 if_else(grepl('4/6', text), '4',
                 if_else(grepl('5/6', text), '5',
                 if_else(grepl('6/6', text), '6', 'DNF'
                         )))))),
         hardmode = if_else(grepl('/6*', text, fixed = TRUE, useBytes = TRUE), TRUE, FALSE))

april_22_clean <- select(april_22_clean, c(text, created_at, place_name,
                  place_full_name, place_type, country, country_code, location)) |>
  mutate(score = if_else(grepl('1/6', text), '1', 
                 if_else(grepl('2/6', text), '2',
                 if_else(grepl('3/6', text), '3',
                 if_else(grepl('4/6', text), '4',
                 if_else(grepl('5/6', text), '5',
                 if_else(grepl('6/6', text), '6', 'DNF'
                         )))))),
         hardmode = if_else(grepl('/6*', text, fixed = TRUE, useBytes = TRUE), TRUE, FALSE))

april_23_clean <- select(april_23_clean, c(text, created_at, place_name,
                  place_full_name, place_type, country, country_code, location)) |>
  mutate(score = if_else(grepl('1/6', text), '1', 
                 if_else(grepl('2/6', text), '2',
                 if_else(grepl('3/6', text), '3',
                 if_else(grepl('4/6', text), '4',
                 if_else(grepl('5/6', text), '5',
                 if_else(grepl('6/6', text), '6', 'DNF'
                         )))))),
         hardmode = if_else(grepl('/6*', text, fixed = TRUE, useBytes = TRUE), TRUE, FALSE))

masterdata <- rbind(april_4_clean, april_5_clean, april_6_clean, april_7_clean, april_8_clean,
                  april_9_clean, april_10_clean, april_17_clean, april_18_clean, april_19_clean,
                  april_20_clean, april_21_clean, april_22_clean, april_23_clean)
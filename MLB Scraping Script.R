# Web Scraping MLB top 10 pitchers for now
# General-purpose data wrangling
library(tidyverse)  
# Parsing of HTML/XML files  
library(rvest)    
# String manipulation
library(stringr)   
# Verbose regular expressions
library(rebus)     
# Eases DateTime manipulation
library(lubridate)

url <- "http://m.mlb.com/player/434378/justin-verlander?year=2018&stats=gamelogs-r-pitching-mlb"

# reading in the table from the xpath
Justin_Verlander <- url %>%
  read_html() %>%
  html_nodes(xpath='//*[@id="gamelogsPanel"]/div/div/div[1]/div/table') %>%
  html_table()
Justin_Verlander <- Justin_Verlander[[1]]

# head of our imported data
head(Justin_Verlander)

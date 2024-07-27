##---- 2024 July 27


## Packages
library(coronavirus) 
packageVersion("coronavirus") # 0.4.1
library(tidyverse)
library(sta3262)

#----------------------------
# Student index numbers
library(readr)
index2024 <- read_csv("data-raw/2024/index2024.csv")
View(index2024)
colnames(index2024) <- "index"
dim(index2024) # 83 1
index2024[84, 1] <- "AS2021000"
save(index2024, file = "data/index2024.rda")

#-----------------------------

## Data
data("coronavirus")

## Checking data quality
coronavirusdf <- coronavirus %>% 
  #filter(type == "confirmed") %>%
  group_by(country, date,  type) %>%
  summarise(cases = sum(cases)) 

## Country-wise statistics
coronavirus_country <- coronavirusdf %>%
  group_by(country, type) %>%
  summarise(mean = mean(cases, na.rm=TRUE))
coronavirus_country

## Sort countries 
coronavirus_country_confirmed <- coronavirus_country %>%
  filter(type=="confirmed") %>%
arrange(desc(mean))
as.data.frame(coronavirus_country_confirmed)

country.name <- head(coronavirus_country_confirmed$country, 84)
tail(country.name)
head(country.name)


### Bahrain

Bahrain <- coronavirus %>% 
  filter(country=="Bahrain")
Bahrain
View(Bahrain)



## Data (Match index numbers and country)
data("index2024")
index2024

ipcountry2024 

ipcountry2024 <- list(index=index2024, country=country.name)
save(ipcountry2024, file="data/ipcountry2024.rda")

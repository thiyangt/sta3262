##---- 2022 Sep 28

## Packages
library(coronavirus) 
packageVersion("coronavirus") # 0.3.32
library(tidyverse)
library(sta3262)

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

country.name <- head(coronavirus_country_confirmed$country, 110)
tail(country.name)
head(country.name)


### Fiji

Fiji <- coronavirus %>% 
  filter(country=="Fiji")
Fiji

###

coronavirus_country_confirmed[100:110, ]

## Data (Match index numbers and country)
data("index2022")
index2022



ipcountry2022 <- list(index=index2022, country=country.name)
save(ipcountry2022, file="data/ipcountry2022.rda")

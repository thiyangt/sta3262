##---- 2021 Sep 17

## Packages
library(coronavirus)
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

country.name <- head(coronavirus_country_confirmed$country, 140)
tail(country.name)

### Haiti

haiti <- coronavirus %>% 
  filter(country=="Haiti")
haiti

###

coronavirus_country_confirmed[100:110, ]

## Data (Match index numbers and country)
data("index2021")
index2021

## Unenroled cases
unenrol <- c("AS2018580", "AS2018385", "AS2018558",
             "AS2018373", "AS2018417")
length(index2021$V1) #144
i1 <- index2021$V1 %in% unenrol
indexindividual <- index2021$V1[!i1]
length(indexindividual)

indexindividual2 <- c(unique(indexindividual), "AS2018000")
tail(indexindividual2)
length(indexindividual2)

ipcountry <- list(index=indexindividual2, country=country.name)
save(ipcountry, file="data/ipcountry.rda")

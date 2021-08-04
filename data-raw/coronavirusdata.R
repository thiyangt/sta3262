# 2021 August 4
library(coronavirus)
library(tidyverse)

data("coronavirus")
head(coronavirus)

## Preprocessing indexnumbers
coronavirus <- coronavirus %>% 
  #filter(type == "confirmed") %>%
  group_by(country, date,  type) %>%
  summarise(cases = sum(cases)) 

sta326corona <- coronavirus 
save(sta326corona, file = "data/sta326corona.rda")

## Read index numbers
index2021 <- read.table("data-raw/indexnumbers.txt")
index2021 <- data.frame(index=index2021)
save(index2021, file = "data/index2021.rda")

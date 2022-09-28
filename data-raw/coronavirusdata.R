# 2021 August 4
# 2021 August 11
# 2021 September 9
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
save(sta326corona, file = "data/sta326corona.rda", compress='xz')

## Read index numbers
index2021 <- read.table("data-raw/indexnumbers.txt")
index2021 <- data.frame(index=index2021)
save(index2021, file = "data/index2021.rda")

## Read index numbers - 2022
library(readxl)
Studentlist2022_ <- read_excel("data-raw/Studentlist2022 .xlsx")
View(Studentlist2022_)
length(Studentlist2022_$...2)
index2022 <- Studentlist2022_$...2[-c(1, 2)]
index2022 <- data.frame(index = index2022)
save(index2022, file = "data/index2022.rda")

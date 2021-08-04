

get_assignment1 <- function(index){
  
  index2021.id <- c("AS2018000",index2021$V1)
  county.id <- c("Sri Lanka", unique(sta326corona$country)[-165])
  
  position <- which(index2021.id==index)
  relevant.country <- county.id[position]
  
  yourdata <- coronavirus %>% filter(country==relevant.country)
  yourdata
}

get_assignment1("AS2018470")

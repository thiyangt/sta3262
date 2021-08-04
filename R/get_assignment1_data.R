globalVariables(c("country", "index2021", "sta326corona"))
#' load the corresponding data set given the index number
#'
#' load daily summary of the Coronavirus (COVID-19) for the country associated with the index number 
#' @param index Student's index number. For eg "AS2018000"
#' @return a dataframe aily summary of the Coronavirus (COVID-19) for the country associated with the index number 
#' @importFrom utils globalVariables
#' @importFrom utils data
#' @export
get_assignment1_data <- function(index){
  index2021 <- sta3262::index2021
  sta326corona <- sta3262::sta326corona
  #data("index2021")
  #data("sta326corona")
  index2021.id <- c("AS2018000",index2021$V1)
  county.id <- c("Sri Lanka", unique(sta326corona$country)[-165])
  
  position <- which(index2021.id==index)
  relevantcountry <- as.character(county.id[position])
  
  yourdata <- sta326corona[sta326corona$country == relevantcountry, ]
  yourdata
}
#'example
#'library(sta3262)
#'get_assignment1_data("AS2018000")


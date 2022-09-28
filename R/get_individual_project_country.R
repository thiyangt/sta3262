globalVariables(c("country", "index", "ipcountry"))
#' load the corresponding data set given the index number
#'
#' load daily summary of the Coronavirus (COVID-19) for the country associated with the index number 
#' @param index Student's index number. For eg "AS2018000"
#' @return name of the country 
#' @importFrom utils globalVariables
#' @importFrom utils data
#' @export
get_individual_project_country <- function(index){
  sta3262::ipcountry2022
  position <- which(ipcountry2022$index==index)
  yourdata <- ipcountry2022$country[position]
  yourdata
}
#'example
#'library(sta3262)
#'get_individual_project_country("AS2018000")




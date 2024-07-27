globalVariables(c("country", "index2024", "ipcountry", "ipcountry2024"))
#' load the corresponding data set given the index number
#'
#' load daily summary of the Coronavirus (COVID-19) for the country associated with the index number 
#' @param index Student's index number. For eg "AS2018000"
#' @return name of the country 
#' @importFrom utils globalVariables
#' @importFrom utils data
#' @export
get_individual_project_country <- function(index){
  sta3262::ipcountry2024
  position <- which(ipcountry2024$index==index)
  yourdata <- ipcountry2024$country[position]
  yourdata
}
#'example
#'library(sta3262)
#'get_individual_project_country("AS2021000")




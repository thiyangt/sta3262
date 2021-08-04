#' corona cases
#' @description country-wise corona cases
#' @format A data frame 
#' \describe{
#' \item{country}{country name}
#' \item{date}{date}
#' \item{type}{An indicator for the type of cases (confirmed, death, recovered)}
#' \item{cases}{Number of cases on given date.}}
#' @source coronavirus package in R
#'
#' @examples
#' data(sta326corona)
#' head(sta326corona)
#' summary(sta326corona)
"sta326corona"
globalVariables(c("country", "index2021", "sta326corona"))
#' load the corresponding data set given the index number
#'
#' load daily summary of the Coronavirus for the country associated with the index number 
#' @param index Student's index number with out AS
#' @return a list of assignment 1 questions
#' @importFrom utils globalVariables
#' @importFrom utils data
#' @export
get_assignment_questions <- function(index){
  set.seed(index)
  
  #Set 1
  Q1 <- "Obtain summary statistics for each variable and interpretresults."
  
  #Set 2
  Q2 <- "Draw a timeseries plot using the qplot function to visualize changes in Covid-19 confirmed cases over time."
  
  Q3 <- "Draw a timeseries plot using the qplot function to visualize changes in Covid-19 death casesover time."
  
  Q4 <- "Draw a time series plot using the qplotfunction to visualize changes in Covid-19 recovered cases over time."
  
  #Set 3
  
  Q5 <- "Draw a scatterplot using the qplot to visualize therelationship between Covid-19 confirmed cases and deaths. Compute the corresponding Pearson’s correlation coefficient."
  
  Q6 <- "Draw a scatterplot using the qplot to visualize therelationship between Covid-19 confirmed cases and recovered cases. Compute the corresponding Pearson’s correlation coefficient."
  
  Q7 <- "Draw a scatterplot using the qplot to visualize therelationship between Covid-19 death cases and recovered cases. Compute the corresponding Pearson’s correlation coefficient."
  
  #Set 4
  
  Q8 <- "In the year 2021, which date has the lowest number of confirmed cases?"
  
  Q9 <- "In the year 2021, which date has the lowest number of death cases?"
  
  Q10 <- "In the year 2021, which date has the lowest number of recoveredc ases?"
  
  Q81 <- "In the year 2021, which date has the highest number of confirmed cases?"
  
  Q91 <- "In the year 2021, which date has the highest number of death cases?"
  
  Q101 <- "In the year 2021, which date has the highest number of recoveredc ases?"
  
  #Set 5
  Q11 <- "In 2021, which dates are almost the same in number of Covid-19 deaths?"
  
  Q12 <- "In 2021, which dates are almost the same in number of Covid-19 confirmed cases?"
    
  Q13 <- "In 2021, which dates are almost the same in number of Covid-19 recovered cases?"
    
  #Set 6
    
  Q14 <- "Create a new dataframe called “newcovid”, thatcontains rows of only confirmed cases."
  
  Q15 <- "Create a new dataframe called “newcovid”, thatcontains rows of only death cases."
  
  Q16 <- "Create a new dataframe called “newcovid”, thatcontains rows of only recovered cases."
  
  set1 <- Q1
  set2 <- c(Q2, Q3, Q4)
  set3 <- c(Q5, Q6, Q7)
  set4 <- c(Q8, Q9, Q10, Q81, Q91, Q101)
  set5 <- c(Q11, Q12, Q13)
  set6 <- c(Q14, Q15, Q16)
  
  set.seed(index)
  a1 = set1
  a2 = sample(set2, 1)
  a3 = sample(set3, 1)
  a4 = sample(set4, 1)
  a5 = sample(set5, 1)
  a6 = sample(set6, 1)
  
  questions <- list(
    q1 = a1,
    q2 = a2,
    q3 = a3,
    q4 = a4,
    q5 = a5,
    q6 = a6
  )
  
  questions
  
}
#'example
#'library(sta3262)
#'get_assignment_questions(2018000) 



<!-- README.md is generated from README.Rmd. Please edit that file -->

# sta3262

<!-- badges: start -->
<!-- badges: end -->

Assignments for STA 326 2.0 Programming and Data Analysis

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("thiyangt/sta3262")
```

## Assignment 1: Help

This is a basic example which shows you how to solve a common problem:

### Assignment 1: data

``` r
library(sta3262)
## basic example code
mydata <- get_assignment_data("AS2018000")
head(mydata)
#>          country       date      type cases
#> 242065 Sri Lanka 2020-01-22 confirmed     0
#> 242066 Sri Lanka 2020-01-22     death     0
#> 242067 Sri Lanka 2020-01-22 recovered     0
#> 242068 Sri Lanka 2020-01-23 confirmed     0
#> 242069 Sri Lanka 2020-01-23     death     0
#> 242070 Sri Lanka 2020-01-23 recovered     0
```

### Assignment 1: data

``` r
get_assignment_questions("2018000") # do no include "AS"
#> $q1
#> [1] "Obtain summary statistics for each variable and interpretresults."
#> 
#> $q2
#> [1] "Draw a timeseries plot using the qplot function to visualize changes in Covid-19 death casesover time."
#> 
#> $q3
#> [1] "Draw a scatterplot using the qplot to visualize therelationship between Covid-19 confirmed cases and deaths. Compute the corresponding Pearson’s correlation coefficient."
#> 
#> $q4
#> [1] "In the year 2021, which date has the lowest number of confirmed cases?"
#> 
#> $q5
#> [1] "In 2021, which dates are almost the in number of Covid-19 confirmed cases?"
#> 
#> $q6
#> [1] "Create a new dataframe called “newcovid”, thatcontains rows of only confirmed cases."
```

## Data Description

``` r
summary(mydata)
#>    country               date                type               cases        
#>  Length:1476        Min.   :2020-01-22   Length:1476        Min.   :   -2.0  
#>  Class :character   1st Qu.:2020-05-23   Class :character   1st Qu.:    0.0  
#>  Mode  :character   Median :2020-09-23   Mode  :character   Median :    8.0  
#>                     Mean   :2020-09-23                      Mean   :  216.8  
#>                     3rd Qu.:2021-01-24                      3rd Qu.:  264.5  
#>                     Max.   :2021-05-27                      Max.   :11340.0
```

## Data Visualization

``` r
confirmed <- mydata[mydata$type=="confirmed", ]
library(ggplot2)
qplot(data=confirmed, y=cases, x=date, geom="line") + ylab("confirmed cases")
```

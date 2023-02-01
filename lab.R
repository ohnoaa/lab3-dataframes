### -------------------- Lab 3 --------------------
### This lab is designed to prepare you for PS3

## Create a vector of the number of points the Seahawks scored in the
## first (at least) 5 games
## Hint: google "Seahawks scores", or check the football database:
## http://www.footballdb.com/teams/nfl/seattle-seahawks/results
## here 'Final' displays scores
## Use an appropriate variable name for the scores
## 
## Hint: feel free to invent if you cannot figure this out
seahawks <- c(17, 7, 23, 48, 32)
seahawks

## Create a vector of the number of points the opponent
## scored against Seahawks in the first 5 games
## use an appropriate variable name
opponents <- c(16, 27, 27, 45, 39)
opponents

## Combine your two vectors into a dataframe
football <- data.frame(seahawks, opponents)
football

## Create a new column "diff" that is the difference in points
## (in favor of Hawks)
##Dollar-sign method:
football$diff <- seahawks - opponents
football

## Create a new column "won" which is TRUE if the Seahawks won,
## ie if Seahawks scored more than the opponent scored against them
football$won <- football$diff > 0
football

## Create a vector of the opponents name (such as "Denver Broncos")
opponentsname <- c("Denver Broncos", "San Francisco 49ers", "Atlanta Falcons", "Detroit Lions", "New Orleans Saints")
opponentsname

## Add the vector of opponents into the data frame
football$"opponents names" <- opponentsname
football

## Compute the average score of Seahawks
mean(football$seahawks)


## Compute how many games did Seahawks won
## (use the 'won' variable to compute it)
## Sum function only returns the true statements
sum(football$won)

## What was the largest difference in scores (in favor of Seahawks)?
## Max function is the greatest value
max(football$diff)

## How many different opponents did Seahawks have in these games?
## Hint: use `unique()` and `length()
## By putting a question mark before the function, RStudio will give you more information
## Length function tells you how many vectors
length(unique(football$`opponents names`))

## Print the variable names in your data frame
names(football)

## Write a loop over all variables in your data frame
## print the variable name inside the loop
## Make sure to do the names, not just football
for (each in names(football)) {
  cat(each, "\n")
}

## Write a loop over all variables in your data frame
## print the variable name inside the loop,
## and true/false, depending if the variable is numeric
## check out 'is.numeric()'
for (each in names(football)) {
  cat(each, "\n")
  if (is.numeric(football[[each]])) {
    cat(is.numeric(football[[each]]), "The variable is numeric:", football[[each]], "\n")
  }
}

## Write a loop over all variables in your data frame
## print the variable name inside the loop,
## and the average value of the variable
## if the variable is numeric
for (each in names(football)) {
  cat(each, "\n")
  if (is.numeric(football[[each]])) {
    cat(mean(football[[each]]), "\n")
  }
}

##
## HR data
## You are working in HR for a large firm with 100 employees.
## You are analyzing their salaries.

## Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee
## 100")
## Hint: use 'paste()` or `str_c`


## Create a random vector of their 2021 salaries.
## Hint: you may use the runif function to create uniform random numbers,
## e.g. 'runif(100, 60, 120)' creates 100 random numbers between 60 and 120


## Create a random vector of 2022 salaries that are typically
## higher than the 2014 salaires (use runif again).
## For instance, if you create random numbers between 65 and 130, then 2022
## salaries tend to be larger than 2021 salaries.


## Create a data.frame 'salaries' by combining the vectors you just made


## Create a column 'raise' that stores the size of the
## raise between 2021 and 2022


## Retrieve values from your data frame to answer the following questions:
##
## What was the 2015 salary of employee 57


## Now round the answer down to two digits after comma
## check out 'round()' function


## How many employees got a raise?


## What was the value of the highest raise?
## Round the number to two digits!


## What was the name of the employee who recieved the highest raise?


## What was the average salary increase?
## Round the number!


## For people who did not get a raise, how much money did they lose?
## Round the number!

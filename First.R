#First Program in 

#Add two numbers
2+2

#

set.seed(10)
x <- rpois(1, lambda=8)
if (x >= 5) {
  "x is greater than or equals 5"
} else {
  "x is smaller than 5"
}

#return Statement in R
check <- function(x) {
  if (x > 0) {
    result <- "Positive"
  } else if (x < 0) {
    result <- "Negative"
  } else {
    result <- "Zero"
  }
  return(result)
}

#https://www.tutorialspoint.com/r/r_functions.htm

#***Built-in Function***

# Create a sequence of numbers from 32 to 44.
print(seq(32,44))

# Find mean of numbers from 25 to 82.
print(mean(25:82))

# Find sum of numbers frm 41 to 68.
print(sum(41:68))

#***User-defined Function***
# Create a function to print squares of numbers in sequence.
new.function <- function(a) {
  for(i in 1:a) {
    b <- i^2
    print(b)
  }
}

#***Calling a Function
# Create a function to print squares of numbers in sequence.
call_fucntion <- function(a) {
  for(i in 1:a) {
    b <- i^2
    print(b)
  }
}
# Call the function call_fucntion supplying 10 as an argument.
call_fucntion(10)

#***Calling a Function without an Argument
# Create a function without an argument.
new.function <- function() {
  for(i in 1:5) {
    print(i^2)
  }
}	

# Call the function without supplying an argument.
new.function()

#***Calling a Function with Argument Values (by position and by name)
# Create a function with arguments.
new.function <- function(a,b,c) {
  result <- a * b + c
  print(result)
}

# Call the function by position of arguments.
new.function(5,3,11)

# Call the function by names of the arguments.
new.function(a = 11, b = 5, c = 3)

#***Calling a Function with Default Argument
# Create a function with arguments.
new.function <- function(a = 3, b = 6) {
  result <- a * b
  print(result)
}

# Call the function without giving any argument.
new.function()

# Call the function with giving new values of the argument.
new.function(9,5)

#***Lazy Evaluation of Function***
#Exp1 Create a function with arguments.
new.function <- function(a, b) {
  print(a^2)
  print(a)
  print(b)
}

# Evaluate the function without supplying one of the arguments.
new.function(6)

#Exp2

plop <- function(a, b){
  a * 10
}
plop(4)

#Exp3
if (TRUE){
  12
} else {
  no_variable
}
#Ex4
if (FALSE){
  no_variable
} else {
  12
}
#Ex5
if (TRUE || no_variable) {
  12
}

#Ex6
mean_of_that <- function(x, mean_of = mean(x)){
  # Of course I could use na.rm, it's an example ;)
  x <- x[!is.na(x)]
  print(x)
  cat("The mean of x is", mean_of)
}
mean_of_that(c(1,2,3,4,NA))






# Create a function with arguments.
new.function <- function(a = 3, b = 6) {
  result <- a * b
  print(result)
}

# Call the function without giving any argument.
new.function()

# Call the function with giving new values of the argument.
new.function(9,5)

#***R In Built Functions*****
#Examples
iter <- stats::rpois(1, lambda = 10)
## print an informative message
cat("iteration = ", iter <- iter + 1, "\n")

## 'fill' and label lines:
cat(paste(letters, 100* 1:26), fill = TRUE, labels = paste0("{", 1:10, "}:"))

cat("a","b","c")
cat("a","b","c",fill=TRUE)
cat("a","b","c","\n")#A new line is now added. You can also explicitly add a new line
cat("a","b","c",fill=1)
cat("a","b","c",sep=",",fill=TRUE)
cat("The zero occurs at", 2*pi, "radians.", "\n")

for (i in 1:5) {
  print(i + 1)
}
#> [1] 2
#> [1] 3
#> [1] 4
#> [1] 5
#> [1] 6

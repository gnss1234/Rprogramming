####----R vector is the basic data structure, which plays an essential role in R programming. So, let’s start with our tutorial---
#https://data-flair.training/blogs/r-vector/
##Single Element Vector------
# Atomic vector of type character.
print("abc");

# Atomic vector of type double.
print(12.5)

# Atomic vector of type integer.
print(63L)

# Atomic vector of type logical.
print(TRUE)

# Atomic vector of type complex.
print(2+3i)

# Atomic vector of type raw.
print(charToRaw('hello'))

##Multiple Elements Vector-------
#Using colon operator with numeric data--
# Creating a sequence from 5 to 13.
v <- 5:13
print(v)

# Creating a sequence from 6.6 to 12.6.
v <- 6.6:12.6
print(v)

# If the final element specified does not belong to the sequence then it is discarded.
v <- 3.8:11.4
print(v)

#Using sequence (Seq.) operator--
## Create vector with elements from 5 to 9 incrementing by 0.4.
print(seq(5, 9, by = 0.4))
seq(2,4, by = 0.4)
seq(1,4, length.out = 5)
# The logical and numeric values are converted to characters.
s <- c('apple','red',5,TRUE)
print(s)

# VECTORS EXERCISE - I -Students Have to Performed , given in PPT

###----------How to Access Elements of R Vectors?---------------
##Indexing with Integer Vector
x
x[3] #indexing with vector

##Indexing with Character Vector
x <- c("One" = 1, "Two" = 2, "Three" = 3)
x["Two"]

##Indexing with Logic Vector
a <- c(1,2,3,4)
a[c(TRUE, FALSE, TRUE, FALSE)]

###
# Accessing vector elements using position.
t <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat")
u <- t[c(2,3,6)]
print(u)

# Accessing vector elements using logical indexing.
v <- t[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE)]
print(v)

# Accessing vector elements using negative indexing.
x <- t[c(-2,-5)]
print(x)

# Accessing vector elements using 0/1 indexing.
y <- t[c(0,0,0,0,0,0,1)]
print(y)

##------Vector Manipulation/Operations in R Vector------
#Combining Vector in R-----
n = c(1, 2, 3, 4) 
s = c("Hadoop", "Spark", "HIVE", "Flink")
c(n,s)

#Arithmetic Operations on Vectors in R-----
# Create two vectors.
v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11,0,8,1,2)

# Vector addition.
add.result <- v1+v2
print(add.result)

# Vector subtraction.
sub.result <- v1-v2
print(sub.result)

# Vector multiplication.
multi.result <- v1*v2
print(multi.result)

# Vector division.
divi.result <- v1/v2
print(divi.result)
#Remainder Operation
v1 %%v2 

##Logical Index Vector in R----
S = c("bb", "cc")
L = c(TRUE, TRUE) #Defining our Logical Vector
S[L] #This will return elements of vector S that corrospond to logic vector L

##Numeric Index----
x <- c("aa", "bb", "cc", "dd", "ee") #Creating our vector
x[3]
x[-2] #Using Negative Index
x[15] #Using an out-of-range index

##Duplicate Index----
s = c("aa", "bb", "cc", "dd", "ee")
s[c(2,3,3)]

##Range Indexes----
s = c("aa", "bb", "cc", "dd", "ee")
s[1:3]
##Out-of-order Indexes---
s [ c (2, 1, 3) ]

##Named Vectors Members----

#We first create our vector of characters:
  v = c("Hadoop", "Spark")
  v
#Then, we name the first vector member as “First” and the second member as “Second”.
names(v) = c("First", "Second")
v
#We retrieve the first member by its name as follows:
  v["First"]
#We can also reverse the order using the character string index vector:
  v[c("Second", "First")]

#-----Vector Element Recycling----
  
  v1 <- c(3,8,4,5,0,11)
  v2 <- c(4,11)
  # V2 becomes c(4,11,4,11,4,11)
  
  add.result <- v1+v2
  print(add.result)
  
  sub.result <- v1-v2
  print(sub.result)
##-------Vector Element Sorting------
  
  v <- c(3,8,4,5,0,11, -9, 304)
  
  # Sort the elements of the vector.
  sort.result <- sort(v)
  print(sort.result)
  
  # Sort the elements in the reverse order.
  revsort.result <- sort(v, decreasing = TRUE)
  print(revsort.result)
  
  # Sorting character vectors.
  v <- c("Red","Blue","yellow","violet")
  sort.result <- sort(v)
  print(sort.result)
  
  # Sorting character vectors in reverse order.
  revsort.result <- sort(v, decreasing = TRUE)
  print(revsort.result)
  
  # VECTORS EXERCISE - II -Students Have to Performed , given in PPT
  
 ## 1.	The numbers below are the ﬁrst ten days of rainfall amounts in 1996. Read them in to a vector using the c() function 0.1, 0.6, 33.8, 1.9, 9.6, 4.3, 33.7, 0.3, 0.0, 0.1
  #2.	Inspect Table and answer the following questions:
  #  I.	What was the mean rainfall, how about the standard deviation?
  #  II.	Calculate the cumulative rainfall (’running total’) over these ten days. Conﬁrm that the last value of the vector  that  this produces is equal to the total sum of the rainfall.
  #III.	Which day saw the highest rainfall? Hint which.max()
 # 3.		Compute the problem sum ((x - mean(x)) ^2). Using Vector
 # 4.	The weights of five people before and after a diet programme are given in the table.
 #  Read the `before' and `after' values into two different vectors called before and after. Use R to evaluate the amount of weight lost for each participant. What is the average amount of weight lost?


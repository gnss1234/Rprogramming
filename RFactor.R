#R Factor (For Education purpose )

#How to Create an R Factor-----

directions <- c("North", "North", "West", "South")
factor(directions)
factor(directions, levels= c("North", "East", "South", "West"))

factor(directions, levels= c("North", "East", "South", "West"), labels=c("N", "E", "S", "W"))

factor(directions, levels= c("North", "East", "South", "West"), exclude = "North")

#How to Generate Factor Level in R--

BigData <- gl(3, 2, labels = c("Hadoop", "Spark","Flink"))
print(BigData)

#Accessing Components of Factor in R
compass <- c("East","West","East","North")
data <- factor(compass)
data

data[4] #Accessing the 4th element
data[c(2,3)] #Accessing the 2nd & 3rd element
data[-1] #Accessing everything except 1st element
data[c(TRUE, FALSE, TRUE, TRUE)] #Accessing using Logical Vector

#How to Modify an R Factor?
print(data)
data[2] <- "North" #Modifying 2nd element
data[3] <- "South" #Cannot Modify Factor with an Element outside its scope

#
print(data) 
levels(data) <- c(levels(data), "South") 
data[3] <- "South" 
print(data)

#Factor Functions in R--
f_directions <- factor(directions)
is.factor(f_directions) 
as.factor(directions) 
is.ordered(f_directions) 
as.ordered(f_directions) 

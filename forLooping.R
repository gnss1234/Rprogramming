# For Loop
#Syntax
#for (val in vector)  {
# Statement 1
#Statement 2
#  ...
# Statement N
#}


#Ex1
values <- c(1,2,3,4,5) 
for(id in 5){ 
  print(id)
}

#Ex2

vtr <- c(7,19,25,65, 45)
for( i in vtr) {
  print(i)
}

#Ex3

countries <- c('India', 'U K', 'Japan', 'U S A', 'Australia', 'China')

for (str in countries) {
  print(cat("Countries are:", str))
}
print("----This is Coming from Outside the For Loop---")

# Ex4 Here Countries will not printed 
countries <- c('India', 'U K', 'Japan', 'U S A', 'Australia', 'China')

for (str in countries) {
  print(str)
}
print("----This is Coming from Outside the For Loop---")

#Ex5

# For Loop Example

numbers <- c(1:10)

for (num in numbers) {
  print(9 * num)
}
print("---- This is Coming from Outside the For Loop ---")


# Creating an empty list  
list <- c()  
# Creating a for statement to populate the list  
for (i in seq(1, 5, by=1)) {  
  list[[i]] <- i*i  
}  
print(list)

# Creating a matrix  
mat <- matrix(data = seq(10, 21, by=1), nrow = 6, ncol =2)  
# Creating the loop with r and c to iterate over the matrix  
for (r in 1:nrow(mat))     
  for (c in 1:ncol(mat))    
    print(paste("mat[", r, ",",c, "]=", mat[r,c]))   
print(mat)

# Create a list with three vectors  
fruit <- list(Basket = c('Apple', 'Orange',"Guava", 'Pinapple', 'Banana','Grapes'),   
              Money = c(10, 12, 15), purchase = TRUE)  
for (p  in fruit)   
{   
  print(p)  
}  

#count the number of even numbers in a vector.

x <- c(2,5,3,9,8,11,6,44,43,47,67,95,33,65,12,45,12)  
count <- 0  
for (val in x) {  
  if(val %% 2 == 0)  count = count+1  
}  
print(count)  

#Nested Loop in R

#Ex1
# R nested for loop

for(i in 1:5)
{
  for(j in 1:2)
  {
    print(i*j);
  }
}

#exp2
mat <- matrix(1:10, 2)
for (id1 in seq(nrow(mat))) {
  for (id2 in seq(ncol(mat))) {
    print(mat[id1, id2])
  }
}

for(i in 2:10) {
  print(i)
}
####------------------R Array--------------------####

#How to Create Array in R---
# Create two vectors of different lengths.
vector1 <- c(2,9,3)
vector2 <- c(10,16,17,13,11,15)
# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2))
print(result)

##Naming Columns And Rows----
# Create two vectors of different lengths.
vector1 <- c(2,9,6)
vector2 <- c(10,15,13,16,11,12)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")
# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames = list(row.names,column.names,matrix.names))
print(result)

#Accessing R Array Elements---


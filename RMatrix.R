####------------------R matrices------------------####

mat <- matrix (
  c(2 , 4, 3, 1, 5, 7), 
  nrow =2,                   # no. of rows
  ncol =3,                   # no. of columns
  byrow = TRUE)
print(mat)

#
mat[2, 3]
mat[2, ]
mat[ ,3]

##Creating R matrix based on the variations in the attributes----
arrang_row <- matrix(c(4:15), nrow = 4, byrow = TRUE) #Creating our matrix and arranging it by row
print(arrang_row) #Printing our arranged matrix

#Creating R matrix by arranging elements sequentially by column---
arrang_col <- matrix(c(4:15), nrow = 4, byrow = FALSE)       #Creating our matrix and arranging it by column
print(arrang_col)    #Printing our arranged matrix 

#Defining names of columns and rows in a matrix

rows = c("CSE", "IT", "ECE", "EEE")     #Creating our character vector of row names
cols = c("Red", "Green", "Blue")          #Creating our character vector of column names
mat <- matrix(c(4:15), nrow = 4, byrow = TRUE, dimnames = list(rows, cols) )   
#creating our matrix mat and assigning our vectors to dimnames
print(mat)                    #Printing our matrix

#$####Accessing Elements of a Matrix--------
# Define the column and row names.
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")

# Create the matrix.
P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))

# Access the element at 3rd column and 1st row.
print(P[1,3])

# Access the element at 2nd column and 4th row.
print(P[4,2])

# Access only the  2nd row.
print(P[2,])

# Access only the 3rd column.
print(P[,3])

##How to Modify Matrix in R?------
mat #Displaying values of matrix mat
mat[2,3] <- 20 #Assigning value 20 to the element at 2nd row and 3rd column
mat #Displaying our modified matrix.

#Use of Relation Operators

mat[mat == 4] <- 0 #Replacing elements that are equal to 4 with 0
mat #Displaying our modified matrix ‘mat’

mat[mat < 10] <- 0 #Replacing elements that are less with 10 with 0
mat #Displaying modified matrix ‘mat’

#Addition of Rows and Columns

new_mat = matrix(1:12, nrow = 3, ncol = 3)
new_mat
cbind(new_mat, c(1,2,3))
rbind(new_mat, c(1,2,3))	
dim(new_mat) <- c(1,9)
new_mat

##Matrix Addition & Subtraction
# Create two 2x3 matrices.
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
print(matrix1)

matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
print(matrix2)

# Add the matrices.
result <- matrix1 + matrix2
cat("Result of addition","\n")
print(result)

# Subtract the matrices
result <- matrix1 - matrix2
cat("Result of subtraction","\n")
print(result)

##Matrix Multiplication & Division
# Create two 2x3 matrices.
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
print(matrix1)

matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
print(matrix2)

# Multiply the matrices.
result <- matrix1 * matrix2
cat("Result of multiplication","\n")
print(result)

# Divide the matrices
result <- matrix1 / matrix2
cat("Result of division","\n")
print(result)

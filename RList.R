## --------------What Is List in R--------------
## R  Example
vec <- c(1,2,3)
char_vec <- c("Hadoop", "Spark", "Flink", "Mahout")
logic_vec <- c(TRUE, FALSE, TRUE, FALSE)
out_list <- list(vec, char_vec, logic_vec)
out_list

#How to Create Lists in R Programming?------
#example:
  list_data <- list("Red", "White", c(1,2,3), TRUE, 22.4)
  print(list_data)

  #Example
  x <- list("a" = 2.5, "b" = TRUE, "c" = 1:3)
  str(x)
  
  x1 <- list(2.5,TRUE,1:3)
  x1
  
#Creating R List using Vectors----
  # Creating three vectors
  vect.a <- c(10.25, 20.45, 30.75, 40.85)
  vect.b <- c(25, 50, 75, 100, 125)
  vect.c <- c("India", "China", "Japan", "Russia", "USA") 
  
  # Creating list 
  list.data <- list(vect.a, vect.b, vect.c )
  print(list.data)

#Creating R List using Matrix, Vectors----
    # Create R List
  vect.a <- c(10.25, 30.75, 20.45, 40.85)
  vect.b <- c("India", "Japan", "Russia", "China", "USA") 
  
  list.data <- list(vect.a, vect.b )
  print(list.data)
  
  A <- matrix(c(1:12), nrow = 3)
  vect.c <- c(50, 75, 25, 100, 125)
  
  list.mixed <- list(A, list.data, vect.c )
  print(list.mixed)

## Create Named List in R Programming
  
  list.data <- list("Company" = "Tutorial Gateway", "Flag" = TRUE, "prod" = c(10, 20, 30), "val" = 95, "sale" = 105.61)
  print(list.data)

#Creating Named List in R using names function-
  # Create Named List in R Programming
  
  vect.x <- c(10, 30, 50, 70)
  vect.y <- c("India", "Japan", "UK", "Russia", "China", "USA") 
  
  list.a <- list(vect.x, vect.y )
  # Assigning Names
  names(list.a) <- c("Num_Vector", "Country") 
  print(list.a)
  
  matrix.A <- matrix(c(1:12), 3, 4)
  vect.z <- c(55, 75, 25, 105, 125)
  
  list.mixed <- list(matrix.A, list.a, vect.z, "Cooltechi Tricks")
  names(list.mixed) <- c("Num_Matrix", "Inner_List", "Rand_vector", "Company")
  print(list.mixed)
  
#How to Name List Elements in R Language?----
  #Example:
  # Create a list containing a vector, a matrix and a list.
  list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),
                    list("green",12.3))
  
  # Give names to the elements in the list.
  names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")
  
  # Show the list.
  print(list_data)

#How to Access R List Elements?---- 
  # Create a list containing a vector, a matrix and a list.
  list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),
                    list("green",12.3))
  
  # Give names to the elements in the list.
  names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")
  
  # Access the first element of the list.
  print(list_data[1])
  
  # Access the thrid element. As it is also a list, all its elements will be printed.
  print(list_data[3])
  
  # Access the list element using the name of the element.
  print(list_data$A_Matrix)

#How to Manipulate List elements in R Programming?---
  # Create a list containing a vector, a matrix and a list.
  list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),
                    list("green",12.3))
  
  # Give names to the elements in the list.
  names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")
  
  # Add element at the end of the list.
  list_data[4] <- "New element"
  print(list_data[4])
  
  # Remove the last element.
  list_data[4] <- NULL
  
  # Print the 4th Element.
  print(list_data[4])
  
  # Update the 3rd Element.
  list_data[3] <- "updated element"
  print(list_data[3])
  
#How to Merge Lists in R Programming language?----
   # Create two lists.
  list1 <- list(1,2,3)
  list2 <- list("Sun","Mon","Tue")
  
  # Merge the two lists.
  merged.list <- c(list1,list2)
  
  # Print the merged list.
  print(merged.list)
  
#How to Convert R List to Vector?----
  # Create lists.
  list1 <- list(1:5)
  print(list1)
  
  list2 <-list(10:14)
  print(list2)
  
  # Convert the lists to vectors.
  v1 <- unlist(list1)
  v2 <- unlist(list2)
  
  print(v1)
  print(v2)
  
  # Now add the vectors
  result <- v1+v2
  print(result)
  
#How to Generate Lists in R?-----
  #example
  -5:5       #Generating a list of numbers from -5 to 5
  c(1,2,3) + 4
#R Predefined Lists----
  letters
  LETTERS
  month.abb
  month.name
  c("April", 4)
  typeof("4")
  # Create R List
  
  # Creating three vectors
  vect.a <- c(10.25, 20.45, 30.75, 40.85)
  vect.b <- c(25, 50, 75, 100, 125)
  vect.c <- c("India", "China", "Japan", "Russia", "USA") 
  
  # Creating list 
  list.data <- list(vect.a, vect.b, vect.c )
  print(list.data)
  
###Do All Exercises
  #If: p <- c(2,7,8), q <- c("A", "B", "C") and x <- list(p, q), then what is the value of x[2]?
 # If: w <- c(2, 7, 8) v <- c("A", "B", "C") x <- list(w, v), then which R sta tement will replace "A" in x with "K".
  #If a <- list ("x"=5, "y"=10, "z"=15), which R statement will give the sum of all elements in a?
  #  If Newlist <- list(a=1:10, b="Good morning", c="Hi"), write an R sta tement that will add 1 to each element of the first vector in Newlist. 
  #If b <- list(a=1:10, c="Hello", d="AA"), write an R expression that will give all elements, except the second, of the first vector of b.
  #Let x <- list(a=5:10, c="Hello", d="AA"), write an R statement to add a new item z = "NewItem" to the list x.
  #Consider y <- list("a", "b", "c"), write an R statement that will assign new names "one", "two" and "three" to the elements of y.
  #If x <- list(y=1:10, t="Hello", f="TT", r=5:20), write an R statement that will give the length of vector r of x.
  #Let string <- "Grand Opening", write an R statement to split this string into two and return the following output: 
  #Let: y <- list ("a", "b", "c") and q <- list ("A", "B", "C", "a", "b", "c"). Write an R statement that will return all elements of q that are not in y.
    
  
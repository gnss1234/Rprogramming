#This used for Student Class purpose 
#R Data Frame 
#Example

int_vec <- c(1,2,3) 
char_vec <- c("a", "b", "c")
bool_vec <- c(TRUE, TRUE, FALSE)
data_frame <- data.frame(int_vec, char_vec, 
                         bool_vec)
#R Data Frame Operations------

# Create Data Frame
employee_data <- data.frame(
  employee_id = c (1:5),
  employee_name = c("Dr.N.Lal"," Dr. S.Verma","Dr. A. Sharma","Dr. A.Senthil","Dr.Red"),
  sal = c(642.3,535.2,681.0,739.0,925.26),
  join_date = as.Date(c("2011-02-04", "2004-06-21", "2009-11-14", "2008-05-19","2012-03-25")),
  stringsAsFactors = FALSE)

print(employee_data)

#Extra Example
x <- data.frame("SN" = 1:2, "Age" = c(21,15), "Name" = c("Red","Zone"))
str(x)	# structure of x 'data.frame': 2 obs. of 3 variables:

x <- data.frame("SN" = 1:2, "Age" = c(21,15), "Name" = c("Red","Zone"), stringsAsFactors = FALSE)
str(x)	# now the third column is a character vector 

#Note: Many data input functions of R like, read.table(), read.csv(), read.delim(), read.fwf() also read data into a data frame.

#Access Components of a Data Frame
#We can use either [, [[ or $ operator to access columns of data frame.
                        x["Name"] 
                        x$Name
                        x[["Name"]]
                        x[[3]]
                        

#Get the Structure of the R Data Frame
  str(employee_data)

#Extract data from Data Frame
  output <- data.frame(employee_data$employee_name, employee_data$employee_id)
  print(output)

#Extract Specific columns:
  output <- data.frame(employee_data$employee_name, employee_data$employee_id)
  print(output)
#Extract first two rows
  output <- employee_data[1:2,]
  print(output) 
#Extract 1st and 2nd row with the 3rd and 4th column of the below data.
  result <- employee_data[c(1,2),c(3,4)]
  result

#4. Expand R Data Frame
  
# Add Row
  employee_new_data <- data.frame(
    employee_id = c (6:8),
    employee_name = c("Aman", "Piyush", "Aakash"),
    sal = c(523.0,721.3,622.8),
    join_date = as.Date(c("2015-06-22","2016-04-30","2011-03-17")),
    stringsAsFactors = FALSE
  )
  
  employee_out_data <- rbind(employee_data,employee_new_data)
  employee_out_data 

  #Add the “dept” column
  employee_data$dept <- c("IT","Finance","Operations","HR","Administration")
  out <- employee_data
  print(out)
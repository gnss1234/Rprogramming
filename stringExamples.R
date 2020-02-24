#Valid Strings
a <- 'Start and end with single quote'
print(a)

b <- "Start and end with double quotes"
print(b)

c <- "single quote ' in between double quotes"
print(c)

d <- 'Double quotes " in between single quote'
print(d)

# Invalid Strings
e <- 'Mixed quotes" 
print(e)

f <- 'Single quote ' inside single quote'
print(f)

g <- "Double quotes "" inside double quotes"
print(g)

g <- "Double quotes '' inside double quotes"
print(g)
#String Manipulation


bl<-6
bl2<-"hello"
cat(bl,bl2)

a <- "Hello"
b <- "How"
c <- "are you? "

print(paste(a,b,c))

print(paste(a,b,c, sep = "-"))

print(paste(a,b,c, sep = "", collapse = ""))

#format()

# Total number of digits displayed. Last digit rounded off.
result <- format(23.123456789, digits = 9)
print(result)

# Display numbers in scientific notation.
result <- format(c(6, 13.14521), scientific = TRUE)
print(result)

# The minimum number of digits to the right of the decimal point.
result <- format(23.47, nsmall = 5)
print(result)

# Format treats everything as a string.
result <- format(6)
print(result)

# Numbers are padded with blank in the beginning for width.
result <- format(13.7, width = 6)
print(result)

# Left justify strings.
result <- format("Hello", width = 8, justify = "l")
print(result)

# Justfy string with center.
result <- format("Hello", width = 8, justify = "c")
print(result)





# fill = 30
cat("Loooooooooong strings ", "can be displayed ", "in a nice format", 
    "by using the 'fill' argument",fill = 1)
#> Loooooooooong strings 
#> can be displayed 
#> in a nice format 
#> by using the 'fill' argument


# paste together string a & b
paste(a, b)                      
## [1] "learning to create character strings"

# paste character and number strings (converts numbers to character class)
paste("The life of", pi)           
## [1] "The life of 3.14159265358979"

# paste multiple strings
paste("I", "love", "R")            
## [1] "I love R"

# paste multiple strings with a separating character
paste("I", "love", "R", sep = "-")  
## [1] "I-love-R"

# use paste0() to paste without spaces btwn characters
paste0("I", "love", "R")            
## [1] "IloveR"

# paste objects with different lengths
paste("R", 1:5, sep = " v1.")       
## [1] "R v1.1" "R v1.2" "R v1.3" "R v1.4" "R v1.5"


x <- "learning to print strings" 
# basic printing (similar to noquote)
print(x)                   
## learning to print strings

# combining character strings
print(x, "in R") 
print()
## learning to print strings in R

# basic printing of alphabet
cat(letters)             
## a b c d e f g h i j k l m n o p q r s t u v w x y z

# specify a seperator between the combined characters
cat(letters, sep = "-")  
## a-b-c-d-e-f-g-h-i-j-k-l-m-n-o-p-q-r-s-t-u-v-w-x-y-z

# collapse the space between the combine characters
cat(letters, sep = "")   
## abcdefghijklmnopqrstuvwxyz

x <- "Today I am learning how to print strings."
y <- "Tomorrow I plan to learn about textual analysis."
z <- "The day after I will take a break and drink a beer."

cat(x, y, z, fill = 0)
## Today I am learning how to print strings. Tomorrow I plan to learn about textual analysis. The day after I will take a break and drink a beer.

cat(x, y, z, fill = 5)
## Today I am learning how to print strings. 
## Tomorrow I plan to learn about textual analysis. 
## The day after I will take a break and drink a beer.

x <- "print strings"

# substitute a single string/variable
sprintf("Learning to %s in R", x)    
## [1] "Learning to print strings in R"

# substitute multiple strings/variables
y <- "in R"
sprintf("Learning to %s %s", x, y)   
## [1] "Learning to print strings in R"


hello<-function() {
  cat(paste("Hello, ",system("whoami",T),"!\n",sep="",collapse=""))
  today<-as.list(unlist(strsplit(system("date",T)," ")))
  names(today)<-c("weekday","month","day","time","timezone","year")
  return(today)
}
sample(2,2, replace=TRUE)
sample(.2,3, replace = TRUE)


for(i in c(1:5, 4:1))
  cat( paste0(strrep(" ", 5 - i), strrep("* ", i), "\n") )
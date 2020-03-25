# Total number of digits displayed. Last digit rounded off.
result <- format(23.123456789, digits = 9)
print(result)
# Display numbers in scientific notation.
result <- format(c(6, 13.14521, 10), scientific = TRUE)
print(result)

result1 <- format(c(6, 13.14521, 10), scientific = FALSE)
print(result1)
# The minimum number of digits to the right of the decimal point.
result2 <- format(23.47, nsmall = 5)
print(result2)

# Format treats everything as a string.
result3 <- format(6)
print(result3)
# Numbers are padded with blank in the beginning for width.
result4 <- format(13.7, width = 6)
print(result4)
# Left justify strings.
result5 <- format("Hello", width = 8, justify = "l")
print(result5)
# Justfy string with center.
result6 <- format("Hello", width = 8, justify = "c")
print(result6)
# Right justify strings.
result7 <- format("Hello", width = 8, justify = "r")
print(result7)

# default usage
format(13.7)
#> [1] "13.7"
# another example
format(13.12345678)
#> [1] "13.1“

# use of 'digits'
format(c(6.0, 13.1), digits = 2)
format(c(6.0, 13.1), digits = 3)
format(c(6.0, 13.100), digits = 1)
# No effect of number after increasing digit values 
format(c(6.0, 13.1), digits = 6)
#> [1] " 6" "13"

# use of 'digits' and 'nsmall'
format(c(6.0, 13.1), digits = 2, nsmall = 1)
format(c(6.0, 13.1), digits = 2, nsmall = 3)
format(c(6.0, 13.1), digits = 2, nsmall = 10)
#> [1] " 6.0" "13.1"

######By default, format() pads the strings with spaces so that they all have the same length.

# justify options
format(c("A", "BB", "CCC"), width = 5, justify = "centre")
format(c("A", "BB", "CCC"), width = 3, justify = "centre")
#> [1] "  A  " " BB  " " CCC "
format(c("A", "BB", "CCC"), width = 5, justify = "left")
#> [1] "A    " "BB   " "CCC  "
format(c("A", "BB", "CCC"), width = 5, justify = "right")
#> [1] "    A" "   BB" "  CCC"
format(c("A", "BB", "CCC"), width = 5, justify = "none")
#> [1] "A"   "BB"  "CCC"
format(c("A", "BB", "CCC"), width = 5)
# digits
format(1/1:5, digits = 2)
format(1/1:5, digits = 2)
format(1/1:5, digits = 1)
format(1/1:5, digits = 2,nsmall=4)
format(1/1:5, digits = 4)
#> [1] "1.00" "0.50" "0.33" "0.25" "0.20"
# use of 'digits', widths and justify
format(format(1/1:5, digits = 2), width = 6, justify = "c")
#> [1] " 1.00 " " 0.50 " " 0.33 " " 0.25 " " 0.20 "


# big.mark ( Please see the difference when number of digits are changed)
format(123456789, big.mark = ",")
format(123456, big.mark = ",")
format(123456789123, big.mark = ",")
format(12345678912, big.mark = ",")
format(1234567891, big.mark = ",")


#
format(1000000000, big.mark = ",", big.interval = 3, scientific = FALSE)
format(1000000000, big.mark = ",", big.interval = 2, scientific = FALSE)
format(1000000000, big.mark = ",", big.interval = 2, scientific = TRUE)
format(1000000000, scientific = TRUE)
#####Counting number of characters in a string - nchar() function

result8 <- nchar("Count the number of characters")
print(result8)

###Example upper and lower 
# Changing to Upper case.
result9 <- toupper("Changing To Upper")
print(result9)

# Changing to lower case.
result10 <- tolower("Changing To Lower")
print(result10)

# Extract characters from 5th to 7th position.
result11 <- substring("Extract", 5, 7)
print(result11)

result12 <- substring("Extract the color", 4, 10)
print(result12)
#### Excercise 

# Some vectors of numbers
percent_change <- c(4, -1.91, 3.00, -5.002)
income <- c(72.19, 1030.18, 10291.93, 1189192.18)
p_values <- c(0.12, 0.98, 0.0000191, 0.00000000002)

# Format c(0.0011, 0.011, 1) with digits = 1
format(c(0.0011, 0.011, 1), digits = 1)

# Format c(1.0011, 2.011, 1) with digits = 1
format(c(1.0011, 2.011, 1), digits = 1)

# Format percent_change to one place after the decimal point
format(percent_change, digits = 2)

# Format income to whole numbers
format(income, digits = 2)

# Format p_values in fixed format
format(p_values, scientific = FALSE)
format(p_values, scientific = TRUE)

formatted_income <- format(income, digits = 2)
# Print formatted_income
formatted_income

# Call writeLines() on the formatted income
writeLines(formatted_income)

# Define trimmed_income
trimmed_income <- format(income, digits = 2, trim = TRUE)

# Call writeLines() on the trimmed_income
writeLines(trimmed_income)

# Define pretty_income
pretty_income <- format(income, digits = 2, big.mark = ",")
# Call writeLines() on the pretty_income
writeLines(pretty_income)

#### Excercise
# From the format() exercise
x <- c(0.0011, 0.011, 1)
y <- c(1.0011, 2.011, 1)

# formatC() on x with format = "f", digits = 1
formatC(x, format = "f", digits = 1)

# formatC() on y with format = "f", digits = 1
formatC(y, format = "f", digits = 1)

# Format percent_change to one place after the decimal point
formatC(percent_change, format = "f", digits = 1)

# percent_change with flag = "+"
formatC(percent_change, format = "f", digits = 1, flag = "+")

# Format p_values using format = "g" and digits = 2
formatC(p_values, format = "g", digits = 2)

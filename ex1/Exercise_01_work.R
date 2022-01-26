```
x = 1:10
x
#y
```
# Questions:

#   8. Describe the difference in output between sum and cumsum.

```
sum(x)
cumsum(x)
```
#     sum(x) here returns 55, the sum of all values in x, whereas cumsum(x)
#     cumsum(x) returns a list where each entry is the cumulative sum of each
#     previous value in x. For example, the first entry is the sum of the 0th
#     and 1st value, which is just the 1st value, 1. The second entry is the sum
#     of the 1st and 2nd values, which is 1+2=3.

#   9. Generate a sequence of even numbers from -6 to 6

```
seq(-6, 6, by=1)
```

#   10. Generate a sequence of values from -4.8 to -3.43 that is length 8
#       a.	What is the difference between values in this sequence?
#       b.	What is the sum of the exponential of this sequence?

```
y = seq(-4.8, -3.43, by=0.17125)
y

sum(exp(y))
```

#   11.	Calculate a second difference [a difference of differences] for the 
#       sequence 1:10 (show code)

```
z = 1:10
d = diff(z)
diff(d)
```

#   12.	Save the frog data file in a pipe-delimited format, 
#       (i.e. separated by ‘|’). 
#       Open the file up in a text editor and cut-and-paste the first few 
#       lines of the file into your Rscript file Load the data back up into 
#       R as ‘dat2’

```
# Directories: where frog data is, and output
fd = "/home/lucia/bu/year4/semester2/EE509/labs/EE509/data/Lab1_frogs.txt"
od = "/home/lucia/bu/year4/semester2/EE509/labs/EE509/ex1/my_frogs"

# Load frog data
dat = read.table(fd, header=TRUE)

# Save frog data in pipe-delimited format
write.table(dat, od, row.names=FALSE, sep="|") 

dat2 = read.table(od, header=TRUE, sep="|")
```

# "frogs"|"tadpoles"|"color"|"spots"
# 1.1|2.03698175474231|"red"|TRUE
# 1.3|2.87623092770957|"red"|FALSE
# 1.7|3.06252807802208|"red"|TRUE
# 1.8|3.70717972952171|"red"|FALSE

#   13.	Show just the spots data as characters

```
as.character(dat$spots)
```
#   14.	Show the 3rd through 8th rows of the 1st through 3rd columns

```
dat[3:8, 1:3]
```
#   15.	Show the first 3 rows

```
dat[1:3,]
```

#   16.	Create a character vector that contains the names of 4 super heros.

```
heros <- list("Iron Man", "Super Man", "Wonder Woman", "Wanda")  # TODO: check
```
#   17.	Show just the odd numbered rows in the frog data. Write this code for 
#       the GENERAL CASE (i.e. don’t just type c(1,3,5,…) but use functions that 
#       you learned in previous sections to set up the sequence.

```
odd_rows <- function(data) {
  
  index = list(1:dim((data))[1])
  
  for(i in 1:length(index)) {
    print(index[i])
    
#    if((index[i] %% 2) == 0) {
#      index[i] <- NULL
#    }
#  }
  
#  return(index)
}

odd_rows(dat)
```

#   19.	Plot the following lines from 0 to 3 (hint: define x as a sequence with 
#       a small step size). Make sure to make the resolution of x sufficiently 
#       small to see the curves
#       a.	ln(x)
#       b. $e^{-x}$
#   20.	Make a barplot of the median number of frogs grouped by whether they 
#       have spots or not.
#   21.	Plot a histogram of blue frogs
#   22.	Use apply to calculate the across-population standard deviations in the 
#       numbers of frogs and tadpoles

#   23.	Using the frog data:
#       a.	Fit a linear model of tadpoles as a function of frogs for just the 
#           RED individuals and report the summary data of the fit.  
#       b.	Make a scatter plot of this data that includes the regression line
#       c.	Fit a series of linear models of tadpoles as a function of frogs, 
#           spots, color, and their interaction terms. Build up from a simple 
#           model to the most complex model that is supported by the available 
#           data (i.e. all terms should be significant). Also test the full 
#           model that includes all variables and interaction terms.

#   24.	Write an if statement that makes a scatter plot of x if all the values 
#       are positive, and plots a histogram otherwise.

#   25.	Convert the more complicated graphing example at the end of  
#       “Classic Tests” into a function that will make the same plots for any 
#       data set. Show how you would call the function passing it just the 
#       subset of data where there are 5 or more tadpoles.

#   26.	Starting with a vector x = 1:10, write a for loop that adds 5 to each 
#       value in the vector. Note that it is permissible to assign an element 
#       in a vector to itself (e.g. x[i] = x[i] + 5)

```
x = 1:10

for(i in seq(1, length(x))) {
  x[i] = x[i] + 5
}
```

#   27.	Modify the logistic growth code to simulate discrete-time exponential 
#       growth and plot the output.







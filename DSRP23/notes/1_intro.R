# This is a comment
number <- 10 #set number to 10






# R Objects ####
ls() # print the names of all objects in our environment

number <- 5
decimal <-5

letter <- "a"
word <- "hello"

logic <- TRUE
logic2 <- T

#types of variables
#there are 3 main classes: numeric, character, and logical
class(number)
class(decimal) #numeric

class(letter)
class(word) # character

class(logic) # logical

## there is more variation in types
typeof(number)
typeof(decimal)

## we can change the type of an object
as.character(number)
as.integer(number)
as.integer(decimal)

## how to round
round(decimal)
round(22/7, digits = 5) # round 22/7 and digits is how many decimal places

ceiling(22/7) # ceilings always rounds up
floor(22/7) # always rounds down

# to learn more about a function do ?function
?round









# Object manipulation ####
name <- "Nikhil"
paste(name,"Chakravarthula") # concatenates character vectors, already adds the space

paste0(name,"C") # no space

paste(name, number) # we can join together characters and numbers

food <- "watermelon"
grepl("me",food) # True or false, looks for "me" in food(watermelon)
sub("me","you",food) # substitute "me" in watermelon for "you"
sub("me","",food) #removes "me" from food(watermelon)












# Vectors ####
# make a vector of numeric
vector1 <- c(2,4,6,8,10)
range_of_vals <- 1:5 # all integers from 1 to 5
seq(2,10,2)
seq(from = 2, to =10, by =2)

#make a vector of characters
vector2 <- c("a","b","c")
print(vector2)

paste("a","b","c")

# vector has its own strings whereas paste is all in one string


# make a vector of random numbers between 1 and 20
rand_vector <- c(1:20)
five_nums <- sample(rand_vector, 5)
print(five_nums) # choose 5 values from the vector numbers
sort(five_nums) # sorts in order
rev(five_nums) # reverse order


fifteen_nums <- sample(rand_vector, 15, replace = T) # after each draw, the element is put back into the set before the next draw and hence it could be picked again but if it is false, after each draw, that element can not be picked again
fifteen_nums <- sort(fifteen_nums)
length(fifteen_nums)# length of a vector
unique(fifteen_nums) # unique values in the vector (removes the duplicates)
length(unique(fifteen_nums)) # how many unique numbers we have
table(fifteen_nums) # shows in a table of how many of each value we have
fifteen_nums + 5 # adds 5 to every single value in the vector



nums1 <- c(1,2,3)
nums2 <- c(4,5,6)
nums1 + nums2

nums3 <- c(nums1,nums2)
nums3 + nums1
nums3 + nums1 + 1

sum(nums3) # adds all the values in num3 together

sum(nums3 + 1) # adds 1 to each value and then sums up all of the numbers
sum(nums3) + 1 # adds one after all of nums3 is added together


# Vector indexing
rand_vector <- rev(rand_vector)
rand_vector
rand_vector[1]
rand_vector[5]

rand_vector[c(1,2,3,4,5)]
rand_vector[1:5]
rand_vector[c(1,4,3,6,2)]

i <- 5
rand_vector[i]








# DataSets ####
?mtcars
mtcars # prints entire data set to console

View(mtcars) # view entire data set in a new tab

summary(mtcars) # gives us information about the spread of each variable like mean, 1st quartile, median, mean, max, 3rd quartile
str(mtcars) # preview the structure of the data set

names(mtcars) #names of variables
head(mtcars, 8) # mini version of data set, can tell it how many rows


## pull out individual variables as vectors 
mpg <- mtcars[,1] # blank means "all". All rows, first column
mtcars[2,2] # row by column. Value at second row, second column
mtcars[3,] # third row, all columns
mtcars[,1:3] # first three columns

mtcars$gear # pull out gear column
mtcars[,c("gear","mpg")] # pull out the gear and mpg columns

sum(mtcars$gear)




# Statistics #### 

# range
max(iris$Sepal.Length) - min(iris$Sepal.Length)

first5 <- iris$Sepal.Length[1:5]
# compute the variance
var(first5)

IQR(first5) # middle range, 50% of the data
quantile(first5, 0.25) # Q1.  (25 percent)
quantile(first5, 0.75) # Q3   (75 percent)


sl <- iris$Sepal.Length
lower <- mean(sl) - 3*sd(sl) #lower threshold outlier
upper <- mean(sl) + 3*sd(sl) #upper threshold outlier

# OR

quantile(sl, 0.25) -1.5 * IQR(sl) # lower threshold outlier
quantile(sl, 0.75) + 1.5 * IQR(sl) # upper threshold outlier



## Sub-setting vectors
first5 
first5 < 4.75 | first5 > 5 # the | symbol means or
first5[first5 < 4.75]


values <- c(first5,3,9)
upper 
lower

# removes outliers
values[values > lower & values < upper] # keep values lower than upper and higher than lower


getwd()
read.csv("data/super_hero_powers.csv")
library(dplyr)
glimpse(super_hero_powers) # or str(super_hero_powers)

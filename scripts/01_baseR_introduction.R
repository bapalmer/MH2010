###########################################################################
# MH2010 
# Practical - Introduction to RStudio
# 01_baseR_introduction.R
###########################################################################

# Basic code entry --------------------------------------------------------

# 1. Objects are created in R by assignment (x gets a value)
# This is achieved using the assignment operator '<-'
# Create an object x with a value of five



# 2. Atomic vectors contain one type of data
# Using '<-' and the concatenate function ('c()'), 
# create a numeric, character and logical vector

# Name them; all_numbers, all_characters, all_logical



# 3. Lists can contain more than one data type
# Using the 'list()' function, create an object;
# (i) that is a list containing different data types
# (ii) that is another list comprised of 'all_numbers',
#                                'all_chararacters' and
#                                'all_logical' created in part 2

# 4. It is possible to convert vectors from one type to another;
# as.character()
# as.numeric()
# Try the following:



# 5. We can use ':' to generate a continuous sequence
# For examples '1:10' will give us the numbers 1 through to 10
# Create a new object 'y'and assign a sequence of numbers to it
# e.g. 1:10 or c(1:3, 15, 6:9, 18:30)


# 6. Are the following vectors x and y the same?

x <- c(1:3, 15, 6:9, 18:30)
y <- c(1:3, '15', 6:9, 18:30)

# What happens when you try to sum them?

sum(x)
sum(y)

typeof(y) # Note the coersion to characters

# 7. We can do something similar with letters

first_10_letters <- letters[1:10]
first_10_letters

# or 

LETTERS[1:10]

# 8. You might want to get a random sample of letters
# The sample() function will randomly sample from the data
# Note the use of the arguement 'replace'


# 9. R can evaluate functions over entire vectors
# Try the following base R/base stats functions

min(x)
max(x)
mean(x)
median(x)
range(x)
sd(x)
sqrt(sd(x))
length(x)

# Indexing dataframes -----------------------------------------------------

a_data_frame <- data.frame(number = 1:10,
                           char = sample(letters, 10),
                           this_really_a_col_name = rep(c(TRUE, FALSE), 5))

# 1. Indexing data frames using '$'
# You can use $ for named columns
# e.g. a_data_frame$number
# To get the 1st column type;

a_data_frame$number

# To get just the first row of the 'number' column;

a_data_frame$number[2]

# and so on

# 2. Indexing data frames using '['
# To perform the same function you can type a_data_frame[row, column]

a_data_frame[1, 1]

# 3. It's possible to select multiple elements
# e.g. Rows 1-3 of the first column

a_data_frame[1:3, 1]

# or row one of the first 3 columns

a_data_frame[1, 1:3]

# or row one, three and five of the first 3 columns

a_data_frame[c(1, 3, 5), 2]

# 4. Selecting elements based on a condition

a_data_frame$number[a_data_frame$number > 7]


# Indexing lists ----------------------------------------------------------

# 1. Lets first build a list using the examples in the lecture slides

this_is_a_list  <- list(1, TRUE, 'Three')

all_numbers    <- c(1, 2, 0.5, -0.5, 3.4)

all_characters <- c('One', 'too', '3')

all_logical    <- c(TRUE, FALSE) 

this_is_also_a_list <- list(nums = all_numbers, 
                            chars = all_characters, 
                            logi = all_logical)

# Note that here we named the vectors that were used to build the list

# 2. Selection of brackets is important

typeof(this_is_a_list[3]) # Will just return 'list'

typeof(this_is_a_list[[3]]) # However using '[[' returns the element

# 3. this_is_also_a_list contains many elements
# We can access them by their named input using '$' as we did above

this_is_also_a_list$nums
this_is_also_a_list$nums[1]
typeof(this_is_also_a_list$nums[1])

# 4. Just to complicate things, compare these outputs...

this_is_also_a_list[1]
this_is_also_a_list[[1]]

sum(this_is_also_a_list[1])
sum(this_is_also_a_list[[1]])

this_is_also_a_list[[1]][4]
typeof(this_is_also_a_list[[1]][4])

# Here [[1]] identifies the first vector all_numbers
# [4] is then called to obtain the 4th element of this vector


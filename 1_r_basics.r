# assigning variables
age <- 25

# evaluating variabe
age

# retreiving non-existing variable
name

# creating a vector with multiple values
numbers <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)

# evaluating numbers
numbers


# selecting from vectors
numbers[7]

# slices
numbers[7:12]


## Applying functions to vectors

# sum
sum(numbers)

# mean 
mean(numbers)

# max
max(numbers)

# std error
sd(numbers)

# statistical summary
summary(numbers)


## 
numbers * 2

##
max(numbers) * min(numbers)

### String data type

# define a string variable
name <- "arie"

# evaluate the string variable
name

# uppercase character
toupper(name)

# replace items
gsub("j", "x", name)

gsub("j", "x", name, ignore.case = TRUE)



# create a mixed vector
mixed_vector <- c(1,2,3,4, "max", 4, 5)


# vectors converteren
my_numeric_vector <- as.numeric(mixed_vector)


# sum of new vector
sum(my_numeric_vector, na.rm = TRUE)

# mean of new vector
mean(my_numeric_vector, na.rm = TRUE)

# applying scalar to vector
my_numeric_vector * 2

### Data types in R:
person_length <- 1.93    # float (numeric)
age           <- 40      # integer
name          <- "James" # string (character)
smokes        <- TRUE    # boolean (TRUE/FALSE) (T, F)

#
my_date       <- as.Date("01-01-2022")

# checken type in R
class(name)


## Wiskundige function
sqrt(144)

4 ** 2
10 / 2
4 * 4
3 + 3

4 + 4 + (4 * 5)



# matrix
my_matrix = matrix(data=c(1,2,3,4,5,6), ncol=2, byrow = TRUE)
my_matrix * 4

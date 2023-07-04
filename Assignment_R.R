seq(from = 1, to = 50, by = 3)

seq(from = 1, to = 50, by = 5)

seq(from = 1, to = 50, by = 10)


#Here is a list of the most common data objects in R along with syntax and examples for each:
  
#Numeric:
#Numeric data objects in R are used to represent numerical values, such as integers or decimals.
#Syntax: x <- 1.23
#Example: x <- 3.14

#Integer:
#Integer data objects in R are used to represent whole numbers.
#Syntax: x <- 10L
#Example: x <- 5L

#Logical:
#Logical data objects in R are used to represent boolean values, i.e., TRUE or FALSE.
#Syntax: x <- TRUE
#Example: x <- FALSE

#Character:
#Character data objects in R are used to represent text values.        
#Syntax: x <- "Hello, world!"
#Example: x <- "R programming language"

#Factor:
#Factor data objects in R are used to represent categorical data.
#Syntax: x <- factor(c("Male", "Female", "Male"))
#Example: x <- factor(c("Yes", "No", "Yes", "No"))

#Date:
#Date data objects in R are used to represent dates.    
#Syntax: x <- as.Date("2022-01-01")
#Example: x <- as.Date("2023-04-06")

#POSIXct:
#POSIXct data objects in R are used to represent dates and times.
#Syntax: x <- as.POSIXct("2022-01-01 12:34:56", tz = "UTC")
#Example: x <- as.POSIXct("2023-04-06 15:30:00", tz = "UTC")

#List:
#List data objects in R are used to represent collections of objects.
#Syntax: x <- list(1, "a", TRUE)
#Example: x <- list(3.14, "hello", FALSE)

#Matrix:
#Matrix data objects in R are used to represent 2-dimensional arrays of data.
#Syntax: x <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
#Example: x <- matrix(c(0.5, 1.2, 2.8, 3.1), nrow = 2, ncol = 2)

#Array:
#Array data objects in R are used to represent n-dimensional arrays of data.
#Syntax: x <- array(data = c(1,2,3,4,5,6), dim = c(2,3,2))
#Example: x <- array(data = c(1,2,3,4,5,6), dim = c(2,3))

#Data frame:
#Data frame data objects in R are used to represent tables of data with rows and columns.
#Syntax: x <- data.frame(col1 = c(1,2,3), col2 = c("a", "b", "c"))
#Example: x <- data.frame(name = c("Alice", "Bob", "Charlie"),
                         age = c(25, 30, 35),
                         married = c(TRUE, TRUE, FALSE))

df <- data.frame(col1 = c(1, 2, 3, 4, 5),
                 col2 = c("A", "B", "C", "D", "E"),
                 col3 = c(TRUE, FALSE, TRUE, FALSE, TRUE))

print(df)

row2 <- df[2, ]

print(row2)          

df <- df[-4, ]

print(df)

col2 <- df[, 2]

print(col2)

df <- df[, -3]

print(df)

df$col4 <- c(6, 7, 8, 9, 10)

print(df)

row6 <- c(6, "F", TRUE)
df <- rbind(df, row6)

print(df)

num <- -10

if (num < 0) {
  print("The given number is negative.")
} else {
  if (num > 0) {
    print("The given number is positive.")
  } else {
    print("The given number is zero.")
  }
}

value <- readline(prompt = "Enter a value: ")


if (grepl("^[a-zA-Z]+$", value)) {
  print("The input is a character.")
}

else if (grepl("^[0-9]+$", value)) {
  print("The input is numeric.")
}

else if (grepl("^[[:punct:]]+$", value)) {
  print("The input is a special character.")
}

else {
  print("Invalid input.")
}


#The main difference between break and next is that break is used to exit a loop completely, while next is used to skip to the next iteration of a loop.

#break statement:
#The break statement is used to terminate the current loop completely when a certain condition is met. It can be used with for, while, and repeat loops. When a break statement is executed, the control is transferred to the first statement outside the loop. Here is an example program that uses break:
  
  # Example of break statement
  for (i in 1:10) {
    if (i == 5) {
      break
    }
    print(i)
  }


#next statement:
#The next statement is used to skip to the next iteration of a loop when a certain condition is met. It can be used with for and while loops. When a next statement is executed, the control is transferred to the next iteration of the loop. Here is an example program that uses next:
  
  # Example of next statement
  for (i in 1:10) {
    if (i %% 2 == 0) {
      next
    }
    print(i)
  }

x <- c(1, 5.6, 3, 10, 3.5, 5)
print(rev(x))


x <- c('a', 'b', 'c', 't', 'a', 'c', 'r', 'a', 'c', 't', 'z', 'r', 'v', 't', 'u', 'e', 't')

mode_x <- names(sort(-table(x)))[1]

print(paste0("The mode value is '", mode_x, "'."))


library(dplyr)

filter_setosa <- function(dataset) {
  filtered_dataset <- dataset %>%
    filter(Species == "setosa")
  return(filtered_dataset)
}

data(iris)
setosa_data <- filter_setosa(iris)


library(dplyr)

iris_means <- iris %>%
  mutate(Means_of_obs = rowMeans(.[1:4]))

head(iris_means)

library(dplyr)

versicolor_data <- iris %>%
  filter(Species == "versicolor") %>%
  select(Sepal.Length, Sepal.Width)

write.csv(versicolor_data, file = "versicolor_data.csv", row.names = FALSE)

library(ggplot2)

ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point(size = 3) +
  labs(x = "Weight (1000 lbs)", y = "Miles per gallon", color = "Cylinders") +
  ggtitle("Scatter plot of mpg vs. wt")

ggplot(mtcars, aes(x = factor(cyl), y = mpg, fill = factor(am))) +
  geom_boxplot() +
  labs(x = "Number of cylinders", y = "Miles per gallon", fill = "Transmission type") +
  ggtitle("Box plot of mpg, grouped by number of cylinders")

ggplot(mtcars, aes(x = mpg, fill = factor(gear))) +
  geom_histogram(binwidth = 3, color = "black") +
  labs(x = "Miles per gallon", y = "Count", fill = "Number of gears") +
  ggtitle("Histogram of mpg")

ggplot(mtcars, aes(x = wt, y = hp, color = factor(cyl))) +
  geom_line(size = 1) +
  labs(x = "Weight", y = "Horsepower", color = "Cylinders") +
  ggtitle("Line plot of hp vs. wt")

ggplot(mtcars, aes(x = factor(cyl), fill = factor(cyl))) +
  geom_bar() +
  labs(title = "Bar Graph of Count by Number of Cylinders", x = "Number of Cylinders", y = "Count", fill = "Cylinders") +
  theme(plot.title = element_text(hjust = 0.5))

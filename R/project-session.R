
weight_kilo <- 10

weight_kilo

#vector
c("a","b")

#numeric
c(1,2)

#logic
c(TRUE, FALSE)

#data frame
head(iris)

colnames(iris)
str(iris)
summary(iris)


# test --------------------------------------------------------------------

# Object names
#DayOne
day_one
false <- FALSE
number_value <- 9
sum_vector <- function(x) sum(x)

# Spacing
#x[,1]
x[ ,1]
#x[ , 1]
#mean (x, na.rm = TRUE)
mean( x, na.rm = TRUE )
#function (x) {}
function(x){}
height <- feet * 12 + inches
mean(x, na.rm=10)
sqrt(x^2 + y^2)
df$z
x <- 1:10

# Indenting
if (y < 0 && debug) {
  message("Y is negative")
}


# test2 -------------------------------------------------------------------

sd
lm

add_two <- function(x,y) {
  print(x)
  added <- x+y
  return(added)

}

add_two(1,2)
add_two(x=1, y=2)

#library(tidyverse)

source(here::here("R/package-loading.R"))


# saved data --------------------------------------------------------------

write_csv(iris, here::here("data/iris.csv"))
imported_iris <- read_csv(here::here("data/iris.csv"))
glimpse(imported_iris)


# test3 -------------------------------------------------------------------


#NHANES %>%
# head()

# Modify an existing variable
NHANES %>%
  #mutate(Height = Height / 100)
  select(Age, Gender, BMI)

# Or create a new variable based on a condition
NHANES %>%
#  mutate(HighlyActive = if_else(PhysActiveDays >= 5, "yes", "no"))

#summarise(MaxAge=max(Age, na.rm=TRUE))

  group_by(Gender, Work) %>%
  summarise(
    MeanBMI = mean(BMI, na.rm =TRUE),
    MeanAGE = mean(AGE, na.rm =TRUE)
    )


table4b %>%
  gather(Measure, Value, -Gender)

nhanes_chars <- NHANES

# Convert to long form, excluding year and gender
nhanes_long <- nhanes_chars %>%
  gather(Measure, Value, -SurveyYr, -Gender)

table2 %>%
  spread(type, count)

nhanes_chars <- NHANES %>%
  select(SurveyYr, Gender, Age, Weight, Height, BMI, BPSysAve)
nhanes_chars

nhanes_long <- nhanes_chars %>%
  gather(Measure, Value, -SurveyYr, -Gender)
nhanes_long


nhanes_long %>%
  group_by(SurveyYr, Gender, Measure) %>%
  summarise(MeanValue = mean(Value, na.rm = TRUE))


table2 %>%
  spread(key = type, value = count)




NHANES %>%

  arrange(Gender) %>%
  group_by(Age) %>%

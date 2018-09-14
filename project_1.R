#### Fill in lines 3, 4, and 5 below ####

# Your Name: 
# Instructor's Name: 
# Date: 

#-----------------------------------------------------------------------#

# Below is set up for you to import the data into R
  # Just run each line of code
  # You should end up with three data sets: CRD, RBD, and FD

# You then need to use the aov() function to make the ANOVA tables

#-----------------------------------------------------------------------#

#### Example ####

data(mtcars)
names(mtcars) # this prints out the names of the 11 variables
head(mtcars)  # this prints out the first 6 observations of the data
mtcars$cyl=factor(mtcars$cyl)

# let's say I want to see if 'mpg' can be determined by 'cyl' and 'disp'

cars.aov=aov(mpg~cyl+disp, data=mtcars)
summary(cars.aov) # prints out the ANOVA table
# 'Residuals' is the same thing as 'Error' in the ANOVA table


# if I want to test for two factor factorial design
cars.aov2=aov(mpg~cyl*disp, data=mtcars)
summary(cars.aov2)
# the * runs each factor individually and also the interaction term
# the interaction is represented with a : in R

#-----------------------------------------------------------------------#




#### Assignment ####

# 1) Completely Randomized Design 
CRD <- read.table("https://raw.githubusercontent.com/alleexx12/3500_R1/master/CRD.csv",
                  header = T, sep = ",")
names(CRD)
head(CRD)


#-----------------------------------------------------------------------#

# 2) Randomized Block Design 
RBD <- read.table("https://raw.githubusercontent.com/alleexx12/3500_R1/master/RBD.csv",
                  header = T, sep = ",")
RBD$block <- as.factor(RBD$block)
names(RBD)
head(RBD)


#-----------------------------------------------------------------------#

# 3) Factorial Design 
FD <- read.table("https://raw.githubusercontent.com/alleexx12/3500_R1/master/FD.csv",
                 header = T, sep = ",")
names(FD)
head(FD)


#-----------------------------------------------------------------------# 

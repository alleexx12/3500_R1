#### Fill in lines 3, 4, and 5 below ####

# Your Name: 
# Instructor's Name: 
# Date: 

#-----------------------------------------------------------------------#

# Below is set up for you to import the data into R
  # Just run each line of code
  # You should end up with three data sets: CRD, RBD, and FD

# You then need to use the aov() function to make the ANOVA tables
  # Reference "Some Helpful Functions" below to write your code

#-----------------------------------------------------------------------#

#### Some Helpful Functions ####

names(your_data_set_name) 
    # use this to get the column names of your data set
    # these names are unique to each data set
        # you will put these in place of response, treatment, block, ect below

head(your_data_set_name, number) 
    # will print the first 6 rows of your data set

aov.1=aov(formula=response~factor, data=your_data_set_name) 
    # this is the ANOVA function: aov()

    # you have to identify formula: 

        # Randomized design:      
            # response~treatment
        # Block design:           
            # response~treatment+block
        # Factorial design:       
            # reponse~factor1*factor2

    # you have to identify data:

        # CRD or RBD or FD

summary(aov.1) 
    # this will put out your ANOVA table

#-----------------------------------------------------------------------#

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

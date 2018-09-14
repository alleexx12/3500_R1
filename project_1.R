#### Fill in lines 3, 4, and 5 below ####

# Your Name: 
# Instructor's Name: 
# Date: 

#-----------------------------------------------------------------------#

#### Some Helpful Functions ####

names(your_data_set_name) 
      # use this to get the column names of your data set

head(your_data_set_name, number) 
      # will print the first 6 rows of your data set

aov(response ~ factors, data = your_data_set_name) 
      # this is the anova function: aov()

      # you have to identify function: 
          # Randomized design:      
              # response~treatment
          # Block design:           
              # response~treatment+block
          # Factorial design:       
              # reponse~factor1*factor2

      # you have to identify your data name
          # CRD or RBD or FD

summary(aov.1) 
      # this will put out your anova table

#-----------------------------------------------------------------------#

# Below is set up for you to import the data into R
    # Just run each line of code
    # You should end up with three data sets: CRD, RBD, and FD

# You then need to use the aov() function to make the ANOVA tables
    # Reference "Some Helpful Functions" above to write your code

#-----------------------------------------------------------------------#


# Completely Randomized Design --------------------------------------------

CRD <- read.table("https://raw.githubusercontent.com/alleexx12/3500_R1/master/CRD.csv",
                  header = T, sep = ",")
names(CRD)
head(CRD)




# Randomized Block Design -------------------------------------------------
RBD <- read.table("https://raw.githubusercontent.com/alleexx12/3500_R1/master/RBD.csv",
                  header = T, sep = ",")
RBD$block <- as.factor(RBD$block)
names(RBD)
head(RBD)



# Factorial Design --------------------------------------------------------

FD <- read.table("https://raw.githubusercontent.com/alleexx12/3500_R1/master/FD.csv",
                 header = T, sep = ",")
names(FD)
head(FD)




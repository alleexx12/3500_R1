#### Your Name
#### Instructor's Name
#### Date


# Some Helpful Functions --------------------------------------------------

names(your_data_set_name) # use this to get the column names of your data set,
                          # for example, names(CRD) will give the names of the
                          # CRD data set

head(your_data_set_name, number) # will print the first number (like 5,6,etc.)
                          # of rows of your data set

aov(response ~ factors, data = your_data_set_name) # this is the anova function
                          # so basically what the whole assignement is based on
                          # don't forget, if you have multiple factors to do
                          # factor_1 + factor_2 + ...

summary(aov_model) # this will put out your anova table, but don't forget to 
                   # label your anova model (mod.1 <- aov(...)) and then do 
                   # summary(mod.1)





# Completely Randomized Design --------------------------------------------

CRD <- read.table("https://raw.githubusercontent.com/jsnowynorth/STAT_3500_project_1/master/CRD.csv",
                  header = T, sep = ",")
head(CRD)


# Randomized Block Design -------------------------------------------------
RBD <- read.table("https://raw.githubusercontent.com/jsnowynorth/STAT_3500_project_1/master/RBD.csv",
                  header = T, sep = ",")
RBD$block <- as.factor(RBD$block)


# Factorial Design --------------------------------------------------------

FD <- read.table("https://raw.githubusercontent.com/jsnowynorth/STAT_3500_project_1/master/FD.csv",
                 header = T, sep = ",")
head(FD)

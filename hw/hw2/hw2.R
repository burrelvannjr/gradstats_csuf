setwd("DIRECTORY_OF_DATA")
rm(list=ls())

install.packages("dplyr")
library(dplyr)
#pull in GSS data set and turn it into a useable object 
#GSS is a data set of 2538 individuals and their responses to questions
data <- read.csv("GSS2014_final.csv",header=TRUE,sep=",")

#recode values for race, adding other and black together to form "non-white"
data$race[data$race==3] <- 2
#add value labels into each variable
data$race <- factor(data$race, levels = c(1,2), labels = c("white", "non-white"))

#t-test is a bivariate relationship between one categorical/discrete independent variable of only two groups, and one interval/continuous dependent variable

#call the means for the interval/continuous variable (dependent) based on each group in the categorical variable (independent)
#for t-test, list the dependent (interval-ratio level) variable first and the independent (discrete/categorical) variable second
tapply(data$DV, data$IV, mean, na.rm=TRUE) 

#call the actual t-test
#for t-test, list the dependent (interval-ratio level) variable first and the independent (discrete/categorical) variable second
t.test(data$DV ~ data$IV, var.equal = TRUE)






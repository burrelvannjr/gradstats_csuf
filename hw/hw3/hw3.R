setwd("DIRECTORY_OF_DATA")
install.packages("gplots")
library(gplots)
rm(list=ls())

#pull in GSS data set and turn it into a useable object 
#GSS is a data set of 2538 individuals and their responses to questions
data <- read.csv("GSS2014_final.csv",header=TRUE,sep=",")

#add value labels into each variable, but this will also treat the variable as a factor
data$race <- factor(data$race, levels = c(1,2,3), labels = c("white", "black", "other"))

#call a table with all values of the variable listed
#usually list the independent variable first and the dependent variable second
table(data$IV, data$DV)

#to create a graph, reverse the IV and DV, and make the table usable
plotmeans(DV ~ IV, data = data)


#-----------------ANOVA-----------------
#ANOVA is a bivariate relationship between one categorical/discrete variable of more than two groups, and one interval/continuous variable

#call the means on the interval/continuous variable for the groups (categorical variables)
tapply(data$DV, data$IV, mean, na.rm=TRUE) 
#call the standard deviations on the interval/continuous variable for the groups (categorical variables)
tapply(data$DV, data$IV, sd, na.rm=TRUE) 
#run the actual ANOVA test
summary(aov(data$DV~factor(data$IV)))



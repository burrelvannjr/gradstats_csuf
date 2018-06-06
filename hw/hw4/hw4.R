setwd("DIRECTORY_OF_DATA")
rm(list=ls())

#pull in GSS data set and turn it into a useable object 
#GSS is a data set of 2538 individuals and their responses to questions
data <- read.csv("GSS2014_final.csv",header=TRUE,sep=",")

#means
mean(data$IV, na.rm = TRUE)
mean(data$DV, na.rm = TRUE)

#standard deviations
sd(data$IV, na.rm = TRUE)
sd(data$DV, na.rm = TRUE)

#correlation is a bivariate relationship between interval/continuous variables
#correlation between 2 interval/continuous variables with significance
cor.test(data$IV, data$DV)

#to create a scatterplot
plot(data$IV, data$DV)

#to add a "black" fit line to the scatterplot, reverse the IV and DV
abline(lm(data$DV ~ data$IV), col="black")


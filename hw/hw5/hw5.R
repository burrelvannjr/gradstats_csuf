setwd("DIRECTORY_OF_DATA")
rm(list=ls())

#pull in GSS data set and turn it into a useable object 
#GSS is a data set of 2538 individuals and their responses to questions
data <- read.csv("GSS2014_final.csv",header=TRUE,sep=",")

#simple regression
summary(lm(DV ~ IV, data = DATA_NAME))

#multiple regression
summary(lm(DV ~ IV1 + IV2, data = DATA_NAME))


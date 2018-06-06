setwd("DIRECTORY_OF_DATA")
install.packages("rcompanion")
library(rcompanion)
rm(list=ls())

#pull in GSS data set and turn it into a useable object 
#GSS is a data set of 2538 individuals and their responses to questions
data <- read.csv("GSS2014_final.csv",header=TRUE,sep=",")

#recode racdif to 0 = NOT b/c blacks lack motivation and 1 = b/c blacks lack motivation
data$racdif4[data$racdif4==2] <- 0
#data$racdif4 <- factor(data$racdif4, levels = c(1,0), labels = c("b/c blacks lack motivation", "NOT b/c blacks lack motivation"))

#dummy code race
data$race_d <- factor(data$race, levels = c(1,2,3), labels = c("white", "black", "other"))

#recode race as 1 = white and 0 = everyone else
data$race_2 <- data$race
data$race_2[data$race_2==2] <- 0
data$race_2[data$race_2==3] <- 0
#data$race_2 <- factor(data$race_2, levels = c(1,0), labels = c("white", "non-white"))





#simple binary logistic regression
summary(MODEL_NAME1<-glm(DV ~ IV, data = DATA_NAME, family = binomial))
nagelkerke(MODEL_NAME1, null = NULL, restrictNobs = T)

#multiple binary logistic regression
summary(MODEL_NAME2<-glm(DV ~ IV1 + IV2, data = DATA_NAME, family = binomial))
nagelkerke(MODEL_NAME2, null = NULL, restrictNobs = T)

#multiple binary logistic regression with dummy coded IV2 (IV2_d)
summary(MODEL_NAME3<-glm(DV ~ IV1 + IV2_d, data = DATA_NAME, family = binomial))
nagelkerke(MODEL_NAME3, null = NULL, restrictNobs = T)



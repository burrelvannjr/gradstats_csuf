setwd("DIRECTORY_OF_DATA")
rm(list=ls())

#pull in GSS data set and turn it into a useable object 
#GSS is a data set of 2538 individuals and their responses to questions
data <- read.csv("GSS2014_final.csv",header=TRUE,sep=",")

#add value labels into each variable
data$race <- factor(data$race, levels = c(1,2,3), labels = c("white", "black", "other"))
data$racdif4 <- factor(data$racdif4, levels = c(1,2), labels = c("b/c blacks lack motivation", "NOT b/c blacks lack motivation"))

#call a table with all values of the variable listed
#usually list the independent variable first and the dependent variable second
table(data$IV, data$DV)

#to create a graph, reverse the IV and DV, and make the table usable
graph_data <- table(data$DV, data$IV)
barplot(graph_data, main="Beliefs about Black Inequality by Racial Group",
        xlab="Racial Group", col=c("darkblue","green"),
        legend = rownames(graph_data), beside=TRUE)

#call the actual chi square test
#chi square is a bivariate relationship between two categorical/discrete variables (e.g. ordinal or nominal)
chisq.test(data$IV, data$DV)


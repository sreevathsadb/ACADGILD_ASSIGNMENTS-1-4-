#Task 1
library(xlsx)
titanic_data<-read.xlsx("C:/Users/sreevathsa/Documents/Data Sets/titanic3.xlsx",1)
#1)
library(ggplot2)
boxplot(titanic_data$fare~titanic_data$pclass, main = "fare vs class",xlab = "pclass")
#2)
m<-table(titanic_data$sex,titanic_data$pclass)
View(titanic_data)
barplot(m,legend = row.names(m),col=c("red","green"),main = "Gender Vs Class")
#Task 2
boxplot(mtcars$mpg~mtcars$cyl)
#Task 3
#Find the probability that X is equal to 17
a<-dbinom(17,prob = 0.447,size=31)
a
#Find the probability that X is at most 13
a<-pbinom(13,prob = 0.447,size = 31,lower.tail = TRUE)
a
#Find the probability that X is bigger than 11.
a<-pbinom(11,prob = 0.447,size = 31,lower.tail = FALSE)
a
#Find the probability that X is between 16 and 19, inclusive
a<-sum(dbinom(16:19,prob = 0.447,size = 31))
a

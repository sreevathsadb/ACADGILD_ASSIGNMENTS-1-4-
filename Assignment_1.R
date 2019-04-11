#Task1
#1)Ways to call a functions
#Non Parameterized Function
sample<-function()
{
  a=2
  b=3
  c = a+b
  print(c)
}
sample()

#Parameterized Function 
sample<-function(a,b)
{
  c=a+b
  print(c)
}
sample(2,4)

#Inbuilt Functions.

c<-sum(1,3)
print(c)

#2)Recycling:
#Recycling of elements means it repeats or recycles elements of vector with lesser elements whenever involved in an process or operation.
#3)Recycling Example
a <- c(1,2,3)
b <- c(4,5,6,7,8,9)
c<-a+b
print(c)

#Task 2
#1)
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v%/%t)
#solution :  0 1 1
#2)

library(xlsx)
for(i in 1:25)
{
  file_name<-paste0("C:/Users/sreevathsa/Documents/Practice/New folder/sample_",i,".xlsx")
  file_record<-read.xlsx(file_name,1)
  merge.file<-merge(temp,file_record,all = TRUE)
}
View(merge.file)

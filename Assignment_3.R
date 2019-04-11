#TASK1
#1)
States<-rownames(USArrests)
View(States)
for(i in 1:length(States)){
  if((startsWith(States[i],"w")|startsWith(States[i],"W"))==TRUE){
    print(States[i])}}
#2)
nc<-c()
for(i in 1:length(States))
{
  nc[i]<-nchar(States[i])
}
hist(nc,cex.axis=1,col = "red",font.axis=2,cex.lab=1.5,xlab = "No of Characters in each state")
#TASK2
#1)
vec1<-c(rownames(mtcars[1:15,]))
vec2<-c(rownames(mtcars[11:25,]))

vec1
vec2
count=0
for(i in 1:length(vec1))
    {
      for(j in 1:length(vec2))
      {
        if(setequal(vec1[i],vec2[j])==TRUE)
          count = count +1
      }
}
print(count)

#2)

sort(vec1,decreasing = TRUE)
sort(vec1,decreasing = FALSE)
sort(vec1,decreasing = TRUE)
sort(vec1,decreasing = FALSE)


#3)
#String is a data structure that is used to hold sequence of character where as paste()is not a data structure,it only prints the variables and concatenations can be performed.
#Example
sample<-'sreevathsa devanahallibokksam'
sample
paste(sample)
str <- substring(sample, 4, 10)
str1<-str(sample,give.length)
str1

#4)

ID<-c(1,2)
Name<-c("Sreevathsa","Roja")
paste(ID,Name,sep = ":")

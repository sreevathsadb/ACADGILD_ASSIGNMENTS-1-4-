#First Program
NON-VECTORIZED
sample<-function()
{
  
  m<-10
  n<-10
  data_frame<-as.data.frame(replicate(m,rnorm(n),simplify = TRUE))
  for(i in 1:m)
  {
    for(j in 1:n)
    {
      data_frame<-(data_frame[i,j])+100*sin(-280)
    }
  }
  print(data_frame)
}
system.time(sample())

#VECTORIZED

df<-as.data.frame(replicate(10, rnorm(10), simplify=T))
system.time(time_df<-as.vector(unlist(df+100*sin(-280))))
time_df

#Second Program

mymat<-matrix(replicate(4,1:5),nrow = 5,ncol = 4)
mymat
sum_row<-rowSums(mymat)
sum_row
sum_col<-colSums(mymat)
sum_col

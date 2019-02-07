reshape_demo <- data.frame(Country=c("India","US","India",
                                     "US","UK"),
                           Dept = c("IT","IT","Fin","Fin","IT"),
                           Expense = c(1234,2345,3456,4567,5678),
                           No_Months = c(22,24,25,34,56))
reshape_demo

install.packages("reshape")
library(reshape)

t(reshape_demo)


melt(reshape_demo)
temp_wide <- melt(reshape_demo,c("Country","Dept"))
temp_wide


#functions

aaa<-function()
{
  print("hi")
}

aaa() #calling a fn

aa1<-function(a,b){
  c=a+b
  return(c)
}

aa1(5,3)

aa1<-function(a,b=0){
  c=a+b
  return(c)
}

aa1(9)

aa2<-function(n)
{
  for(i in 1:n)
    a[i]=i^2
  return(a)
}

aa2(4)

##Getting the working directory
#R doesnot work for single backward \ so we can use \\ or /

setwd("C:/Users/hp/Documents/R")

#getting working directory

getwd()

#read input file  .csv

adv<-read.csv("Data.csv")
str(adv)

#write the csv file
write.csv(mtcars,"write_csv_demo.csv")
write.csv(mtcars,"write_csv_demo.csv",row.names = F)

##Apply family

x<-matrix(rnorm(30),nrow = 5,ncol = 6)
x

apply(x,1,sum) #row 
apply(x,2,sum) #column

x<-data.frame(x)
y1<-apply(x1,)


nrow(mtcars)  #no of rows
length(mtcars)  #no of col
length(mtcars$mpg) #specfic vector

nrow(mtcars[mtcars$cyl==4,])

ncol(mtcars)
























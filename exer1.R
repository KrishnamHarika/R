setwd("C:\\Users\\hp\\Documents\\R")
getwd()

#without using set working directory we can directly read the path in by using read.csv
train<-read.csv("train.csv")

install.packages(sqldf)
library(sqldf)

sqldf("SELECT * FROM train WHERE Stay_In_Current_City_Years = '4+'")

sqldf("SELECT count(*) FROM train WHERE Stay_In_Current_City_Years = '4+'")

#1.	How do we convert "4+" in "Stay_in_current_city_years" variable  to a value of 4?
table(train$Stay_In_Current_City_Years)

train$Stay_In_Current_City_Years1=as.character(train$Stay_In_Current_City_Years)

train$Stay_In_Current_City_Years1=ifelse(train$Stay_In_Current_City_Years1=="4+",
                                         4,train$Stay_In_Current_City_Years1)

train$Stay_In_Current_City_Years1

#2.	How many rows exist with a marital_status = 0?

table(train$Marital_Status==0)

sqldf("SELECT count(*) FROM train WHERE Marital_Status ==0")

library(dplyr)

nrow(filter(train,Marital_Status==0)) #using dplyr package

nrow(train[train$Marital_Status==0,]) #base approach

#3.	How many rows exist within the age_group of "26-35" with a marital status =0?

nrow(train[(train$Age=='26-35' & train$Marital_Status==0),])
nrow(filter(train,Age=="26-35" & Marital_Status==0))

#4.	How many distinct users exist within the age_group of "26-35" with a marital status =0?

a=train[(train$Age=="26-35"& train$Marital_Status==0),]
length(unique(a$User_ID))

b=filter(train,Age=="26-35" &Marital_Status==0)
distinct(b["User_ID"])
nrow(distinct(b["User_ID"]))

#5.	How many distinct age groups exist?

distinct(train["Age"])
nrow(distinct(train["Age"]))


#6.	How many distinct User_IDs exist?

nrow(distinct(train["User_ID"]))

seq(1,nrow(train),2)

#7.	Which product_ID occurs the most frequently?

#nrow(table(train$Product_ID))

a=data.frame(table(train$Product_ID))
names(a)=c("prod_id","freq")
b=a[order(a$freq,decreasing = T),]
b[1,1]

#8.	What is the average purchase rate of gender = f & gender = m?

aggregate(train$Purchase,by=list(train$Gender),mean)

aggregate(train$Purchase,list(train$Gender),mean)

summarize(group_by(train,Gender),mean(Purchase))

#9.	What is the average value of purchase when gender = f or age_group = "0-17"









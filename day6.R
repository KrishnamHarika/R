##Loops


v<-c("hello","loop")
cnt<-7
repeat{
  print(v)
  cnt=cnt+1
  if(cnt>5){
    break
  }
}
  
#while loop

v<-c("hello","while loop")
cnt<-2
while(cnt<7){
  print(v)
  cnt=cnt+1
}

#for loop

v<-LETTERS[1:4]
for(a in v)
{
  print(a)
}

for(i in 1:10){
  print(i)
}

#exe

m1<-matrix(,nrow=3,ncol=3)
for(i in 1:nrow(m1) ){
  for(j in 1:ncol(m1)){
    m1[i,j]=i*j
  }
}
m1

#nested loop

nested_for<-matrix(nrow=10,ncol=5)
for(i in 1:dim(nested_for)[1]){
  for(j in 1:dim(nested_for)[2]){
    nested_for[i,j]=i*j
  }
}
nested_for

#break & next

x<-1:5
for(val in x){
  if(val==3){
  next
  #break
  }
  print(val)
}

##Packages====

library()

search()

install.packages("dplyr")
library(dplyr)
data()
data(mtcars)
head(mtcars) 
str(mtcars)
View(mtcars)
tail(mtcars)

#filter or subset

mtcars[mtcars$cyl==8 & mtcars$gear==5,]

#dplyr approach

filter(mtcars,cyl==8,gear==5) #can use , or & are same 
filter(mtcars,cyl==8&gear==5)

filter(mtcars,cyl==8|cyl==6) #or operator

filter(mtcars,cyl %in% c(6,8))

#converting row names into column names
temp<-mtcars
temp$myNames<-rownames(temp)
filter(temp,cyl==8,gear==5)

#select: pick colunms by name
 
mtcars[,c("mpg","cyl","gear")]

#dplyr approach
select(mtcars,mpg,cyl,gear)

#use : to select multiple columns and use "contains" to match columns by name

select(mtcars,mpg:disp,"gear","carb")

select(mtcars,"carb",mpg:disp,"gear")

select(mtcars,mpg:disp,contains("ge"),contains("carb"))

#exclude a particular column
select(mtcars,c(-gear,-carb))

select(mtcars,-contains("ge"))

#dplyr approach

filter(select(mtcars,gear,carb,cyl),cyl==8|cyl==6)

#to select all elements that start with the character we use function "starts_with()"

head(select(mtcars,starts_with("c")))

#ends_with():select columns that end with a character 
#contains():select the columns that contains a character

##Arrange : reorder rows
#base approach

mtcars[order(mtcars$cyl),c("cyl","disp","gear")]

mtcars[order(mtcars$cyl,decreasing = T),c("cyl","gear")]

mtcars[order(mtcars$cyl,mtcars$gear,decreasing = T),c("cyl","gear")]

mtcars[order(mtcars$cyl,rev(mtcars$gear),decreasing = T),c("cyl","gear")]

#dplyr approach
#arrange(dataframe,orderby)

arrange(mtcars,cyl)
arrange(select(mtcars,"cyl","gear"),cyl)
arrange(select(mtcars,"cyl","gear"),cyl,gear)
arrange(select(mtcars,"cyl","gear"),desc(cyl))
arrange(select(mtcars,"cyl","gear"),cyl,desc(gear))

##mutate: add new variable
#base approach
temp<-mtcars
temp$new_var<-temp$hp+temp$wt
str(temp)

temp$new_var<-NULL
str(temp)

#dplyr approach

temp<-mutate(temp,mutate_new=temp$hp+temp$wt)
str(temp)

##unique:to fetch unique values from data frame
#base package

unique(mtcars$cyl)
unique(mtcars[["cyl"]])
unique(mtcars["cyl"])
unique(mtcars[c("cyl","gear")])

#dplyr approach
#distinct()
distinct(mtcars["cyl"])
distinct(mtcars[c("cyl","gear")])
distinct(mtcars$cyl)

##aggregate()
#base R approach

aggregate(mtcars,by=list(mtcars$cyl),FUN=mean,na.rm=TRUE)
aggregate(mtcars$mpg,by=list(mtcars$cyl),FUN=mean,na.rm=TRUE)

c(1,2,NULL,NA)
sum(10,20)
sum(10,20,NA)
sum(10,20,NA,-10,na.rm=T)

mean(2,2,2,2,NULL,NA)
mean(c(2,2,NA),na.rm=T)
mean(c(2,2,2,NA))

#dplyr approach
#summarise: reduce variable to values

summarise(mtcars,avg_mpg=mean(mpg))
summarise(mtcars,avg_mpg=mean(mpg),avg_disp=mean(disp))

group_by(mtcars,cyl)
summarise(group_by(mtcars,cyl),avg_mpg=mean(mpg))
summarise(group_by(mtcars,cyl,gear),avg_mpg=mean(mpg))

#Table is used to find frequencies(mode)
#base package approach

table(mtcars$cyl)

#dplyr approach
summarise(group_by(mtcars,cyl),freq=n())
summarise(group_by(mtcars,cyl),freq=n(),n_distinct(gear))
summarise(group_by(mtcars,gear),freq=n())

##Merge two data frames
#create first data frame

name=c("Anne","Pete","Cath","Cath1","Cath2")
age=c(28,30,35,28,25)
child<-c(F,T,F,T,T)
df<-data.frame(name,age,child)
df

#create second data frame
name=c("Anne1","Pete","Cath","Cath1","Cath2")
occupation=c("Engg","Doc","CA","Forces","Engg")
df1<-data.frame(name,occupation)

#base package approach
merge(df,df1)

#creating another data frame with different column name
name1=c("Anne1","Pete","Cath","Cath1","Cath2")
age1=c(28,30,35,28,25)
df2=data.frame(name1,age1,occupation)
merge(df,df2,by.x="name",by.y = "name1")
merge(df,df2,by.x="name",by.y = "name1",all.x=T)






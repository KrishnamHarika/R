library(help="datasets")
data("mtcars")
DF<-mtcars
rm(mtcars)
str(DF)

data.frame(a[1:3],b[1:3],c[1:3])
new_df<-data.frame("mpg"=a,"cyl"=b,"disp"=c)

new_df<-data.frame("mpg"=a,"cyl"=b,"disp"=c,row.names(DF))
row.names(DF)[1:3]
row.names(DF)
colnames(DF)
new_df<-data.frame("mpg"=a,"cyl"=b,"disp"=c,row.names=rownames((DF)[1:3]))
summary(DF)

df1<-DF[c(1,6,7)]
View(df1)

x<-c("mpg","wt","qsec")
df2<-DF[names(DF)%in%x]
View(df2)
names(df2)

##exe



df3=subset(DF,select=c("mpg","wt","qsec"))
df4=subset(DF,select=c("mpg","cyl"))
df4=subset(DF,mpg>25,select=c("mpg","cyl"))


##
data("attitude")
data1<-attitude
str(data1)
nrow(data1)
colnames(data1)
head(data1,5)
data2<-data1[,1:3]
data2<-data1[1:5,1:3]

#ratings & advance====
data1[c(1,7)]
x<-c("ratings","advance")
data3<-data1[names(data1)%in%x]
#max rating
max(data1$rating)
min(data1$rating)
subset(data1,select=c("rating","advance")) #also exe without quotes becz of using subset
A<-subset(data1,complaints>65,select=c("rating","advance"))
subset(data1,complaints>65,select=c("rating","advance"))
data1[data1$complaints>65,c("rating","advance")]
data1[data1$complaints>65,c(1,7)]

rm(list=ls())
  
data("mtcars")
df=mtcars
View(mtcars)

##creating a new column ====
df["new_col"]="new col"
View(df)
 
##1.for & if ====

for(i in 1:10)
{
  print(i)
}

for(i in 1:nrow(df))
{
  if(df$mpg[i]<25)
  {
    df$new_col[i]=0
  }
  else
  {
   df$new_col[i]=1 
  }
}

##2.ifelse====
df$new_col<-ifelse(df$mpg>25,0,1)

##3.general subset====

df$new_col=0
df[df$mpg>=25,"new_col"]=1

##4.multiple conditions ====
#ex1

for(i in 1:nrow(df))
{
  if(df$mpg[i]<25 & df$am[i]==0)
  {
   df$new_col[i]="good"
  }
  else if(df$mpg[i]<25 &  df$am[i]==1)
  {
    df$new_col[i]="ok"
  }
  else 
    df$new_col[i]="bad"
}

table(df$new_col)
##ex2

df$new_col<-ifelse(df$mpg<25 & df$am==0,"good",ifelse(df$mpg<25 & df$am==1,"ok","bad"))

##ex3

df$new_col="bad"
df[df$mpg<25 & df$am==0,"new_col"]="good"
df[df$mpg<25 & df$am==1,"new_col"]="ok"
table(df$new_col)

##exercise ====
data("attitude")
data1<-attitude
data1[c(1,2,7)]
subset(data1,rating>40 & complaints<60,select=c("rating","advance","complaints"))
data1[data1$rating>40 & data1$complaints<60,c(1,2,7)]
attitude[attitude$rating>40 & attitude$complaints<60,c(1,2,7)]

data1["performance"]="performance"
View(data1)

for(i in 1:nrow(data1))
{
  if(data1$rating[i]>60 & data1$complaints[i]>50)
  {
    data1$performance[i]="good"
  }
  else 
    data1$performance[i]="bad"
}

for(i in 1:nrow(data1))
{
  if(data1$rating[i]==40)
  {
    data1$performance[i]="good"
  }
else
{
  data1$performance[i]="bad"
}
}

##while ====
i=1
while(i<6)
{
  print(i)
  i=i+1
}


##load the data ====
data<-read.csv("Data.csv",header=T)
str(data)
head(data)
tail(data)
summary(data) #distribution of data
sum(is.na(data))#to check null values in data
names(data)

#Subsetting data ====

Data_NumAtr<-subset(data,select=c(Age,Experience,Income,CCAvg,Mortgage))
Data_CatAtr<-subset(data,select=-c(Age,Experience,Income,CCAvg,Mortgage))

Data_CatAtr<-Data_CatAtr[-c(1,2)]
str(Data_CatAtr)

#converting categorical attributes as factors====
Data_CatAtr$Family<-as.factor(Data_CatAtr$Family)
str(Data_CatAtr)
summary(Data_CatAtr$Family)

#all at once using apply fn
Data_CatAtr<-data.frame(apply(Data_CatAtr,2,as.factor))
str(Data_CatAtr)

#Mean
apply(Data_NumAtr,2,mean) #2 is margin

#Discreting the variable====
library(infotheo)
IncomeBin<-discretize(data$Income,disc="equalfreq",nbins=4)
table(IncomeBin)

#tapply usage
tapply(data$Income,IncomeBin,max)
tapply(data$Income,IncomeBin,min)
IncomeBin<-discretize(data$Income,disc="equalwidth",nbins=4)
table(IncomeBin)
tapply(data$Income,IncomeBin,max)
tapply(data$Income,IncomeBin,min)

#Standardizing the data ====
library(vegan)
Data_NumAtr2<-decostand(Data_NumAtr,"range")#using range method
Data_NumAtr2<-decostand(Data_NumAtr,"standardize")#using z score

#Dummy variables
library(dummies)
EduDummyVars<-dummy(data$Education)
head(EduDummyVars)
Data<-data.frame(data,EduDummyVars)

write.csv(Data_NumAtr,"Data_Num.csv",row.names=F)


















##Basics
#Assignment optr
x<-6
x=6

#Arthematic optr

3+8
6*7
6/2
200/11

200%/%11
200%%11

3%/%3
3%%3

#Relational optr

# >=,<=,==,!=

5>=3
5<=2
5==3
5!=3

#Logical

#  !,&

a<-7
b<-7
if((a>3)&(b>3))
  print("True")

a<-7
b<-7
if((a>3)!(b>3))
  print("True")


##Model formula(~)

##List Indexing($)

name=c("anne","pete","cath","cath","anne")
age=c(28,30,32,25,35)
child<-c(F,F,T,T,F)
df<-data.frame(name,age,child)
names(df)<-c("name","age","child")



#two or more expr in same line

1+1 ; 2*5

#formatC(x, format="f", digits=10)

x<-4.612333333333
y<-103.77770992
n<-2
log(x) #log to base e of x
exp(x)
log(x,n) #log to 
log10(x) #log to 10 base x
sqrt(y)
factorial(4)

##Rounding fun
x
y
n
floor(x)  #generate greatest integer <x
ceiling(x) #generate smallest integer >x
trunc(x)  #closest integer between x and 0
trunc(-123.99)
trunc(123.99)
trunc(123.01)

cos(x);sin(x);tan(x)

abs(-2)
abs(2)

##Generating regular sequence of num

1:10
seq(1,10)

seq(5,0,-.5)
seq(-10,0,2)
seq(1,100,2)
seq(2,100,2)
seq(-1,-100,-2)

#Repeat or Replication

x<-rep(6,4)
x
x<-rep('abc',10)
x

rep(c(11,12,13),3)

rep(1:2,4)

rep(c(11,12,13),each=5)
rep(c(11,12,13),each=2,3)

##Sorting,Ranking and Ordering

sales<-c(100,50,75,150,200,25,30)
sales
rank1<-rank(sales) #rank tells about the order of num
rank1
rank(-sales) #decreasing rank

sorted<-sort(sales)
sorted

order(sales)

##Use of %in% and which()

sports<-c("cricket","football","basketball","baseball","xyz")
popularsports<-c("rugby","cricket","badminton","football","tennis",
                 "baseball","basketball")
sports%in%popularsports
which(sports%in%popularsports)
sports[which(sports%in%popularsports)]

which(popularsports%in%sports)

##Use paste fun
#it is used to concatenate several things

a<-c("server","client")
b<-c("1","2","3","4","5")
paste(a,b,sep= "-")
paste(a,b)

##Pattern matching

x<-c("apple","potato","grape",10)
grep("a",x)
x[grep("a",x)]
grep("a",x,value=T)

grep("[[:digit:]]",x,value=T)
grep("[[:digit:]]",x)

##Conditional stmts
#if else

x<-c("what","is","truth")
if("truth"%in% x){
  print("truth is found 1st time")
} else if("truth" %in% x){
  print("truth is found 2nd time")
}else{
  print("no truth found")
}

#swith(statement,list)

##Loops














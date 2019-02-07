##subset

m[,1]
m[1,3]
m[4]
m
m[3]
m[c(1,3),c(2,4)]
m[1,c(2,3)]
#subset by name
m<-matrix(1:12,nrow = 3)
m
rownames(m)<-c("row1","row2","row2")
m
colnames(m)<-c("col1","col2","col3","col4")
m
m["row1","col2"]
m<-matrix(c(1:11,'k'),nrow=3)
m

##List====
#it is hetrogenous data structure,property is flexibility,very complex to handle the data.

list1<-list(c(2,5,3),21.3,sin)
list1

n<-c(2,3,4)
s<-c("aa","bb","cc")
b<-c(T,T,F,F)
x<-list(n,s,b,3)
x
class(n)
class(x)
class(b)

##List slicing
#retrive the data from the list 

x[2]
x[1]
x[[2]]#to retrive directly without going to memory reference

x[[2]][1]
x[[3]][3]#to fetch the elements 

x[2][1]<-"ta"
x
x[[1]][4]<-5
x
x[[2]][2]<-"ta"
x
x[[4]]<-4
x
x[[4]][2]<-4 #adds another element
x

s#s is unaffected

#list is a multi dimensional identity
#naming the list elements

fil<-c("first","second","third","fourth")
names(x)<-fil
x

#assign name to the list member with the reference name
v<-list(Sam=c(2,3,4),Mike=c("aa","bb"))
v

v[1]
v["Sam"]

v[[1]]
v[["Sam"]]
v$Sam

v[["Sam"]][1]<-'a'

attach(v)
Sam
detach(v)

##Accessing the list elements

list_data<-list(c("Jan","feb","Mar"),
                matrix(c(3,9,5,1,-2,8),nrow=2),list("green",12.3))

#naming the elements in the list
names(list_data)<-c("1st Quarter","A_Matrix","A Inner list")

print(list_data[1])# access the first element in list

print(list_data[3])
print(list_data[[3]])
#print(list_data[3][[1]])
print(list_data[3][[1]][[1]])
#print(list_data[[3]][[1]])
print(list_data[[3]][[2]])

##merging list====
list1<-list(1,2,3)
list2<-list("sun","mon","tue","wed")

merge.list<-c(list1,list2)
merge.list

length(merge.list)

x<-c(list1,list2)
x
length(x)

#converting a list into vector

list<-list(1:5)
print(list1)
print(list2)
class(list1)

v1<-unlist(list1)
v1
class(v1)

v3<-list(1:5,"mon")
v3

v4<-unlist(v3)
v4

##Dataframes====
#it is a multidimensional
#create a data frame

name=c("anne","pete","cath","cath","anne")
age=c(28,30,32,25,35)
child<-c(F,F,T,T,F)
df<-data.frame(name,age,child)
df
class(df)
typeof(df)

names(df)<-c("name","age","child")

str(df)  #structure of the data frame

df$name  #fetch any value








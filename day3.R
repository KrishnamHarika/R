2+2
8*4
x=7
print(x-2)
x=3
y=5
print(y-x)
??mean
help("median")
x<- T
x
class(T)
TRUE
class(F)
class(NA)
2.5
class(2.5)
class(3)
5
class(5L)
is.numeric(2)
is.numeric(2L)
is.integer(2)
is.integer(2L)
"hello"
class("heloo")
class("8")
class('hi')
x<-'6'
x<-"4"
y<-"7"
x+y
class(x)
class(y)

#coercion====
as.numeric(F)
as.numeric(4)
as.character(4)
as.numeric("4.5")
as.integer("4.5")
as.character(T)
as.numeric('hi')
as.numeric("heloo")


as.numeric("8")+as.numeric("4")

#complex
z=1+2i
z
class(z)
sqrt(-1)
sqrt(-1+0i)
as.complex(-1)
sqrt(as.complex(i))
sqrt(as.complex(-1))

#vectors====
c("heart","diomond","spades")
draw_suite<-c("heart","spades")
draw_suite
class(draw_suite)
is.vector(draw_suite)

remain<-c(11,2,33,12)
remain
class(remain)

remain_1<-c(11L,12L,13L)
remain_1
class(remain_1)

suite<-c("diamond","clubes","spades")
names(remain)<-suite
remain
remain["clubes"]
remain[1]


remain2<-c(heart=11,diamond=12,spades=11,clubes=14)
remain2

remain2<-c(1=11,2=12,3=13,5=12)
is.vector(remain)

my_apple<-5
my_oranges<-"six"
is.vector(my_apple)

#length fn

length(my_apple)
length(remain)

basket1<-c(12,3,4,4,6,9)
basket2<-c(5,6,3,5,2,2)
q<-basket1+basket2
q

more<-basket1>=basket2
more

#comparison operator
c(1,2,3,4,5)<=3
temp<-c(1,2,3,4,5)
temp1<-c(2,3)
temp<=temp1

b<-c(3,2.5,F)
b
class(b)
draw_ranks<-c(2,3,5,"k")
draw_ranks
class(draw_ranks)

draw_ranks[3]
draw_ranks[6]
draw_ranks[6]=5
draw_ranks
draw_ranks[5]=7

x<-0:5
x

sum(x)
x>1
sum(x>1)

x[x>1]
sum(x[x>1])
sum(x[x<3])

c(1,2,3,4,5,6)<=3
x[c(3,4)]

x[x>3]
x<3
 
sort(x,decreasing = F)
sort(x,decreasing = T)
sort(x)
x
sort(x)[2:4]
sort(x)[3:4]
sum(sort(x)[2:3])
sum(sort(x)[3:5])

x[!x%in% c(2,3)]

x[-1]
x[-2:-1]
x[c(-2:-4)]

#Matrix====

matrix(1:6,nrow = 2)
matrix(1:6,nrow = 3)
matrix(c(1,3,5,4,2,6),ncol=3)
matrix(c(1:4),ncol = 3)

matrix(1:3,nrow = 3,ncol = 3)
matrix(1:3,ncol = 2,nrow = 2)

matrix(1:4,nrow=2,ncol=4)

matrix(1:3,nrow = 2,ncol = 4)

cbind(1:3,1:3)
rbind(1:3,1:3)

cbind(c(1,2,3,4,5),c(11,12,13,14,15))
rbind(c(1,2,3,4,5),c(11,12,13,14,15))
cbind(c(1,2,3,4,5),c(11,12,13,14))

#byrow
matrix(1:6,nrow=2)
matrix(1:6,byrow = T,nrow = 2)

m<-matrix(1:6,byrow = T,nrow = 2)
rbind(m,7:9)
cbind(m,c(10,11))

rownames(m)<-c("row1","row2")
m
colnames(m)<-c("col1","col2","col3")
m

m<-matrix(1:8,byrow = TRUE,nrow = 2,
          dimnames = list(c("row1","row2"),c("col1","col2","col3","col4")))
m

is.matrix(m)
is.vector(m)

char<-matrix(LETTERS[1:6],nrow=4,ncol=3)
char
matrix(LETTERS[1:6],nrow = 3)

#subset====
m<-matrix(sample(1:15,12),nrow=3)
m
m[1:3]


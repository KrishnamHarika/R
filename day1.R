2*3
2*3
A==B||A<B
A=10
A<-213L;
A<-'Pavan'
A==B||A<B
B=15
A==B||A<B
!(A==B||A<B)
##VECTORS ====
A<-C(1,2,3)
##VECTORS
A<-c(1,2,3)
A<-c(10,23,43)
A
B<-c("1","2","Alpha")
B
C<-c(T,T,F,F)
C
1:10
letters[1:10]
LETTERS
B<-vector(mode="numeric")
B
##exe====
A<-c(10,"pavan",24)
A
B<-c("Pavan","Kumar",TRUE)
B
##exe
A<-c(10,"pavan",24)
class(A)
B<-c("Pavan","Kumar",TRUE)
class(B)
C<-c(TRUE,FALSE,10,11)
class(C)
D<-c("pavan",10,TRUE,"FALSE")
class(D)
A<-c(1,17,14,7,4,-3,18,9,3,5,2.8)
A>9
A[A>9]
A<0
A[A<0]
A[1:2]
A[c(1,2)]
A[c(1,7)]
A<-seq(1,20,by=2)
A
A[c(5,6,7)]
A[5:7]
A<-c(75:350)
A[A/2]
A[A%2]
A[A%%2]
A[A%%2=0]
A[A%%2==0]
A[A%%2==0|A%%3==0]
A[A%%3==0 & A%%5==0]

A<-1:5
B<-11:20
A+B
A<-1:4
B<-11:20
A+B
A*B
A-B

##Matrix====
A<-matrix(data=1:6,nrow=2,byrow=F)
A
matrix(data=1:6,nrow=2,byrow=F)
matrix(data=1:6,byrow=F)
matrix(data=1:6,ncol=3,byrow=F)
matrix(data=1:6,nrow=2,byrow=F,dimnames=list(c("r1","r2"),c("c1","c2","c3")))

A[2]
A[,2]
B<-matrix(data=1:6,nrow=3,byrow=F)
B
B[2]
B[2,]
B[3,2]
A<-matrix(data=1:6,nrow=2,byrow=F,dimnames=list(c("r1","r2"),c("c1","c2","c3")))
dim(A)
t(A)

A<-matrix(c(11,14,17,16,14,18,9,26,2),ncol=3,byrow=F)
A
A[A[,2]>15,]

B<-1:5
C<-6:10
cbind(B,C)
rbind(B,C)
dim(rbind(B,C))
A
A[5]<-"Alpha"

##data frames====

A<-c(10,20,30,40,50)
B<-letters[1:5]
C<-c(T,T,F,F,T)
D<-data.frame(A,B,C)



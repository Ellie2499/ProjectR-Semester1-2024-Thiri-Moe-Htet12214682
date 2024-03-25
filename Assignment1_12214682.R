x<-3
print(x)

x
msg<-'hello'
y<-x#incomplete expression
print(y)
x<-1:20
x
x<-1:1000
x
#'cat'=character, 2.3=numeric or real number, 20=integer, 10e, 1+0i=complex, T or F= logical
#1=numeric, 1L=integer adding L makes it an integer.
#Inf=infiinity, E.g. 1/0, 1/Inf=0
#NaN Not a number, E.g. 0/0 cuz is an integer. 
1/Inf
#a vector is a set of values.
#c()is a function to make a vector. 
x<-c(1:120,TRUE)
x
name<-c("altynai",'azizabak',"sehee",'moe')
name
#vector() function #numeric, logical, character,complex, integer 
x<-vector('logical', length=3)
x
#############################

b<-c('ellie', 25, 170.8, 'bi','burmese')
b
class(b)
#if there be any characters in a vector, they override all other classes and make the vector itself a character class
d<-c('a',TRUE,FALSE,TRUE)
d
class(d)
#characters>n>l>i
z<-c('A',2,3)
z<-1:5
class(z)
as.numeric(z)
as.logical(z)
as.character(z)
m<-matrix(nrow=5,ncol=3)
m
dim(m)
attributes(m)
j<-matrix(1:12, nrow=4, ncol=3)
j
k<-1:5
k
dim(k)<-c(1,5)
k
#cbind= column bind, rbind= row bind
x<-1:3
y<-6:10
cbind(x,y)
rbind(x,y)
x<-1:3
y<-6:8
o=cbind(x,y)
rbind(x,y)
dim(o)
attribute(o)
str
q=c(3,4,5,2,5,5)
j=matrix(q,nrow=2,ncol=3)
j
x<-list(1,'a',(TRUE,2.3), 1+4i)
x
#lists can contain diff classes but vectors can contain only one class. 
x<-factor(c('yes','yes','no','yes','no'),levels(x)<-c('yes','no'))#factor for assigning labels 
x
table(x)
g<-factor(c('male','male','female','male','female','female','male','boy'))
g
table(g)
unclass(x)#changing classes to numerical forms 
unclass(g)
#missing values->NaN= not a number, NA= not available 
x<-c(1,2,NA,10.3,NaN)
is.na(x)
is.nan(x)
#read.table(),read.csv(),data.matrix()
y<-data.frame(foo=1:4, bar=c(T,T,F,F))
y
nrow(y)
ncol(y)
data.matrix(y)
stu<-data.frame(name=c('a','b','c','d'),
                gpa=c(3.2,4.2,4.4,3.8),
                gen=c('male','female','female','male'))
stu
str(stu)
#4 observations of 3 variables 
cbind(y,stu)
rbind(stu,y)
names(x)
x
names(x)<-c('l','m','n','o','p')
names(x)
x
#assigning names to a list
m<-matrix(1:5,nrow=1,ncol=5)
dimnames(m)<-list(c('row'),c('a','b','c','d','e'))
m
head(m)#shows first 6 observations by default
tail(m)#shows last 6 observations by default
head(stu,3)
tail(stu,1)
con<-file('foo.txt','r')
data<-read.csv(con)
close(con)
con<-url('https://github.com/Ellie2499/ProjectR-Semester1-2024-Thiri-Moe-Htet12214682.git')
x<-c('a','b','c','c','d','a')
x[1]
x[1:4]
x[x>'a']
u<-x>'a'#shows anything except a 
u
x[u]
x<-list(foo=1:4,bar=0.6)
x[1]
x$bar
x[['bar']]
x['bar']

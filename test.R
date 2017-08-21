# Vector

x <- vector("character", length=10)

x1 <- 1:4

x2 <- c(1,2,3,4)

x3 <- c(TRUE,2,3,"a")

x4 <- c("a", "b", "c")
as.numeric(x4)
as.logical(x4)
as.character(x4)

class(x1)
names(x1) <- c("a","b","c","d")

# Matrix & Array

x <- matrix(1:6, nrow = 3, ncol = 2)

attributes(x)

y <- 1:6
dim(y) <- c(2,3)

y3 <- matrix(1:6, nrow=2, ncol=3)

rbind(y,y3)
cbind(y,y3)

x <- array(1:24, dim = c(4,6))
x1 = array(1:24, dim = c(2,3,4))

# list
l <- list("a", 2, 10L, 3+4i, TRUE)

l2 <- list(a=1, b=2, c=3)

l3 <- list(c(1,2,3),c(4,5,6,7))

x <- matrix(1:6, nrow=2, ncol=3)
dimnames(x) <- list(c("a","b"),c("c", "d", "e"))

# factor

x <- factor(c("female", "male", "female", "female", "male"))
x1 <- factor(c("female", "male", "female", "female", "male"), levels = c("male", "female"))

table(x)
unclass(x)

# missing value
x <- c(1,NA,2,NA,3)
is.na(x)
is.nan(x)

x <- c(1,NaN,2,NaN,3)
is.na(x)
is.nan(x)

# data frame

df <- data.frame(id=c(1,2,3,4),name=c("a","b","c","d"), gender=c(TRUE,TRUE,FALSE,FALSE))

# Date and time
x <- date()
x2 <- Sys.Date()
x3 <- as.Date("2017-12-22")

weekdays(x3)
months(x3)
quarters(x3)
julian(x3)

x4 <- as.Date("2016-12-22")
x4-x3
as.numeric(x3-x4)

# Timex
x <- Sys.time()
p <- as.POSIXlt(x)

names(unclass(p))

p$sec
as.POSIXct(p)

as.Date("2017-01-01")
x1 <- "Jan 1, 2017 01:01"
strptime(x1, "%B %d, %Y %H:%M")

x <- 1:10
x[1]
> x[x<5]
[1] 1 2 3 4
> x>5
[1] FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
> x>5 and x<8
错误: unexpected symbol in "x>5 and"
> x x<8
错误: unexpected symbol in "x x"
> x[5<x<7]
错误: 意外的'<' in "x[5<x<"
> x[x>5 & x<7]
[1] 6
> x[x<3 & x>7]
integer(0)
> x[x<3 | x>7]
[1]  1  2  8  9 10
> x
[1]  1  2  3  4  5  6  7  8  9 10
> name(x) <- c("a", "b","c","d","e","f","g","h","i","g")
Error in name(x) <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "g") : 
  没有"name<-"这个函数
> names(x) <- c("a", "b","c","d","e","f","g","h","i","g")
> x
a  b  c  d  e  f  g  h  i  g 
1  2  3  4  5  6  7  8  9 10 
> x[2]
b 
2 
> x['a']
a 
1 
> x['g']
g 
7 
> x <- matrix(1:8, nrow=2, nclo=3)
Error in matrix(1:8, nrow = 2, nclo = 3) : 参数没有用(nclo = 3)
> x <- matrix(1:8, nrow=2, ncol=3)
Warning message:
  In matrix(1:8, nrow = 2, ncol = 3) : 数据长度[8]不是矩阵列数[3]的整倍数
> x <- matrix(1:12, nrow=2, ncol=3)
> x
[,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
> x[1,2]
[1] 3
> x[1,]
[1] 1 3 5
> x[,2]
[1] 3 4
> x[2,c(1,3)]
[1] 2 6
> x[c(1,2),3]
[1] 5 6
> x[c(1,),3]
Error in c(1, ) : 2元素是空的
> x[c(1),3]
[1] 5
> class(x[1,2])
[1] "integer"
> class(x[c(1,2),3])
[1] "integer"
> x[1,2,drop=FALSE]
[,1]
[1,]    3
> x <- data.frame(v1=1:5, v2=6:10, v3=11:15)
> x
v1 v2 v3
1  1  6 11
2  2  7 12
3  3  8 13
4  4  9 14
5  5 10 15
> x$v3[c(2,4)]
[1] 12 14
> x$v3[c(2,4)]<-NA
> x
v1 v2 v3
1  1  6 11
2  2  7 NA
3  3  8 13
4  4  9 NA
5  5 10 15
> x[,2]
[1]  6  7  8  9 10
> x[,'v2']
[1]  6  7  8  9 10
> subset(x,x$v1>2 )
v1 v2 v3
3  3  8 13
4  4  9 NA
5  5 10 15


# Subsetting List
x <- list(id=1:4, height=170, gender="male")
x[1]
x["id"]
x[[1]]
x[["id"]]
x$height
x$gender
x[c(1,3)]

y<-'id'
x[["id"]]
x[[y]]

x$id
x$y # error!

# subsetting nested elements of a list
x<-list(a=list(12,43,78,92),b=c('monday','tuesday'))
x[[1]][[2]]
x[[1]][2]
x[[c(1,3)]]
x[[c(2,2)]]


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

# Time
x <- Sys.time()
p <- as.POSIXlt(x)

names(unclass(p))

p$sec
as.POSIXct(p)

as.Date("2017-01-01")
x1 <- "Jan 1, 2017 01:01"
strptime(x1, "%B %d, %Y %H:%M")
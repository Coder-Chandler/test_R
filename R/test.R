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
x$y # error

# subsetting nested elements of a list
x<-list(a=list(12,43,78,92),b=c('monday','tuesday'))
x[[1]][[2]]
x[[1]][2]
x[[c(1,3)]]
x[[c(2,2)]]

> x <- c(1,NA,2,NA,3)
> x
[1]  1 NA  2 NA  3
> x[is.na(x)]
[1] NA NA
> x[!is.na(x)]
[1] 1 2 3
> y <- c('a','b',NA,'C',NA)
> y
[1] "a" "b" NA  "C" NA 
> z <- complete.cases(x,y)
> z
[1]  TRUE FALSE FALSE FALSE FALSE
> x[z]
[1] 1
> y[z]
[1] "a"
> library(datasets)
> head(airquality)
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
3    12     149 12.6   74     5   3
4    18     313 11.5   62     5   4
5    NA      NA 14.3   56     5   5
6    28      NA 14.9   66     5   6
> g <- complete.cases(airquality)
> g
  [1]  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
 [19]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE
 [37] FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE
 [55] FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE
 [73]  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
 [91]  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE
[109]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[127]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[145]  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE
> airquality[g,]
    Ozone Solar.R Wind Temp Month Day
1      41     190  7.4   67     5   1
2      36     118  8.0   72     5   2
3      12     149 12.6   74     5   3
4      18     313 11.5   62     5   4
7      23     299  8.6   65     5   7
8      19      99 13.8   59     5   8
9       8      19 20.1   61     5   9
12     16     256  9.7   69     5  12
13     11     290  9.2   66     5  13
14     14     274 10.9   68     5  14
15     18      65 13.2   58     5  15
16     14     334 11.5   64     5  16
17     34     307 12.0   66     5  17
18      6      78 18.4   57     5  18
19     30     322 11.5   68     5  19
20     11      44  9.7   62     5  20
21      1       8  9.7   59     5  21
22     11     320 16.6   73     5  22
23      4      25  9.7   61     5  23
24     32      92 12.0   61     5  24
28     23      13 12.0   67     5  28
29     45     252 14.9   81     5  29
30    115     223  5.7   79     5  30
31     37     279  7.4   76     5  31
38     29     127  9.7   82     6   7
40     71     291 13.8   90     6   9
41     39     323 11.5   87     6  10
44     23     148  8.0   82     6  13
47     21     191 14.9   77     6  16
48     37     284 20.7   72     6  17
49     20      37  9.2   65     6  18
50     12     120 11.5   73     6  19
51     13     137 10.3   76     6  20
62    135     269  4.1   84     7   1
63     49     248  9.2   85     7   2
64     32     236  9.2   81     7   3
66     64     175  4.6   83     7   5
67     40     314 10.9   83     7   6
68     77     276  5.1   88     7   7
69     97     267  6.3   92     7   8
70     97     272  5.7   92     7   9
71     85     175  7.4   89     7  10
73     10     264 14.3   73     7  12
74     27     175 14.9   81     7  13
76      7      48 14.3   80     7  15
77     48     260  6.9   81     7  16
78     35     274 10.3   82     7  17
79     61     285  6.3   84     7  18
80     79     187  5.1   87     7  19
81     63     220 11.5   85     7  20
82     16       7  6.9   74     7  21
85     80     294  8.6   86     7  24
86    108     223  8.0   85     7  25
87     20      81  8.6   82     7  26
88     52      82 12.0   86     7  27
89     82     213  7.4   88     7  28
90     50     275  7.4   86     7  29
91     64     253  7.4   83     7  30
92     59     254  9.2   81     7  31
93     39      83  6.9   81     8   1
94      9      24 13.8   81     8   2
95     16      77  7.4   82     8   3
99    122     255  4.0   89     8   7
100    89     229 10.3   90     8   8
101   110     207  8.0   90     8   9
104    44     192 11.5   86     8  12
105    28     273 11.5   82     8  13
106    65     157  9.7   80     8  14
108    22      71 10.3   77     8  16
109    59      51  6.3   79     8  17
110    23     115  7.4   76     8  18
111    31     244 10.9   78     8  19
112    44     190 10.3   78     8  20
113    21     259 15.5   77     8  21
114     9      36 14.3   72     8  22
116    45     212  9.7   79     8  24
117   168     238  3.4   81     8  25
118    73     215  8.0   86     8  26
120    76     203  9.7   97     8  28
121   118     225  2.3   94     8  29
122    84     237  6.3   96     8  30
123    85     188  6.3   94     8  31
124    96     167  6.9   91     9   1
125    78     197  5.1   92     9   2
126    73     183  2.8   93     9   3
127    91     189  4.6   93     9   4
128    47      95  7.4   87     9   5
129    32      92 15.5   84     9   6
130    20     252 10.9   80     9   7
131    23     220 10.3   78     9   8
132    21     230 10.9   75     9   9
133    24     259  9.7   73     9  10
134    44     236 14.9   81     9  11
135    21     259 15.5   76     9  12
136    28     238  6.3   77     9  13
137     9      24 10.9   71     9  14
138    13     112 11.5   71     9  15
139    46     237  6.9   78     9  16
140    18     224 13.8   67     9  17
141    13      27 10.3   76     9  18
142    24     238 10.3   68     9  19
143    16     201  8.0   82     9  20
144    13     238 12.6   64     9  21
145    23      14  9.2   71     9  22
146    36     139 10.3   81     9  23
147     7      49 10.3   69     9  24
148    14      20 16.6   63     9  25
149    30     193  6.9   70     9  26
151    14     191 14.3   75     9  28
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30
> airquality[g,][1:10]
Error in `[.data.frame`(airquality[g, ], 1:10) : 
  undefined columns selected
> airquality[g,][1:10,]
   Ozone Solar.R Wind Temp Month Day
1     41     190  7.4   67     5   1
2     36     118  8.0   72     5   2
3     12     149 12.6   74     5   3
4     18     313 11.5   62     5   4
7     23     299  8.6   65     5   7
8     19      99 13.8   59     5   8
9      8      19 20.1   61     5   9
12    16     256  9.7   69     5  12
13    11     290  9.2   66     5  13
14    14     274 10.9   68     5  14
> x <- 1:5
> y <- 6:10
> x+y
[1]  7  9 11 13 15
> x*y
[1]  6 14 24 36 50
> x/y
[1] 0.1666667 0.2857143 0.3750000 0.4444444 0.5000000
> x**y
[1]       1     128    6561  262144 9765625
> x <- matrix(1:4, nrow=2,ncol=2)
> y <- matrix(rep(2,4),nrow=2,ncol=2)
> x*y
     [,1] [,2]
[1,]    2    6
[2,]    4    8
> x/y
     [,1] [,2]
[1,]  0.5  1.5
[2,]  1.0  2.0
> x
     [,1] [,2]
[1,]    1    3
[2,]    2    4
> y
     [,1] [,2]
[1,]    2    2
[2,]    2    2
> x+y
     [,1] [,2]
[1,]    3    5
[2,]    4    6
> rep(2,4)
[1] 2 2 2 2
> x %*% y
     [,1] [,2]
[1,]    8    8
[2,]   12   12

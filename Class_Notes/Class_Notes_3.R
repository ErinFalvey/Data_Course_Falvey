#write a for loop that prints the results of 1+x 
x <- c(1,2,3,4,5)
class(x)
length(x)
length(length(x))
class(class(x))
c(1,"a")
c(1:10,"a")

#vector 
#has a class (numeric,character)
#has one dimension
#must all be same class
#length can = 0
1:5 + 1:5

#write a for loop that prints the results of 1+x 
for (i in x) {
  print(i+1)
}
head(letters,n=10)
x+1
1:5
seq(1,1000,by=7)
x^3

a<- 1:10
b<- 2:11
c <- letters[c(1:10)]
a
b
c
cbind(a,b,c)
d <- rep(TRUE,10)
z <- data.frame(a,b,c,d)
class(d)
# class, length, dimesions
class(z)
length(z)
dim(z)

#logical class vector
1 > 0
0>= 0
3 < 1
1 == 1
1 !=1
5 > a
z[5 > a,]
z[1,3]

# pull out rows of z where column c is equal to "b"
z[c == "b",]

z[1,]
iris
#rows of iris where Sepal.Length is greater than 5
iris[Sepal.Length > 5,]
iris$Sepal.Length > 5

big_iris <- iris[iris$Sepal.Length > 5,]
#new column in big_iris that is equal to Sepal.Lemgth times Sepal.Width
big_iris$Sepal.Area <- big_iris$Sepal.Length * big_iris$Sepal.Width

#show just "setosa" from big_iris
big_setosa <- big_iris[big_iris$Species == "setosa",]

#mean sepal area from big_setosa
mean(big_setosa$Sepal.Area)
plot(big_setosa$Sepal.Length,big_setosa$Sepal.Width)
sd(big_setosa$Sepal.Area)
sum(big_setosa$Sepal.Area)
min(big_setosa$Sepal.Area)
max(big_setosa$Sepal.Area)
summary(big_setosa$Sepal.Area)
cumsum(big_setosa$Sepal.Area)
cumprod(big_setosa$Sepal.Area)



#data frames ave two dimensions [row , column]
install.packages("qrcode")
library(qrcode)
url <- "https://gzhan.github.io/datacourse/"
qr <- qrcode::qr_code(url)
plot(qr)

library(tidyverse) #next class

mean()
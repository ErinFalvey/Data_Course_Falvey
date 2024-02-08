#1
#build a data frame from mtcars with rows that have more than 4 cylinder
df <- mtcars[mtcars$cyl > 4,]

#2
#pull out just the miles per gallon of those cars (mpg) and find the mean min and max
mean(df$mpg)
min(df$mpg)
max(df$mpg)


#object types ####
##logical ####
c(TRUE,TRUE,FALSE)
##numeric ####
1:10
##character ####
letters[3]
##interger ####
c(1L,2L,3l)
##data.frame ####
mtcars[rows,cols]
## factor ####
# annoying but useful
as.factor(letters)

haircolors <- c("brown","blonde","black","red","red","black")
as.character(as.factor(haircolors),"purple")
haircolors_factor <- as.factor(haircolors)
haircolor_factor[7] <- "purple"
levels(haircolors_factor)



1:5 # numeric
as.character(1:5) #convert to character
as.numeric(letters)

as.numeric(c("1","b","35"))
x <- as.logical(c("true","t","F","False","T"))
sum(x,na.rm = TRUE)
sum(TRUE)

# data frames ####
str(mtcars)
names(mtcars)
# as.character(mtcars)
as.character(mtcars$mpg)
mtcars[,"mpg"]
# for-loop assigns character version of every column over itsself
for(col in names(mtcars)){
  mtcars[,col] <- as.character(mtcars[,col])
}
mtcars
str(mtcars)
path <- "./Data/cleaned_bird_data.csv"
df <- read.csv(path)
str(df)

#convert all columns to a charcater
for (col in names(df)){
  df[,col] <- as.character(df[,col])
}

apply(mtcars,2,as.factor)

#wrie the new file to your computer
write.csv(df,file = "./Data/cleaned_bird_data_chr.csv")



data("mtcars") #resets built-in data
str(mtcars)

# 'apply'family functions.  1 is rows 2 is column
apply(mtcars,2,as.factor)

lapply(list, function)
sapply(list, function)
vapply(list, function)

# packages ####

##tidyverse #### 
# pipe %>% %>% control shift m = %>% 
# thing on left becomes first argument on the thing on right
library(tidyverse)
# filter helps us subset data frames by rows
mtcars %>% 
  filter(mpg > 19 & vs ==1)

# pipe %>% %>% control shift m = %>% 
# thing on left becomes first argument on the thing on right
mtcarsmpg %>% mean()

abs(mean(mtcars$mpg))

mtcars$mpg
mtcars %>% 
  filter(mpg > 16 & vs == 1)

mtcars %>% 
  filter(mpg > 18 & vs == 2)


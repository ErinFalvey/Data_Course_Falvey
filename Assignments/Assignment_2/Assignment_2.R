#Task 4
list.files(pattern = ".csv")

#Task 5
list.files(pattern = ".csv",recursive = TRUE)

# Task 6
readLines("wingspan_vs_mass.csv")
list.files(pattern = "wingspan_vs_mass.csv",recursive = TRUE)
df <- read.csv(list.files(pattern = "wingspan_vs_mass.csv",recursive = TRUE))

#task 7
#Inspect the first 5 lines of this data set using the head() function
head(df,n = 5)

#Task 8
#Find any files (recursively) in the Data/ directory that begin with the letter "b"
list.files(path = "Data",pattern = "^b",recursive = TRUE)


#Task 9
bfiles <- list.files(path = "Data",pattern = "^b",recursive = TRUE,full.names = TRUE)
head(bfiles,n=1)
readLines(bfiles[1])
readLines(bfiles[1],n=1)

# for-loop
for (i in bfiles){
print(readLines(i,n=1)) 
}

x <- c("Cool","Boring","Stupid")
for (i in x) {
  print(paste("Your mom is",i))
}
#Task 10
for (i in x) {
  print(paste())
}

#write a for loop that prints the results of 1+x 
x <- c(1,2,3,4,5)
for (i in x) {
  print(i+1)
}

x+1
1:5
seq(1,1000,by=7)
x^3




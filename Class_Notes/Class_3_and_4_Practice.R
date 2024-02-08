1+1
x <- 1 + 1
x
scores <- c(5,6,1,6,3)
scores[3]
scores[3] + scores[5]
x <- c(2,6,3,2,3)        
scores + x
scores * x
scores / x
scores^x
sum(scores)
players <- c("Rachel", "Tatyana", "Noah", "Quentin", "Aishsa")
players[2]
x <- c(2,6,3,2,3)
x[5] / x[3]
scores+ x
scores* x
players <- c("Erin", "Laney", "Hunter", "Jess", "Kale")
players[3]
data.frame(player = c("Erin", "Laney", "Hunter", "Jess", "Kale"), score = c(5, 6, 1, 6, 3))
dice <- data.frame(player = players, scores = scores)
games <- c("BlackJack", "BlackJack", "Poker", "Roulette", "Poker")
data.frame(player = c("Erin", "Laney", "Hunter", "Jess", "Kale"),
           score = c(2,6,3,2,3), games = c("BlackJack", "BlackJack", "Poker", "Roulette", "Poker"))
dice <- data.frame(player = players, scores = scores, games = game)
money <- c(200, 165, 132, 173, 96)
dice <- data.frame(player = players, score = scores, games = games, money = money)
color <- c("Red", "Blue", "Green", "Purple", "Orange") 
dice <- data.frame(player = players, score = scores, games = games, money = money
                   , color = color)
#Data from the video
wingspan_vs_mass <- read.csv("./Data/wingspan_vs_mass.csv")
nrow(wingspan_vs_mass)
ncol(wingspan_vs_mass)
dim(wingspan_vs_mass)
head(wingspan_vs_mass)
tail(wingspan_vs_mass)
str(wingspan_vs_mass)
wingspan_vs_mass[2 , 4]
wingspan_vs_mass[8 , 3]
wingspan_vs_mass[2:5 , 4]
wingspan_vs_mass[2:5 , 3:4]
wingspan_vs_mass[2:5, ]
wingspan_vs_mass[c(2 , 4), ]
wingspan_vs_mass[, c(1 , 3)]
wingspan_vs_mass$wingspan
wingspan_vs_mass$mass[5]
wingspan_vs_mass$observation
wingspan_vs_mass[wingspan_vs_mass$observation == 29, ]
wingspan_vs_mass[wingspan_vs_mass$observation >= 29, ]
wingspan_vs_mass[wingspan_vs_mass$velocity > 20, ]
wingspan_vs_mass[wingspan_vs_mass$variety == "African"]
min(wingspan_vs_mass$observation)
mean(wingspan_vs_mass$wingspan)
max(wingspan_vs_mass$wingspan)
wingspan_vs_mass[wingspan_vs_mass$wingspan > 20, ]
x <- c(TRUE, TRUE, FALSE, FALSE)
y <- c(TRUE, FALSE, TRUE, FALSE)
# NOT operator
!x

# AND operator
x & y

# OR operator
x | y

wingspan_vs_mass[!wingspan_vs_mass$observation, ]
wingspan_vs_mass[!wingspan_vs_mass$mass, ]

#Object types
#Logical
c(TRUE, TRUE, FALSE, FALSE)

#Numeric
1:10

#Characters
letters[3]

#Interger


#data.frame
wingspan_vs_mass[rows, cols]

#factor
as.factor
as.factor(letters)

games <- c("BlackJack", "Spades", 'Poker', "Speed", "Roulette")
as.character(as.factor(games), "Sapdes")
haircolors <- c("brown", "blonde", "black", "red")
as.character(as.factor(haircolors),"purple")
levels(haircolors)

# numeric
1:5
str(wingspan_vs_mass)
names(wingspan_vs_mass)
as.character(wingspan_vs_mass$observation)
wingspan_vs_mass[, "wingspan"]
wingspan_vs_mass[, "velocity"]
df <- read.csv


for (column in velocity(df)) {
  df[col]
}




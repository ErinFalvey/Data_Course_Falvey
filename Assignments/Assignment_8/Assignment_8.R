library(modelr)
library(easystats)
library(broom)
library(tidyverse)
library(fitdistrplus)


### 1.loads the “/Data/mushroom_growth.csv” data set
df <- read_csv("/Users/erinfalvey/Desktop/Data_Course_Falvey/Data/mushroom_growth.csv")
### 2.creates several plots exploring relationships between the response and predictors
ggplot(df, aes(x=Light,y=GrowthRate)) + 
  geom_point(aes(size=Nitrogen)) + 
  geom_smooth(method = "lm") +
  theme_minimal()

ggplot(df, aes(x=Nitrogen,y=GrowthRate)) + 
  geom_point(aes(size=Light)) + 
  geom_smooth(method = "lm") +
  theme_minimal()

ggplot(df, aes(x=Temperature,y=GrowthRate)) + 
  geom_point(aes(size=Humidity)) + 
  geom_smooth(method = "lm") +
  theme_minimal()

ggplot(df, aes(x=GrowthRate,y=Humidity)) + 
  geom_col(aes(color=Species)) + 
  geom_smooth(method = "lm") +
  theme_minimal()
### 3.defines at least 4 models that explain the dependent variable “GrowthRate”

#Best model = mod1
mod1 <- lm(Light ~ GrowthRate, data = df)
summary(mod1)

mod2 <- glm(GrowthRate ~ Light + Temperature, data = df)
summary(mod2)

mod3 <- lm(Nitrogen ~ GrowthRate, data = df)
summary(mod3)

mod4 <- glm(GrowthRate ~ Light + Nitrogen, data = df)
summary(mod4)
### 4.calculates the mean sq. error of each model
mean(mod1$residuals^2) #52.78333

mean(mod2$residuals^2) #7610.704

mean(mod3$residuals^2) #222.0957

mean(mod4$residuals^2) #7697.293

### 5.selects the best model you tried
  #Module 1 was the best model tested

###adds predictions based on new hypothetical values for the independent variables 
  ###used in your model plots these predictions alongside the real data
df %>% 
  gather_predictions(mod1,mod2,mod3) %>% 
  ggplot(aes(x=Light,y=GrowthRate)) +
  geom_point(size=3) +
  geom_point(aes(color=Species)) +
  theme_minimal() +
  annotate("text",x=250,y=32,label=mod1$call) +
  annotate("text",x=250,y=30,label=mod2$call) +
  annotate("text",x=250,y=28,label=mod3$call)

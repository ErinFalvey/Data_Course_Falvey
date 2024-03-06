library(tidyverse)
library(janitor)
library(skimr)
library(easystats)
library(patchwork)


# Read in data and clean names
df <- read_csv("/Users/erinfalvey/Desktop/Data_Course_Falvey/Data/Utah_Religions_by_County.csv")
df <- df %>% janitor::clean_names()
names(df)
str(df)
unique(df)
dim(df)
summary(df)

# Tidy
dat <- df %>% 
  select(-religious) %>% 
  pivot_longer(cols = 3:16,
               names_to = "religion",
               values_to = "proportion")

# Religions in utah county
dat %>% 
  ggplot(aes(x = religion, y = proportion, 
             fill = religion))+
  geom_col()+
  theme(axis.text.x = element_text(angle=90))

# Question 1: Does population correlate to proportion of specific religious groups in that county?
dat %>% 
  ggplot(aes(x = population, y = proportion, group = religion, color = religion))+
  geom_jitter(alpha = 0.25)+
  geom_point()+
  theme(axis.text.x = element_text(angle = 90))

#Comments: When analyzing the data, it seems that the lower the lower population
#in a county correlates to a higher LDS population 

# Question 2:Does proportion of any specific religion in a given county correlate 
#with the proportion of non-religious people?
dat %>% 
  ggplot(aes(x = non_religious,
             y = proportion, 
             color = religion))+
  geom_point()+
  facet_wrap(~county)

#Comments: 
# It does not correlate

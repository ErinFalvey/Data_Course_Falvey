####Exam 2 Retake####

#Tasks:
##1. Read in the unicef data (10 pts) 
library(tidyverse)
library(skimr)
library(janitor)
library(patchwork)
library(easystats)
library(gapminder)

data <- read_csv("unicef-u5mr.csv")

head(unicef_u5mr)
colnames(unicef_u5mr)
summary(unicef_u5mr)
str(unicef_u5mr)
#2. Get it into tidy format (10 pts) 
data <- janitor::clean_names(data)

data <- data %>% 
  pivot_longer(starts_with("u5mr_"),
               names_to = "year",
               values_to = "u5mr") %>% 
  rename(country = country_name) %>% 
  mutate(year = str_remove(year, "u5mr_")) %>% 
  mutate(year = as.numeric(year))

#3. Plot each country's U5MR over time
plot1 <- data %>% 
  ggplot(aes(x = year, y = u5mr)) +
  geom_path() +
  facet_wrap(~continent) +
  theme_bw()
print(plot1)

#4. Save this plot as LASTNAME_Plot_1.png
ggsave("./FALVEY_Plot_1.png", plot = plot1)

#5. Create another plot that shows the mean u5mr for all the countrues within a given continent 
num5 <- data %>% 
  group_by(year, continent) %>% 
  summarise(meanu5mr = mean(u5mr, na.rm = TRUE))
plot2 <- num5 %>% 
  ggplot(aes(x = year, y = meanu5mr,
             color = continent,
             group = continent)) +
  geom_line() +
  theme_bw()
print(plot2)

#6. Save plot
ggsave(".FALVEY_Plot_2.png", plot = plot2)

#7. Create three models of U5MR
mod1 <- glm(data = data, formula = year ~ u5mr)
summary(mod1)

mod2 <- glm(data = data, formula = u5mr ~ year + continent)
summary(mod2)

mod3 <- glm(data = data, formula = u5mr ~ year * continent)
summary(mod3)

#8. Compare the models
compare_performance(mod1,mod2,mod3)
compare_performance(mod1,mod2,mod3) %>% plot
###When analyzing the models, I believe that mod3 is the best model due to the R2 being higher than the others

#9. Plot the 3 models prediction
data$mod1 <- predict(mod1, data)
data$mod2 <- predict(mod2, data)
data$mod3 <- predict(mod3, data)

  
  

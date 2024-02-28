library(tidyverse)
library(stringr)
library(janitor)
library(patchwork)
library(gganimate)
library(transform)
dat <- read_csv("/Users/erinfalvey/Desktop/Data_Course_Falvey/Data/BioLog_Plate_Data.csv")
dat <- dat %>% 
  pivot_longer(starts_with("Hr_"),
               names_to = "time",
               values_to = "absorbance") %>% 
  mutate(time = str_remove(time, "Hr_")) %>% 
  mutate(time = as.numeric(time))

dat <- clean_names(dat) 

# Task 2:
unique(dat$sample_id)
dat <- dat %>% 
  mutate(sample_source = case_when(
    sample_id %in% c("Clear_Creek","Waste_Water") ~ "water",
    sample_id %in% c("Soil_1","Soil_2") ~ "soil"))

# Task 3: 
dil0.1 <- dat %>% 
  filter(dilution == 0.1)

dil0.1 %>%
  ggplot(aes(x = time, 
             y = absorbance, 
             color = sample_source)) +
  geom_smooth(se = FALSE) +
  geom_point() +
  facet_wrap(~substrate) +
  theme_minimal() +
  labs(x = "Time", y = "Absorbance", color = "Type")

# Task 4:
itaconic_acid <- dat %>% 
  filter(substrate == "Itaconic Acid") %>% 
  group_by(sample_id, dilution, time) %>% 
  summarize(average_absorbance = mean(absorbance))

itaconic_acid %>% 
  ggplot(aes(x = time,
             y = average_absorbance,
             group = sample_id,
             color = sample_id))+
  geom_line()+ 
  scale_y_continuous(breaks = c(0.0, 0.5, 1, 1.5, 2.0, 2.5)) +
  facet_wrap(~dilution)+
  transition_reveal(time) +
  labs(color = "Sample ID") +
  theme_minimal()

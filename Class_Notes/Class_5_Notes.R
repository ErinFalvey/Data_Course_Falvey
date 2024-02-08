library(tidyverse)
library(palmerpenguins)
x <- penguins %>% 
x <- penguins %>% 
  filter(bill_length_mm > 40 & sex == "female")
x$body_mass_g %>% mean

# find mean body mass of female long-beaked penguins
penguins %>% 
  filter(bill_length_mm > 40 & sex == "female") %>% 
  pluck("body_mass_g") %>% 
  mean

# do the same but for each species
penguins %>% 
  filter(bill_length_mm > 40 & sex == "female") %>% 
  group_by(species,island) %>% #commas to separate all grouping columns
  summarize(mean_body_mass = mean(body_mass_g),
            min_body_mass = min(body_mass_g),
            max_body_mass = max(body_mass_g),
            sd_body_mass = sd(body_mass_g),
            N = n()) %>% 
  arrange(desc(mean_body_mass)) %>% 
  write_csv("./Data/penguin_summary.csv")

penguins$body_mass_g %>% plot
#find the fattie penguins ( body_mass > 5000)
#count how many are male and how many are females
#Return the max body mass for males and females
#bonus: add new column to penguins that says whether they're a fattie

penguins %>% 
  filter(body_mass_g > 5000) %>%
  group_by(sex) %>%
  summarize(max_body_mass_g = max(body_mass_g),
            N = n())
penguins %>% 
  mutate(fattie = body_mass_g > 5000)
 
x <-
penguins %>% 
  mutate(fatstat = case_when(body_mass_g > 5000 ~ "fattie", 
                             body_mass_g <= 5000 ~ "skinny"))


x %>% 
  ggplot(mapping = aes(x=body_mass_g,
                       y=bill_length_mm,
                       color = fatstat)) +
  geom_point() +
  geom_smooth() +
  scale_color_manual(values = c("turquoise","darkblue"))
  scale_color_viridis_d(option = 'turbo',end= .8) 
  
# :: = name space
#Geom_Col
names(penguins)
ggplot(penguins,mapping = aes(x = flipper_length_mm,
                              y = body_mass_g,fill=species)) +
  geom_col()

#Geom_Line
names(penguins)
ggplot(penguins,mapping = aes(x = flipper_length_mm,
                              y = body_mass_g,color=species)) +
  geom_line(aes(group=species))








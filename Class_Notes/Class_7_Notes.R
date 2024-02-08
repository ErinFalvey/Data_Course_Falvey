library(tidyverse)
library(palmerpenguins)
library(leaflet)

# make an intersesting plot of the penguin data
x <- penguins
x  %>% 
names(penguins)
ggplot(penguins,mapping = aes(x = flipper_length_mm,
                              y = body_mass_g,color=species,alpha=bill_depth_mm)) +
  geom_path(aes(group=species)) +
  geom_point()
geom_col() +
  geom_jitter()

penguins %>% 
  ggplot(aes(x=year,
             y=body_mass_g)) +
  
  geom_jitter(height = 0, width = .1, alpha = .2)

penguins %>% 
  ggplot(aes(x=body_mass_g, fill=species)) +
  geom_histogram(alpha=.5)

read_delim("./Data/DatasaurusDozen.tsv")
df <- read_delim("./Data/DatasaurusDozen.tsv")
df %>% 
  group_by(dataset) %>% 
  summarise(meanx = mean(x),
            sdx=sd(x),
            minx=min(x),
            medianx=median(x))
df %>% 
  ggplot(aes(x=x,y=y))+
  geom_point() +
  facet_wrap(~dataset)
# plot before running stats
df <- penguins
penguins %>% 
  ggplot(aes(x=body_mass_g,
             y=bill_length_mm)) +
  geom_point() +
  facet_wrap(~species)+
  geom_point(aes(color=sex), size=4,alpha=.75)
  theme_bw()
# make it easy for people to see
library(GGally)
ggpairs(penguins)

library(gapminder)



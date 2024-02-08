# Convert the following code expression into "pipe format"
# to make them more readable
library(tidyverse)

unique(stringr::str_to_title(iris$Species))
iris$Species %>% 
  stringr::str_to_title() %>% 
  unique()
# or
iris %>% 
  pluck("Species") %>% 
  stringr::str_to_title() %>% 
  unique

max(round(iris$Sepal.Length),0)


mean(abs(rnorm(100,0,5)))
seq(100,0,5) %>% 
  abs() %>% 
  mean()

median(round(seq(1,100,0.01),1))
seq(1,100,0.01) %>% 
  round(1) %>% 
  median()



#Continuation of Class 5 Notes
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

#Geom_Path
names(penguins)
ggplot(penguins,mapping = aes(x = flipper_length_mm,
                              y = body_mass_g,color=species,alpha=bill_depth_mm)) +
  geom_path(aes(group=species)) +
  stat_ellipse() +
  geom_point(aes(color=sex)) +
  geom_polygon() +
  geom_bin_2d() +
  geom_boxplot() +
  geom_hline(yintercept = 4500,linewidth=25,color='magenta',
             linetype = '1121',alpha=.25) +
  geom_point(color="yellow",aes(alpha=bill_depth_mm)) +
  geom_image(image="~")
  theme(axis.title = element_text(face = 'italic',size = 12, angle = 30),
        legend.background = element_rect(fill='hotpink',color = 'blue',linewidth = 5))
library(ggimage)
geom_image()
geom_image(image="~")




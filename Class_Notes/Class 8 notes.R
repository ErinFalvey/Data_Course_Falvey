library(tidyverse)
library(ggimage)
library(patchwork)
library(gganimate)

library(gapminder)
#make a plot with gapminder
df <- gapminder
p <- ggplot(df, aes(x=year, y=lifeExp,color=continent)) +
  geom_point(aes(size=pop))
  #facet_wrap(~continent)
  scale_colour_viridis_d()

p2 <-
p + 
  facet_wrap (~continent)
theme_dark()
p + p.dark
p / p2

names(df)
df$year %>% range

mycountries <- c("Venezuela","Rwanda","Nepal","Iraq","Afganistan","United States")
df <-
df %>% 
  mutate(mycountries = case_when(country %in% mycountries ~ country))

p3 <-
  ggplot(df,
         aes(x=gdpPercap,y=lifeExp,color=continent))+
  geom_point(aes(size=pop)) +
  geom_text(aes(label=mycountries))


# gganimate
p3 +
  transition_time(time = year) +
  labs(title = 'Year: {frame_time}')
anim_save("./Notes/gapminder_animate.gif")
ggsave("./Notes/plot_example.png",width = 6,height = 6,dpi=200)

#dpi = dots per inch, good resolution on computer 150, publish 400-500

(p +p.dark) / p.dark + plot_annotation("MAIN TITLE") +
  plot_layout(guides = 'collect')


ggplot(df, aes(x= pop, y= lifeExp,
                      color=continent)) +
  geom_line(aes(size=population))

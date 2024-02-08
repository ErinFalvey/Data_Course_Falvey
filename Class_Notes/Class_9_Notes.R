library(tidyverse)

# load this data set
df <- read_csv("./Data/wide_income_rent.csv")
df2 <-t(df) %>% as.data.frame()
class(df2)

df2 <- df2[-1,]
df2$state <-row.names(df2)
names(df2) <- c("income","rent","State")


#plot rent prices for each state
# state on x-axis, rent on y-axis, bar chart
df %>% 
  pivot_longer(-variable,names_to = "state",values_to = "amount") %>% 
 pivot_wider(names_from = variable,
             values_from = amount) %>% 
  ggplot(aes(x=state,y=rent)) +
    geom_col()+
    theme(axis.text.x = element_text(angle=90,hjust = 1,vjust = .5,size= 6))


# if one variable is across multiple columns...pivot longer
# if multiple variables are in a single column... pivot wider

table1

table2 %>% 
pivot_wider(names_from = type,values_from = count)

table3 %>% 
separate(rate, into = c("cases", "population"))


x <-
table4a %>% 
  pivot_longer(-country, names_to = "year",values_to = "cases")

y <-
table4b %>% 
  pivot_longer(-country, names_to = "year",values_to = "population")

full_join(x,y)

table5 %>% 
  separate(rate, into = c("cases","population"),convert = TRUE) %>% 
  mutate(year = paste0(century,year) %>% as.numeric()) %>% 
  select(-century)

library(readxl)
dat <- read_xlsx("./Data/messy_bp.xlsx", skip = 3)


bp <- 
  dat %>% 
  select(starts_with("HR")) 

bp %>% 
  pivot_longer(starts_with("BP"),
               names_to = "visit", 
               values_to = "bp") %>% 
  mutate(visit = case_whe(visit == "BP...8" ~ 1,
                          visit == "BP...10" ~ 2,
                          visit == "BP...12" ~ 3))
               
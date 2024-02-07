library(tidyverse)
read_csv("/Users/erinfalvey/Desktop/Data_Course_Falvey/Final_Project/REFM_LH_Alaskan Pacific cod 18 Oxygen age validation study (1).csv")
df <- REFM_LH_Alaskan_Pacific_cod_18_Oxygen_age_validation_study_1_
ggplot(df, aes(y=length_mm, x=weight_ug)) +
  geom_col()

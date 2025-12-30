library(tidyverse)
library(Ditwah)
weather_report
View(weather_report)

df <- weather_report |> filter(Daily_Rainfall_mm > 100)
View(df)

data(iris)
View(iris)
iris # dataframe
     # tibble (Modern version of dataframes)

iris <- iris |> as_tibble()
iris

iris |> filter(Sepal.Length > 5)



df3 <- weather_report |> filter(Daily_Rainfall_mm != "TR")
df3
View(df3)


df4 <- df3 |>
  mutate(rainfall = as.numeric(Daily_Rainfall_mm))
View(df4)

df5 <- df4 |>
  filter(rainfall > 100)

View(df5)

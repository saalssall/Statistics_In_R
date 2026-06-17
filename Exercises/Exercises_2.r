# ─────────────────────────────────────────────
# Libraries
# ─────────────────────────────────────────────
install.packages("dplyr")
install.packages("ggplot2")
library(dplyr)
library(ggplot2)
library(readr)

# ─────────────────────────────────────────────
# Load Data
# ─────────────────────────────────────────────
food_consumption <- 
  read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-02-18/food_consumption.csv")

# ─────────────────────────────────────────────
# Measures of Central Tendency — All Categories
# ─────────────────────────────────────────────

# Mean food consumption
mean(food_consumption$consumption)

# Median food consumption
median(food_consumption$consumption)

# Mode — most frequent food category
food_consumption |>
  count(food_category, sort = TRUE)  

# ─────────────────────────────────────────────
# Rice Category Analysis
# ─────────────────────────────────────────────

# Histogram of CO2 emissions for rice
food_consumption |>
  filter(food_category == "Rice") |>
  ggplot(aes(x = co2_emmission)) +
  geom_histogram(binwidth = 10, fill = "steelblue", color = "white")

#Analysis: only a few countries produce a very high volume of co2 
#while majority contribute to insignificant co2 emission

# Mean and median CO2 emissions for rice
food_consumption |>
  filter(food_category == "Rice") |>
  summarise(
    mean_co2   = mean(co2_emmission),
    median_co2 = median(co2_emmission)
  )

#Analysis: most countries have modest rice co2 emission with 
# 15.2kg being the typical country (better explained by median 
#as mean is sensitive to outlier)


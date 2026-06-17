install.packages(dyplr)
load(food_consumption)

# Calculate mean food consumption
mean(food_consumption$consumption)

# Calculate median food consumption 
median(food_consumption$consumption)

# Calculate the mode of food consumption
food_consumption %>% count(sort = TRUE)

food_consumption %>%
  # Filter for rice food category
  filter(food_category == "rice") %>%
  # Create histogram of co2_emission
  ggplot(aes(co2_emission)) +
    geom_histogram()

food_consumption %>%
  # Filter for rice food category
   filter(food_category == "rice") %>%
  # Summarize the mean_co2 and median_co2
  summarise(mean_co2 = mean(co2_emission),
            median_co2 = median(co2_emission))

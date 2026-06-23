#Regression in R
# ─────────────────────────────────────────────
# Libraries
# ─────────────────────────────────────────────
install.packages("dplyr")
install.packages("ggplot2")
library(dplyr)
library(ggplot2)
library(readr)
getwd()

# Add a linear trend line without a confidence ribbon
ggplot(mtcars, aes(wt, mpg)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm", se = FALSE)

# Using mtcars to calculate the slope and intercept of the linear regression
model_1 <- lm(mpg ~ wt, data = mtcars)
model_1

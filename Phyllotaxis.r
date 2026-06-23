# Create circle data to plot
t <- seq(1:44)
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

# Make a scatter plot of points in a circle
p <- ggplot(df, aes(x, y))
circle <- p + geom_point()
circle

# Define the number of points
points <- 500

# Define the Golden Angle
angle <- pi * (3 - sqrt(5))

t <- (1:points) * angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)
p <- ggplot(df, aes(x*t, y*t))
#Use theme_void () to remove background
spiral_flower <- p + geom_point()
spiral_flower

#Set the size of points to 8 and alpha to 0.5, change the color to darkgreen
tidy_flower <- p + geom_point(size = 8, alpha = 0.5, color = "darkgreen") + theme_void()
tidy_flower

#Alter the previous scatter plot by mapping the size aesthetic to the variable t and change the shape of the points to black asterisks (*).
p <- ggplot(df, aes(x*t, y*t))
dandelion_flower <- p + geom_point(aes(size = t), shape = 8, color = "black") + theme_void() + guides(size = "none")
dandelion_flower

# Creating an imaginary flower with 1000 points

# Different angle 
angle <- 2
points <- 1000

t <- (1:points)
x <- sin(t)
y <- cos(t)

df <- data.frame(t, x, y)
p <- ggplot(df, aes(x*t, y*t))

imaginary_flower <- p + geom_point(aes(size = t), shape = 8, color = "darkmagenta") +
  theme_void() +
  guides(size = "none")
imaginary_flower



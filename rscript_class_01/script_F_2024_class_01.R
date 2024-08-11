##########################################################
### Title: "Week 1 - Multiple Regression"
### Course: STA 235H
### Semester: Fall 2024
### Professor: Bolfarine
##########################################################

### Load libraries
# If you don't have one of these packages installed already, you will need to run install.packages() line
library(tidyverse)

# Data with information of 1369 movies
# This data includes several variables 
# The budget is in millions of dollars 

# Plot 
ggplot(movie_1990_data, aes(x = Adj_Budget, y = Adj_Revenue)) +
  geom_point() +
  xlab("Movie Budget") +
  ylab("Movie Revenue") +
  ggtitle("Movie Reveue in terms of Budget")

# Our model
# Revenue = intercept + slope*Budget + e
lm1 <- lm(Adj_Revenue ~ Adj_Budget, data = movie_1990_data)
summary(lm1)

# The estimated parameters are the beta hat
# Revenue = 22.81537 + 1.10541*Budget

# We are going to update the model by adding IMBD rating variable
# Revenue = intercept + slope*Budget + slope*imdbRating + e
lm2 <- lm(Adj_Revenue ~ Adj_Budget + imdbRating, data = movie_1990_data)
summary(lm2)

library(plotly)
library(reshape2)
p = plot_ly(x=movie_1990_data$Adj_Budget, y=movie_1990_data$imdbRating, z=movie_1990_data$Adj_Revenue, type="scatter3d", mode="markers", color = movie_1990_data$Adj_Revenue)
p %>% layout(scene = list(
    xaxis = list(title = 'xaxis'),
    yaxis = list(title = 'yaxis'),
    zaxis = list(title = 'zaxis')
  ))


plot <- plot_ly(movie_1990_data, 
                     x = ~Adj_Budget, 
                     y = ~imdbRating, 
                     z = ~Adj_Revenue,
                     type = "scatter3d", 
                     opacity = 0.6,
                     mode = "markers",
                     color = ~Adj_Revenue,
                     marker = list(size = 3.5))

graph_reso <- 0.05

#Setup Axis
axis_x <- seq(min(movie_1990_data$Adj_Budget), max(movie_1990_data$Adj_Budget), by = graph_reso)
axis_y <- seq(min(movie_1990_data$imdbRating), max(movie_1990_data$imdbRating), by = graph_reso)

#Sample points
lm_temp <- lm(Adj_Revenue ~ 0 + Adj_Budget + imdbRating, data = movie_1990_data)
lm_surface <- expand.grid(Adj_Budget = axis_x,imdbRating = axis_y,KEEP.OUT.ATTRS = F)
lm_surface$Adj_Revenue <- predict.lm(lm_temp, newdata = lm_surface)
lm_surface <- acast(lm_surface, imdbRating ~ Adj_Budget, value.var = "Adj_Revenue") #y ~ x

plot <- add_trace(p = plot,
                       z = lm_surface,
                       x = axis_x,
                       y = axis_y,
                       type = "surface", opacity = 0.2)

plot %>% layout(scene = list(
  xaxis = list(title = 'Movie Budget'),
  yaxis = list(title = 'IMDB Rating'),
  zaxis = list(title = 'Movie Revenue')
))

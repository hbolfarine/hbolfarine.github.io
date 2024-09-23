# Install required packages if not already installed
# install.packages(c("ggplot2", "cowplot"))

# Load the libraries
library(ggplot2)
library(cowplot)

# Generate data for the exponential function
x_exp <- seq(0, 5, length.out = 100)
y_exp <- exp(x_exp)

exp_data <- data.frame(x = x_exp, y = y_exp)

# Generate data for the linear function (log transformed)
# Since log(exp(x)) = x, the linear function is y = x
x_lin <- seq(0, 5, length.out = 100)
y_lin <- x_lin

lin_data <- data.frame(x = x_lin, y = y_lin)

# Exponential Function Plot
plot_exp <- ggplot(exp_data, aes(x = x, y = y)) +
  geom_line(color = "blue", size = 1.2) +
  labs(title = "Exponential Function",
       x = "X",
       y = "Y") +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 14, face = "bold", hjust = 0.5),
    axis.title = element_text(size = 12)
  ) +
  scale_y_continuous(expand = c(0, 0)) +
  coord_cartesian(ylim = c(0, max(exp_data$y)*1.1))

# Linear Function Plot
plot_lin <- ggplot(lin_data, aes(x = x, y = y)) +
  geom_line(color = "green", size = 1.2) +
  labs(title = "Linear Function",
       x = "X",
       y = "log(Y)") +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 14, face = "bold", hjust = 0.5),
    axis.title = element_text(size = 12)
  ) +
  scale_y_continuous(expand = c(0, 0)) +
  coord_cartesian(ylim = c(0, max(lin_data$y)*1.1))

# Arrow Plot
arrow_plot <- ggplot() +
  # Draw a horizontal arrow from left to right
  geom_segment(aes(x = 0, y = 0.5, xend = 1, yend = 0.5),
               arrow = arrow(length = unit(0.3, "cm")),
               size = 1.2, color = "black") +
  # Add the "log" label above the arrow
  annotate("text", x = 0.5, y = 0.6, label = "log", size = 5, fontface = "bold") +
  # Remove all axes, grids, and background
  theme_void()

# Combine the plots with the arrow
final_plot <- plot_grid(
  plot_exp, 
  arrow_plot, 
  plot_lin, 
  ncol = 3, 
  rel_widths = c(1, 0.2, 1), # Adjust the middle plot's width as needed
  labels = NULL
)

# Display the final plot
print(final_plot)

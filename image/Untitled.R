# Install required packages if not already installed
# install.packages(c("ggplot2", "cowplot"))

# Load the libraries
library(ggplot2)
library(cowplot)

# Set seed for reproducibility
set.seed(123)

# Generate data for the exponential distribution
n_samples <- 200
lambda <- 1
exp_data <- rexp(n_samples, rate = lambda)

# Create data frames for plotting
df_exp <- data.frame(Value = exp_data)
log_data <- log(exp_data)
df_log <- data.frame(Value = log_data)

# Exponential Distribution Plot
plot_exp <- ggplot(df_exp, aes(x = Value)) +
  geom_histogram(aes(y = ..density..), 
                 bins = 15, 
                 fill = "skyblue", 
                 color = "black", 
                 alpha = 0.7) +
  # geom_density(color = "blue", size = 1) +
  labs(title = "Exponential Distribution",
       x = "Value",
       y = "Density") +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 14, face = "bold", hjust = 0.5),
    axis.title = element_text(size = 12)
  )

# Log-Transformed Distribution Plot
plot_log <- ggplot(df_log, aes(x = Value)) +
  geom_histogram(aes(y = ..density..), 
                 bins = 15, 
                 fill = "lightgreen", 
                 color = "black", 
                 alpha = 0.7) +
  # geom_density(color = "darkgreen", size = 1) +
  labs(title = "Log-Transformed Distribution",
       x = "log(Value)",
       y = "Density") +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 14, face = "bold", hjust = 0.5),
    axis.title = element_text(size = 12)
  )

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
  plot_log, 
  ncol = 3, 
  rel_widths = c(1, 0.3, 1), # Adjust the middle plot's width as needed
  labels = NULL
)

# Display the final plot
print(final_plot)

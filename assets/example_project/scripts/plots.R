# Load libs
library(tidyverse)
library(here)

# Load data
dat <- read_csv(here("data", "simulated_data.csv"))

# Create scatterplot
dat %>% 
  ggplot(., aes(x = days, y = score)) + 
    geom_point() + 
    geom_smooth(method = lm, formula = "y ~ x") + 
    theme_test()

# Save as png
ggsave(filename = "ex_plot.png", plot = last_plot(), path = "./figs")
ggsave(filename = "ex_plot.png", plot = last_plot(), path = "./slides/libs")

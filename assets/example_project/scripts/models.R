#m Load libs
library(tidyverse)

# Load data
dat <- read_csv("./data/simulated_data.csv")

# fit model
mod <- lm(score ~ days, data = dat)

# Save mod
saveRDS(mod, file = "./models/mod.rds")

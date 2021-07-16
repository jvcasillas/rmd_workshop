#
# Generate fake data
#

# Load tidyverse
library(tidyverse)

# Set seed (workshop date)
set.seed(20210716)

# Set params
n     <-  200
b_0   <-    75
b_1   <- -0.85
sigma <-  5.25

dat <- tibble(
  days = rnorm(n, 20, 5) %>% round, 
  score = b_0 + b_1 * days + rnorm(n, mean = 0, sd = sigma)
)

if(F) {
  write_csv(dat, file = "./data/simulated_data.csv")
}

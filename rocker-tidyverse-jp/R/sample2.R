library(tidyverse)
library(here)

cars <- tibble(mtcars)
write_csv(cars, here("output", "mtcars.csv"))

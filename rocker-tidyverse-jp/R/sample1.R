library(here)

print("Hello, Docker")

files <- list.files(here("data"), pattern = "\\.txt$", full.names = TRUE)
print(files)


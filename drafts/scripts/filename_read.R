library(tidyverse)
setwd("C:/Users/callu/Google Drive/Paperpile/Starred Papers")
papers <- as_data_frame(dir())
papers <- papers %>%
  separate(value, c("author", "remainder"), sep = "-", extra = "merge") %>%
  extract(author, c("year"), regex = "([[:digit:]]+)", remove = FALSE) %>%
  arrange(desc(year))
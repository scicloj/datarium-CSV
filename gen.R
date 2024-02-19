library(datarium)
library(tidyverse)

(ls("package:datarium") %>%
   lapply(function(dataset_name) {
     path = paste0("data/", dataset_name, ".csv.gz")
     (dataset_name %>%
        get() %>%
        write_csv(path))
     print(paste("wrote", path))
   }))

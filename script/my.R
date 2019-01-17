#!/usr/bin/env Rscript
library(purrr)
Sys.info()
doFoo <- ~ . + 10
y = list(2,3,4)     %>% 
    map(., ~ . + 1) %>%
    print           %>%
    map(., doFoo)
print(y)

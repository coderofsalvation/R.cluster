library(purrr)
library(httr)
library(tibble)
library(dplyr)
library(readr)

repos <- GET( 'https://api.github.com/search/repositories', 
               query = list( sort='stars', order='desc', q='language:R' ) ) %>%
         content(.,type='application/json') %>%
         .$items %>%
         tibble(
            repo =  map_chr(., 'full_name' ),
            stars = map_chr(., 'stargazers_count' ) ) %>%
         select( 'repo','stars' )

write_excel_csv(repos,path="./repos.csv")

#Sys.info()
#doFoo <- ~ . + 10
#y = list(2,3,4)     %>% 
#    map(., ~ . + 1) %>%
#    print           %>%
#    map(., doFoo)
#print(y)

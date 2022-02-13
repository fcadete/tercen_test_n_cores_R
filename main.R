library(tercen)
library(dplyr, warn.conflicts = FALSE)

ctx = tercenCtx()

print(parallel::detectCores())

ctx %>%
  select(.y, .ci, .ri) %>% 
  mutate(n_cores = parallel::detectCores()) %>%
  ctx$addNamespace() %>%
  ctx$save()

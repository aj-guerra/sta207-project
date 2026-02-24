library(tidyverse)

# feel free to change but this can get you started

load("data/df_subset.rda")

mod <- lm(score~gender+race+class_type+subject+grade, df_subset)
summary(mod)

#things to do:
# pick meaningful comparison group for each factor
# justify model assumptions
# consider interactions
# run alternate models for causal inference? although probably fine
# sensitivity analysis might involve loading in the original data, you can do that through
  # load("data/df.rda")

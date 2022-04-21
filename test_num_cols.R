source("utils/calc_funs.r")

german_data_clean <- read_csv("data/german_data_clean.csv")

my_num_cols <- returnNumCols(german_data_clean)

data_num <- german_data_clean %>%
  select(my_num_cols)

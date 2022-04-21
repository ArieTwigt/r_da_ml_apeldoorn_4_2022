#HUISWERK1

barplot(
  head(
    sort(
      table(german_data_clean$job),decreasing=TRUE)),
  col="#007836", main="Top jobs", xlab = "Job", ylab = "Count")


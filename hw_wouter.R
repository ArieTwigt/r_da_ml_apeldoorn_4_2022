#Opdracht 1: Barchart Jobs
barplot(sort(table(german_data_clean$job),decreasing = TRUE),
        col = "dark green",  main="aantal banen naar type", xlab="type baan", ylab = "aantal")

#Opdracht 2: Export data
unique(german_data_clean$personal_status_sex)
personal_status_sex_female <- german_data_clean$personal_status_sex == "female : divorced/separated/married"

purpose_business <- german_data_clean$purpose == "business"

age_filter <- german_data_clean$age_years < 40

selected_columns <- c("personal_status_sex", "purpose", "credit_amount", "duration_months")
german_data_clean [selected_columns]

german_data_clean_filtered_opdr2 <- german_data_clean [purpose_business & personal_status_sex_female & age_filter, selected_columns ]



write.table(german_data_clean_filtered_opdr2,
            file="data/export/german_data_filtered_opdr2.csv",
            sep=";",
            row.names = FALSE)



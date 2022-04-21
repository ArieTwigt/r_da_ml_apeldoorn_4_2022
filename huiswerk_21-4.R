#OPDRACHT 1

german_data_clean <- read.csv("data/german_data_clean.csv")
barplot (sort (table (german_data_clean$job), decreasing = TRUE), 
main= 'Aantal banen', xlab= 'Baan', ylab= 'aantal',
col= 'darkgreen')

#OPDRACHT 2
## Check eerst welke waarden de sexe var heeft
unique (german_data_clean$personal_status_sex)

personal_status_sex_filter <- german_data_clean$personal_status_sex == 'female : divorced/separated/married' 
age_filter <- german_data_clean$age_years < 40
purpose_filter <- german_data_clean$purpose == 'business'

selected_columns <- c('personal_status_sex', 'duration_months', 'credit_amount', 'purpose')

german_data_clean_filtered <- german_data_clean [personal_status_sex_filter & age_filter & purpose_filter,selected_columns]

write.table(german_data_clean_filtered,
file='data/export/german_data_filtered_opdracht2.csv', 
sep= ';',
row.names = FALSE)

summary(german_data_clean$job)
# categorie 3 is te lang voor plot.
